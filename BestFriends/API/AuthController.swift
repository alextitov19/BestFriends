//
//  AuthController.swift
//  BestFriends
//
//  Created by Alex Titov on 3/29/22.
//

import Foundation

final class AuthController {
    static let serviceName = "BestFriendsService"
    
    static var isSignedIn: Bool {
        guard let currentUser = Defaults.currentUser else {
            return false
        }
        
        do {
            let renewToken = try KeychainPasswordItem(service: serviceName, account: currentUser.id).readPassword()
            return renewToken.count > 0
        } catch {
            return false
        }
    }
    
    class func storeToken(user: User, token: String) throws {
        try KeychainPasswordItem(service: serviceName, account: user.id).savePassword(token)
        Defaults.currentUser = user
            NotificationCenter.default.post(name: .loginStatusChanged, object: nil)
    }
    
    class func getToken() throws -> String {
        if let user = Defaults.currentUser {
            return try KeychainPasswordItem(service: serviceName, account: user.id).readPassword()
        }
        return ""
    }
    
    class func signOut() throws {
        guard let currentUser = Defaults.currentUser else {
            return
        }
        try KeychainPasswordItem(service: serviceName, account: currentUser.id).deleteItem()
        Defaults.currentUser = nil
        NotificationCenter.default.post(name: .loginStatusChanged, object: nil)
    }
}

extension Notification.Name {
    
    static let loginStatusChanged = Notification.Name("com.razeware.auth.changed")
    
}
