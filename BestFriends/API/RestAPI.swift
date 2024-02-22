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
    let API_URL = "http://a62582cbc2c9d4a689103dc16200ef4a-1698906125.us-east-2.elb.amazonaws.com:80/api/v1/services"
    let WS_URL = "ws://a62582cbc2c9d4a689103dc16200ef4a-1698906125.us-east-2.elb.amazonaws.com:80/api/v1/services"
    
    
    
//    OLD SERVER (Alex built) let API_URL = "http://af1da3679459b4f559b1dbb17a97f432-44066674.us-east-2.elb.amazonaws.com:80/api/v1/services"
//    let WS_URL = "ws://af1da3679459b4f559b1dbb17a97f432-44066674.us-east-2.elb.amazonaws.com:80/api/v1/services"
    
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
        helper = Helper(API_URL, signUp: "/signup", login: "/login", renew: "/renew", password: "/password")
    }
    
    public func signUp(_ userData: SignUpUserData) -> Promise<Int> {
        return helper.signUp(userData)
    }
    
    public func login(email: String, password: String) -> Promise<Tokens> {
        return helper.login(email: email, password: password)
    }
    
    public func updatePassword(email: String, password: String, newPassword: String) -> Promise<Tokens> {
        return helper.updatePassord(email: email, password: password, newPassword: newPassword)
    }
    
    public func getCurrentUser() -> Promise<User> {
        return helper.callRestApi(url: API_URL + "/users", method: .get, User.self)
    }
    
    public func getUserById(id: String) -> Promise<User> {
        return helper.callRestApi(url: API_URL + "/users/" + id, method: .get, User.self)
    }
    
    public func deleteUser() -> Promise<RestResponse> {
        return helper.callRestApi(url: API_URL + "/users", method: .delete, RestResponse.self)
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
    
    public func updateGroup(group: Group) -> Promise<Int> {
        return helper.updateGroup(url: API_URL + "/groups/update", group: group)
    }
    
    public func createChatMessage(groupId: String, body: String) -> Promise<Int> {
        let cm = CreateMessage(body: body)
        return helper.createMessage(url: API_URL + "/messages/" + groupId, cm: cm)
    }
    
    public func createMessageWithImage(groupId: String, body: String, image: Data) -> Promise<Int> {
        let cmwi = CreateMessageWithImage(groupId: groupId, body: body, image: image)
        return helper.createMessageWithImage(url: API_URL + "/messages/images", cmwi: cmwi)
    }
    
    public func getImage(link: String) -> Promise<Data> {
        let url = API_URL + "/images/" + link
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
    
    public func createNiceMessage(message: String, receiver: String) -> Promise<Int> {
        let cnm = CreateNiceMessage(message: message, receiver: receiver)
        return helper.createNiceMessage(url: API_URL + "/nice-message", createNiceMessage: cnm)
    }
    
    public func getNiceMessage(id: String) -> Promise<NiceMessage> {
        return helper.callRestApi(url: API_URL + "/nice-message/" + id, method: .get, NiceMessage.self)
    }
    
    public func createSmileNote(messageId: String, messageBody: String, sendername: String) -> Promise<SmileNote> {
        let csn = CreateSmileNote(messageId: messageId, messageBody: messageBody, senderName: sendername)
        return helper.createSmileNote(url: API_URL + "/smile-notes", createSmileNote: csn)
    }
    
    public func getSmileNotes() -> Promise<[SmileNote]> {
        return helper.callRestApi(url: API_URL + "/smile-notes", method: .get, [SmileNote].self)
    }
    
    public func favoriteSmileNote(id: String) -> Promise<SmileNote> {
        return helper.callRestApi(url: API_URL + "/smile-notes/" + id, method: .patch, SmileNote.self)
    }
    
    public func createPhotoPop(receiver: String, image: Data) -> Promise<PhotoPop> {
        let cpp = CreatePhotoPop(receiver: receiver, image: image)
        return helper.createPhotoPop(url: API_URL + "/photo-pop", createPhotoPop: cpp)
    }
    
    public func getPhotoPops() -> Promise<[PhotoPop]> {
        return helper.callRestApi(url: API_URL + "/photo-pop", method: .get, [PhotoPop].self)
    }
    
    public func deletePhotoPop(id: String) -> Promise<RestResponse> {
        return helper.callRestApi(url: API_URL + "/photo-pop/" + id, method: .delete, RestResponse.self)
    }
    
    public func getShakePhotoPops() -> Promise<[PhotoPop]> {
        return helper.callRestApi(url: API_URL + "/photo-pop/shake", method: .get, [PhotoPop].self)
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
    
    public func updateUserToken(token: String) -> Promise<Int> {
        return helper.updateUserToken(url: API_URL + "/user/update/token/" + token)
    }
    
    public func sendPushNotification(title: String, body: String, APNToken: String) {
        let createNotification = CreateNotification(title: title, body: body, APNToken: APNToken)
        helper.sendPushNotification(url: API_URL + "/notification", createNotification: createNotification).then({ result in
            print("Result of sending push notification: ", result)
        })
    }
    
    public func updateUser(user: User) -> Promise<Int> {
        return helper.updateUser(url: API_URL + "/user/update", user: user)
    }
    
    public func updateUserId() {
        getCurrentUser().then { details in
            self.userId = details.id
        }
    }
    
    public func setStatusToOnline(id: String) {
        helper.callRestApi(url: API_URL + "/online-status/" + id, method: .post, RestResponse.self).then({ response in
            if response.status == 200 {
                print("Status changed to online")
            }
        })
    }
    
    public func setStatusToOffline(id: String) {
        helper.callRestApi(url: API_URL + "/online-status/" + id, method: .delete, RestResponse.self).then({ response in
            if response.status == 200 {
                print("Status changed to offline")
            }
        })
    }
    
    public func getUserOnlineStatus(id: String) -> Promise<Bool> {
        return helper.getUserStatus(url: API_URL + "/online-status/" + id)
    }
    
    public func getInAppNotifications() -> Promise<[InAppNotification]> {
        return helper.callRestApi(url: API_URL + "/notification/in_app", method: .get, [InAppNotification].self)
    }
    
    public func createInAppNotification(ian: InAppNotification) -> Promise<Int> {
        return helper.createInAppNotification(url: API_URL + "/notification/in_app", ian: ian)
    }
    
    public func createStreakLog(friendID: String) {
        helper.callRestApi(url: API_URL + "/streak/" + friendID, method: .post, RestResponse.self).then({ response in
            if response.status == 200 {
                print("Created streak log successfully for friend: ", friendID)
            } else {
                print("Error creating streak log successfully for friend: ", friendID)
            }
        })
    }
    
    public func getStreakLog(friendID: String) -> Promise<Int> {
        helper.callRestApi(url: API_URL + "/streak/" + friendID, method: .get, Int.self).then({ response in
            return response
        })
    }
    
    public func createJournal(cj: CreateJournal) -> Promise<Int> {
        return helper.createJournal(url: API_URL + "/journal", cj: cj)
    }
    
    public func getJournal(id: String) -> Promise<Journal> {
        return helper.callRestApi(url: API_URL + "/journal/" + id, method: .get, Journal.self).then({ j in
            return j
        })
    }
    
}
