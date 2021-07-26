//
//  BlueModeDataSource.swift
//  BestFriends
//
//  Created by Alex Titov on 7/10/21.
//

import Foundation
import Amplify

struct BlueModeDataSource {
    
    let userDS = UserDataSource()
    let roomDS = RoomDataSource()
    
    // Call this when adding someone to BlueMode. This will create a BlueMode room and append it to yourself and your friend. This will then send your friend a push notification.
    func addFriendToBlueMode(friendID: String) {
        var myself = userDS.getCurrentUser()
        var friend = userDS.getUser(id: friendID)
        let room = Room(id: Helper().randomString(length: 20),name: "BlueMode", creatorID: myself.id, members: [myself.id, friend.id], messages: [], timeUpdated: Int(Date().timeIntervalSince1970))
        roomDS.createRoom(room: room)
        
        
        userDS.updateUser(user: myself)
        userDS.updateUser(user: friend)
        if friend.notificationsLP == true {
            PushNotificationSender().sendPushNotification(token: friend.deviceFCMToken, title: "\(myself.firstName) added you to BlueMode!", body: "It seems like \(myself.firstName) has something important to talk to you about.")
        }
    }
    
}
