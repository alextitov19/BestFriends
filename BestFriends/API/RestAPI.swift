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
    let API_URL = "http://54.173.213.37:8080/api/v1"
    
    public static var instance = RestApi()
    
    public var needLogin : Bool {
        get {
            return helper.needLogin
        }
    }
    
    private init() {
        helper = Helper(API_URL, signUp: "/services/signup", login: "/services/login", renew: "/services/renew")
    }
    
    public func signUp(_ userData: SignUpUserData) -> Promise<Int> {
        return helper.signUp(userData)
    }
    
    public func login(email: String, password: String) -> Promise<Tokens> {
        return helper.login(email: email, password: password)
    }
    
    public func getUserDetails() -> Promise<User> {
        return helper.callRestApi(url: API_URL + "/services/user", method: .get, User.self)
    }
    
    public func updateUserId() {
        getUserDetails().then { details in
            self.userId = details.id
        }
    }
}
