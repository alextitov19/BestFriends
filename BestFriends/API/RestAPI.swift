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
    
    public func signUp(_ user: User, _ password: String) -> Promise<Int> {
        return helper.signUp(user,password)
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
    
    public func getUserLocation(userID: String) -> Promise<UserLocation> {
        let url = API_URL + "/services/location/" + userID
        return helper.callRestApi(url: url, method: .get, UserLocation.self)
    }
    
    public func setMyLocation(lat: Double, long: Double) -> Promise<Empty> {
        let data = MyLocation(latitude: String(format: "%f", lat), longitude: String(format: "%f", long))
        let payload = try? JSONEncoder().encode(data)
        if let p = payload {
            print(String(data:p,encoding:.utf8) ?? "setMyLocation default value")
        }
        return helper.callRestApi(url: API_URL + "/services/location", method: .post, data: payload, Empty.self)
    }
    
    public func createNewGroup(name: String) -> Promise<Empty> {
        let data = CreateGroup(name: name)
        let payload = try? JSONEncoder().encode(data)
        if let p = payload {
            print(String(data:p,encoding:.utf8) ?? "createGroup default value")
        }
        return helper.callRestApi(url: API_URL + "/services/group", method: .post, data: payload, Empty.self)
    }
    
    public func getGroupById(id: String) -> Promise<Group> {
        let url = API_URL + "/services/group/" + id
        return helper.callRestApi(url: url, method: .get, Group.self)
    }
    
    public func renameGroup(groupId: String, newName: String) -> Promise<Empty> {
        let data = RenameGroup(groupId: groupId, newName: newName)
        let payload = try? JSONEncoder().encode(data)
        if let p = payload {
            print(String(data:p,encoding:.utf8) ?? "renameGroup default value")
        }
        return helper.callRestApi(url: API_URL + "/services/group/rename", method: .post, data: payload, Empty.self)
    }
    
    public func leaveGroup(groupId: String) -> Promise<Empty> {
        let url = API_URL + "/services/group/leave/" + groupId
        return helper.callRestApi(url: url, method: .post, Empty.self)
    }
    
    public func getHomepageData() -> Promise<HomepageData> {
        let url = API_URL + "/services/initial"
        return helper.callRestApi(url: url, method: .get, HomepageData.self)
    }
    
    public func sendAnInvite(email: String, groupId: String) -> Promise<Empty> {
        let url = API_URL + "/services/invite"
        let data = Invite(email: email, groupId: groupId)
        let payload = try? JSONEncoder().encode(data)
        if let p = payload {
            print(String(data:p,encoding:.utf8) ?? "sendAnInvite default value")
        }
        return helper.callRestApi(url: url, method: .post, data: payload, Empty.self)
    }
    
    public func getInviteDataByEmail(email: String) -> Promise<InviteData> {
        let url = API_URL + "/services/invite/" + email
        return helper.callRestApi(url: url, method: .get, InviteData.self)
    }
    
    public func acceptAnInvite(invite: Invite) -> Promise<Empty> {
        let url = API_URL + "/services/invite/accept"
        let payload = try? JSONEncoder().encode(invite)
        if let p = payload {
            print(String(data:p,encoding:.utf8) ?? "acceptInvite default value")
        }
        return helper.callRestApi(url: url, method: .post, data: payload, Empty.self)
    }
    
    
}
