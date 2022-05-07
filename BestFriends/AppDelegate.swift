//
//  AppDelegate.swift
//  BestFriends
//
//  Created by Alex Titov on 5/7/22.
//

import SwiftUI
import UserNotifications

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        // Code
        return true
    }
    
    
    // MARK: Notifications
    func application(
      _ application: UIApplication,
      didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data
    ) {
      let tokenParts = deviceToken.map { data in String(format: "%02.2hhx", data) }
      let token = tokenParts.joined()
      print("Device Token: \(token)")
        // TODO: Save the token
        RestApi.instance.updateUserToken(token: token).then { response in
            print("Server response: ", response)
            if response == 200 {
                print("Successfully updated user token")
            } else {
                print("Failed to update user token")
            }
        }
    }
    
    func application(
      _ application: UIApplication,
      didFailToRegisterForRemoteNotificationsWithError error: Error
    ) {
      print("Failed to register: \(error)")
    }
}
