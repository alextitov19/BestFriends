//
//  AppDelegate.swift
//  BestFriends
//
//  Created by Alex Titov on 5/8/21.
//

import SwiftUI
import Firebase
import FirebaseCore

class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let pushManager = PushNotificationManager(userID: "currently_logged_in_user_id")
        pushManager.registerForPushNotifications()
        
        FirebaseApp.configure()
        return true
    }
}
