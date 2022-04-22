//
//  BestFriendsApp.swift
//  BestFriends
//
//  Created by Alex Titov on 4/12/21.
//

import SwiftUI

@main
struct BestFriendsApp: App {
    
    @ObservedObject var sessionManager = SessionManager()
    
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
            case .invite:
                InviteView()
                    .environmentObject(sessionManager)
            case .chat(let user, let group):
                ChatView(user: user, group: group)
                    .environmentObject(sessionManager)
            case .settings:
                SettingsView()
                    .environmentObject(sessionManager)
            case .breath:
                BreathInView()
                    .environmentObject(sessionManager)
            case .breathInvite:
                BreathInviteView()
                    .environmentObject(sessionManager)
            case .masterFriendVault:
                MasterFriendVault()
                    .environmentObject(sessionManager)
            case .sendNiceChat:
                SendNiceChat()
                    .environmentObject(sessionManager)
            case .friendQualities:
                FriendQualities()
                    .environmentObject(sessionManager)
            case .friendVault:
                FriendVault()
                    .environmentObject(sessionManager)
                
                
           
                
                
            }
        }
    }
}





