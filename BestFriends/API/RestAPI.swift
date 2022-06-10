//
//  RestAPI.swift
//  BestFriends
//
//  Created by Alex Titov on 3/29/22.
//

import Foundation
import Promises
import FirebaseMessaging

class RestApi {
    var helper: Helper
    var userId: String?
    let API_URL = "http://54.226.29.220:8080/api/v1/services"
    let WS_URL = "ws://54.226.29.220:8080/api/v1/services"

//    let API_URL = "http://localhost:8080/api/v1/services"
//    let WS_URL = "ws://localhost:8080/api/v1/services"

    public static var instance = RestApi()
    
    public var needLogin : Bool {
        get {
            return helper.needLogin
        }
    }
    
    public func signOut() {
        helper.signOut()
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
    
    public func getUserById(id: String) -> Promise<User> {
        return helper.callRestApi(url: API_URL + "/users/" + id, method: .get, User.self)
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
    
    public func createGroup(name: String, members: [String]) -> Promise<Group> {
        let cg = CreateGroup(name: name, members: members)
        return helper.createGroup(url: API_URL + "/groups", createGroup: cg)
    }
    
    public func createChatMessage(groupId: String, body: String) -> Promise<Int> {
        let cm = CreateMessage(body: body)
        return helper.createMessage(url: API_URL + "/messages/" + groupId, cm: cm)
    }
    
    public func createMessageWithImage(groupId: String, body: String, image: Data) -> Promise<Int> {
        let cmwi = CreateMessageWithImage(groupId: groupId, body: body, image: image)
        return helper.createMessageWithImage(url: API_URL + "/messages/images", cmwi: cmwi)
    }
    
    public func getImage(folderId: String, imageId: String) -> Promise<Data> {
        let url = API_URL + "/images/" + folderId + "/" + imageId
        print("URL: ", url)
        return helper.getImage(url: url)
    }
    
    func createChatWebSocketRequest(groupId: String) -> URLRequest {
        var request: URLRequest = URLRequest(url: URL(string: WS_URL + "/messages/" + groupId)!)
        helper.setWebSocketAuthorizationHeader(request: &request)
        return request
    }
    
    func createDownloadImageWebSocketRequest(folderId: String, imageId: String) -> URLRequest {
        var request: URLRequest = URLRequest(url: URL(string: WS_URL + "/images/" + folderId + "/" + imageId)!)
        helper.setWebSocketAuthorizationHeader(request: &request)
        return request
    }
    
    func updateAtmosphere(atmosphere: Atmosphere) -> Promise<Int> {
        return helper.updateAtmosphere(url: API_URL + "/atmosphere", atm: atmosphere)
    }
    
    public func createMoodLog(mood: Int, summary: String, friends: [String]) -> Promise<MoodLog> {
        let cml = CreateMoodLog(mood: mood, summary: summary, sharedWith: friends)
        return helper.createMoodLog(url: API_URL + "/atmosphere/mood", createMoodLog: cml)
    }
    
    public func getMoodLog(id: String) -> Promise<MoodLog> {
        return helper.callRestApi(url: API_URL + "/atmosphere/mood/" + id, method: .get, MoodLog.self)
    }
    
    public func createSmileNote(messageId: String, messageBody: String, sendername: String) -> Promise<SmileNote> {
        let csn = CreateSmileNote(messageId: messageId, messageBody: messageBody, senderName: sendername)
        return helper.createSmileNote(url: API_URL + "/smile-notes", createSmileNote: csn)
    }
    
    public func getSmileNotes() -> Promise<[SmileNote]> {
        return helper.callRestApi(url: API_URL + "/smile-notes", method: .get, [SmileNote].self)
    }
    
    public func registerAPNToken() {
        Messaging.messaging().token { token, error in
          if let error = error {
            print("Error fetching FCM registration token: \(error)")
          } else if let token = token {
            print("FCM registration token: \(token)")
              self.updateUserToken(token: token).then {result in
                  if result == 200 {
                  print("Successfully register token")
                  } else {
                      print("Failed to register token")
                  }
              }
          }
        }
    }
    
    private func updateUserToken(token: String) -> Promise<Int> {
        return helper.updateUserToken(url: API_URL + "/user/update/token/" + token)
    }
    
    public func sendPushNotification(title: String, body: String, APNToken: String) -> Promise<Int> {
        let createNotification = CreateNotification(title: title, body: body, APNToken: APNToken)
        return helper.sendPushNotification(url: API_URL + "/notification", createNotification: createNotification)
    }
      
    
    public func updateUser(user: User) -> Promise<Int> {
        return helper.updateUser(url: API_URL + "/user/update", user: user)
    }
    
    public func updateUserId() {
        getCurrentUser().then { details in
            self.userId = details.id
        }
    }
}
