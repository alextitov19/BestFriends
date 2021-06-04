//
//  BestFriendsApp.swift
//  BestFriends
//
//  Created by Alex Titov on 4/12/21.
//

import SwiftUI
import Amplify
import AmplifyPlugins
import Firebase

@main
struct BestFriendsApp: App {

//    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @ObservedObject var sessionManager = SessionManager()
    
    init() {
        configureAmplify()
        sessionManager.getCurrentAuthUser()
    }
    
    var body: some Scene {
        WindowGroup {
            switch sessionManager.appState {
            case .login:
                LoginView()
                    .environmentObject(sessionManager)
            case .signUp:
                SocialChangeVid2()
                    .environmentObject(sessionManager)
            case .confirmationCode(let username):
                ConfirmationView(username: username)
                    .environmentObject(sessionManager)
            case .home(let userID):
                LandingView(myID: userID)
                    .environmentObject(sessionManager)
            case .rooms:
                RoomsView()
                    .environmentObject(sessionManager)
            case .smileNotes:
                ShakingCoolView()
                    .environmentObject(sessionManager)
            case .settings:
                SettingsView()
                    .environmentObject(sessionManager)
                
            }
            
        }
    }
   
    private func configureAmplify() {
        do {
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.add(plugin: AWSS3StoragePlugin())
            try Amplify.add(plugin: AWSAPIPlugin())
            try Amplify.configure()
            
            print("Amplify configured successfully")
        } catch {
            print("Could not initialize Amplify", error)
        }
    }
    
    
    
}




