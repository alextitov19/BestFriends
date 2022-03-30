//
//  Helper.swift
//  BestFriends
//
//  Created by Alex Titov on 3/29/22.
//

import Foundation
import Promises

struct Tokens :Codable{
    var AccessToken: Token
    var RenewToken: Token
    enum CodingKeys: String, CodingKey {
        case AccessToken = "access_token"
        case RenewToken = "renew_token"
    }
}

struct TokensResponse :Codable{
    var Code: Int
    var Data: Tokens
    enum CodingKeys: String, CodingKey {
        case Code = "code"
        case Data = "data"
    }
}

struct Token : Codable {
    var Token: String
    var Expire: String
    enum CodingKeys: String, CodingKey {
        case Token = "token"
        case Expire = "expire"
    }
}

enum HttpMethod: String {
    case get = "Get"
    case post = "Post"
}

enum AuthErrors: Error {
    case notAuthorized
    case renewTokenExpired
}

class Helper {
    static let serviceName = "BestFriendsService"
    
    private var signUpUrl: String
    private var loginUrl: String
    private var renewUrl: String
    private var sessionConfig: URLSessionConfiguration
    private var session: URLSession
    private var internalRenewToken: String?
    private var internalAuthToken: String?
    
    private let internalQueue: DispatchQueue = DispatchQueue(label:"LockingQueue")
    
    private var renewToken: String? {
        get {
            return internalQueue.sync { internalRenewToken }
        }
        set (newState) {
            internalQueue.sync { internalRenewToken = newState }
        }
    }
    
    private var accessToken: String? {
        get {
            return internalQueue.sync { internalAuthToken }
        }
        set (newState) {
            internalQueue.sync { internalAuthToken = newState }
        }
    }
    
    public var needLogin : Bool {
        get {
            return renewToken!.isEmpty
        }
    }
    
    init(_ apiUrl:String, signUp: String, login: String, renew: String) {
        signUpUrl = apiUrl + signUp
        loginUrl = apiUrl + login
        renewUrl = apiUrl + renew
        sessionConfig = URLSessionConfiguration.default
        sessionConfig.waitsForConnectivity = true
        sessionConfig.allowsCellularAccess = true
        session = URLSession(configuration: sessionConfig)
        do {
            try renewToken = AuthController.getToken()
        } catch {
            renewToken = ""
            print(error)
        }
        accessToken = ""
    }
    
    func signUp(_ userData: SignUpUserData) -> Promise<Int> {
        let payload = try? JSONEncoder().encode(userData)
        if let p = payload {
            print(String(data: p, encoding: .utf8) as Any)
        }
        return callRestApiNoAuth(url: signUpUrl, method: .post, data: payload, SignUpResponse.self).then { signUpResponse in
            return Promise<Int>(signUpResponse.code)
        }
    }
    
    func login(email: String, password: String) -> Promise<Tokens> {
        let cred = Credentials(email: email, password: password)
        let payload = try? JSONEncoder().encode(cred)
        if let p = payload {
            print(String(data:p,encoding:.utf8) as Any)
        }
        return callRestApiNoAuth(url:loginUrl,method:.post,data:payload,TokensResponse.self).then { tokensResponse in
            let tokens = tokensResponse.Data
            self.accessToken = tokens.AccessToken.Token
            self.renewToken = tokens.RenewToken.Token
            do {
                try AuthController.storeToken(user: User(id: "", name: "", email: email), token: tokens.RenewToken.Token)
                print("Renew Token: ", tokens.RenewToken.Token)
            } catch {
                print(error)
            }
            return Promise<Tokens>(tokens)
        }
    }
    
    func callRestApiNoAuth<T>(url: String, method: HttpMethod, body: String? = nil, data: Data? = nil,_ type: T.Type) -> Promise<T> where T : Decodable {
        var request = URLRequest(url:URL(string: url)!)
        request.httpMethod = method.rawValue
        if let data = data {
            request.httpBody = data
            request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
            request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Accept")
        } else if let body = body {
            request.httpBody = body.data(using: .utf8)
        }
        return sendWebRequest(request).then {
            return try JSONDecoder().decode(type, from: $0.data)
        }.catch {
            print($0)
        }
    }
    
    func callRestApi<T>(url:String,method : HttpMethod, body: String? = nil, data: Data? = nil,_ type: T.Type) -> Promise<T> where T : Decodable {
        var request = URLRequest(url:URL(string: url)!)
        request.httpMethod = method.rawValue
        request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
        request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Accept")
        if let data = data {
            request.httpBody = data
        } else if let body = body {
            request.httpBody = body.data(using: .utf8)
        }
        return sendWebRequestWithAuth(request).then {
            return try JSONDecoder().decode(type, from: $0.data)
        }.catch {
            print("Got into catch, ", $0)
        }
    }
    
    private func renewTokens() -> Promise<Tokens> {
        guard let renewToken = renewToken else {
            return Promise<Tokens> { fulfill, reject in
                reject(AuthErrors.renewTokenExpired)
            }
        }
        let url = URL(string: renewUrl)!
        var request = URLRequest(url:url)
        request.httpMethod = "Post"
        setAuthorizationHeader(request: &request, token: renewToken)
        print("Before renew url: \(request.url!.absoluteString) Authorization:" + request.value(forHTTPHeaderField: "Authorization")!)
        return sendWebRequest(request).then {
            data, response in
            return Promise<(data:Data,response:URLResponse)>{ fulfill, reject in
                if let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 401 {
                    reject(AuthErrors.renewTokenExpired)
                    return
                }
                fulfill((data:data,response:response))
            }
        }.then {
            return try JSONDecoder().decode(TokensResponse.self, from: $0.data)
            
        }.then { tokensResponse in
            let tokens = tokensResponse.Data
            self.accessToken = tokens.AccessToken.Token
            self.renewToken = tokens.RenewToken.Token
            do {
                try AuthController.storeToken(user: Defaults.currentUser!, token: tokens.RenewToken.Token)
            } catch {
                print(error)
            }
            return Promise<Tokens>(tokens)
        }.catch {  error in
            if case AuthErrors.renewTokenExpired = error {
                // print(error)
                do{
                    try AuthController.signOut()
                    
                }catch {
                    print(error)
                }
            } else{
                print(error)
            }
        }
    }
    
    private func sendWebRequest(_ request : URLRequest) -> Promise<(data:Data,response:URLResponse)> {
        return wrapWebRequest { self.session.dataTask(with: request, completionHandler: $0).resume() }
    }
    
    private func sendWebRequestWithAuth(_ request :  URLRequest) -> Promise<(data:Data,response:URLResponse)> {
        var req = request
        setAuthorizationHeader(request: &req, token: accessToken!)
        return  self.sendWebRequest(req).then {
            data, response in
            return Promise<(data:Data,response:URLResponse)>{ fulfill, reject in
                if let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 401 {
                    self.renewTokens().then {
                        tokens in
                        var newRequest = request
                        self.setAuthorizationHeader(request: &newRequest, token: tokens.AccessToken.Token)
                        print("After renew:" + newRequest.value(forHTTPHeaderField: "Authorization")!)
                        self.wrapWebRequest {
                            self.session.dataTask(with: newRequest, completionHandler: $0).resume()
                        }.then { d, r in
                            // TODO: Check for 401 and do signout/clear tokens and reject
                            fulfill((data:d,response:r))
                        }.catch{ error in
                            reject(error)
                        }
                    }
                }else{
                    fulfill((data:data,response:response))
                }
            }
            
        }
    }
    
    private func setAuthorizationHeader(request: inout URLRequest, token: String) {
        request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
    }
    
    private func wrapWebRequest(
        on queue: DispatchQueue = .promises,
        _ work: @escaping (@escaping (Data?, URLResponse?, Error?) -> Void) throws -> Void
    ) -> Promise<(data:Data, response:URLResponse)> {
        return Promise<(data:Data, response:URLResponse)>(on: queue) { fulfill, reject in
            try work { data, response, error in
                if let error = error {
                    reject(error)
                    return
                }
                guard let data=data,let response = response else {
                    let error = NSError(domain: "", code: 100, userInfo: nil)
                    reject(error)
                    return
                }
                if let postResponse = String(data:data,encoding:.utf8) {
                    let httpResponse  = response as! HTTPURLResponse
                    print("Response code:\(httpResponse.statusCode)")
                    print(postResponse)
                }
                fulfill((data: data, response: response))
            }
        }
        
    }
}
