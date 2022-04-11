//
//  RestAPI.swift
//  BestFriends
//
//  Created by Alex Titov on 3/29/22.
//

import Foundation
import Promises

class RestApi {
    var helper: Helper
    var userId: String?
//    let API_URL = "http://54.173.213.37:8080/api/v1/services"
    let API_URL = "http://localhost:8080/api/v1/services"
    
    let WS_URL = "ws://localhost:8080/api/v1/services/messages/"
    
    public static var instance = RestApi()
    
    public var needLogin : Bool {
        get {
            return helper.needLogin
        }
    }
    
    private init() {
        helper = Helper(API_URL, signUp: "/signup", login: "/login", renew: "/renew")
    }
    
    public func signUp(_ userData: SignUpUserData) -> Promise<Int> {
        return helper.signUp(userData)
    }
    
    public func login(email: String, password: String) -> Promise<Tokens> {
        return helper.login(email: email, password: password)
    }
    
    public func getCurrentUser() -> Promise<User> {
        return helper.callRestApi(url: API_URL + "/users", method: .get, User.self)
    }
    
    public func getHomeData() -> Promise<HomeData> {
        return helper.callRestApi(url: API_URL + "/users/home", method: .get, HomeData.self)
    }
    
    public func getInvites() -> Promise<[Invite]> {
        return helper.callRestApi(url: API_URL + "/invites", method: .get, [Invite].self)
    }
    
    public func createInvite(recipient: String) -> Promise<Int> {
        let ci = CreateInvite(recipient: recipient)
        return helper.createInvite(url: API_URL + "/invites", createInvite: ci)
    }
    
    public func acceptInvite(recipient: String) -> Promise<Int> {
        let ai = AcceptRejectInvite(sender: recipient)
        return helper.acceptRejectInvite(url: API_URL + "/invites/accept", ari: ai)
    }
    
    public func rejectInvite(recipient: String) -> Promise<Int> {
        let ri = AcceptRejectInvite(sender: recipient)
        return helper.acceptRejectInvite(url: API_URL + "/invites/reject", ari: ri)
    }
    
    public func createGroup(members: [String]) -> Promise<Group> {
        let cg = CreateGroup(members: members)
        return helper.createGroup(url: API_URL + "/groups", createGroup: cg)
    }
    
    
    
    func createChatWebSocketRequest(groupId: String) -> URLRequest {
        var request: URLRequest = URLRequest(url: URL(string: WS_URL + groupId)!)
        helper.setWebSocketAuthorizationHeader(request: &request)
        return request
    }
    
    
    public func updateUserId() {
        getCurrentUser().then { details in
            self.userId = details.id
        }
    }
}
