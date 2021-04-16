//
//  BestFriendsApp.swift
//  BestFriends
//
//  Created by Alex Titov on 4/12/21.
//

import SwiftUI
import AmplifyPlugins

@main
struct BestFriendsApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @ObservedObject var sessionManager = SessionManager()
    
    var body: some Scene {
        WindowGroup {
            switch sessionManager.authState {
            case .login:
                LoginView()
                
            case .signUp:
                SignUpPage1()
                
            case .confirmCode(let username):
                ConfirmationView(username: username)
                
            case .session(let user):
                SessionView()
            }
            
            
            
        }
    }
}
