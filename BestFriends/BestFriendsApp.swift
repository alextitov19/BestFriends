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
    @StateObject var storeManager = StoreManager()
    
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
            case .masterFriendVault:
                MasterFriendVault()
                    .environmentObject(sessionManager)
                
            case .fightTextUserIdeas:
                FightTextUserIdeas()
                
            case .parentsFighting:
                ParentsFighting()
                    .environmentObject(sessionManager)
            case .fightWithFriend:
                FightWithFriend()
                    .environmentObject(sessionManager)
            case .infoView(let user, let group):
                InfoView(group: group, user: user).environmentObject(sessionManager)
                
            case .store:
                PurpleSubscriptionView(storeManager: storeManager)
                    .environmentObject(sessionManager)
                    .onAppear(perform: {
                                storeManager.getProducts(productIDs: productIDs)
                            })
                
            }
        }
    }
}





