//
//  BestFriendsApp.swift
//  BestFriends
//
//  Created by Alex Titov on 4/12/21.
//

import SwiftUI
import StoreKit

@main
struct BestFriendsApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    @ObservedObject var sessionManager = SessionManager()
    
    let productIDs = [
        "com.socialtechlabs.bestfriends.iap.monthly",
        "com.socialtechlabs.bestfriends.iap.yearly"
    ]
    
    var body: some Scene {
        WindowGroup {
            switch sessionManager.appState {
            case .signUp:
                SignUpView()
                    .environmentObject(sessionManager)
            case .login:
                LoginView()
                    .environmentObject(sessionManager)
            case .home:
                HomeView()
                    .environmentObject(sessionManager)
            case .chat(let user, let group):
                ChatView(user: user, group: group)
                    .environmentObject(sessionManager)
                
            }
        }
    }
}





