//
//  BestFriendsApp.swift
//  BestFriends
//
//  Created by Alex Titov on 4/12/21.
//

import SwiftUI

@main
struct BestFriendsApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
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
            case .dramaMainView:
                DramaMainView()
                    .environmentObject(sessionManager)
            case .masterFriendVault:
                MasterFriendVault()
                    .environmentObject(sessionManager)

            case .fightTextUserIdeas:
                FightTextUserIdeas()
                    .environmentObject(sessionManager)
            case .whoFighting:
                WhoFighting()
                    .environmentObject(sessionManager)
            case .parentsFighting:
                ParentsFighting()
                    .environmentObject(sessionManager)
            case .fightWithFriend:
                FightWithFriend()
                    .environmentObject(sessionManager)
            case .infoView:
                InfoView()
                    .environmentObject(sessionManager)
          
            
//            case .bestFriendMessages(let user, let atmosphere, let friends, let friendAtmosphere):
//                BestFriendMessages(user: user, atmosphere: atmosphere, friends: [user], friendAtmospheres: [atmosphere])
//                    .environmentObject(sessionManager)
//                
                
                
                
            }
        }
    }
}





