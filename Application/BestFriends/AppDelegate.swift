//
//  AppDelegate.swift
//  BestFriends
//
//  Created by Alex Titov on 5/8/21.
//

import SwiftUI

class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        let token = deviceToken
            .map { String(format: "%02.2hhx", $0)}
            .joined()
        
        DeviceTokenManager.shared.deviceToken = token
    }
}
