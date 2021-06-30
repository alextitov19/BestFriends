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
        FirebaseApp.configure()
        sessionManager.getCurrentAuthUser()
        
        NotificationCenter.default.addObserver(forName: UIApplication.didEnterBackgroundNotification, object: nil, queue: .main) { _ in
            // Background...
            // Change user isOnline to false
            print("App is in background")
            UserDataSource().setOnlineStatus(isOnline: false)
        }
    }
    
    var body: some Scene {
        WindowGroup {
            switch sessionManager.appState {
            case .login:
                LoginView()
                    .environmentObject(sessionManager)
            case .signUp:
                AddFriends()
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
                SmileNotesView()
                    .environmentObject(sessionManager)
            case .settings:
                SettingsView()
                    .environmentObject(sessionManager)
            case .chat(let room):
                MessageRoomView(room: room)
                    .environmentObject(sessionManager)
                
            }
            
        }
    }
    
    private func configureAmplify() {
        do {
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.add(plugin: AWSPinpointAnalyticsPlugin())
            try Amplify.add(plugin: AWSS3StoragePlugin())
            try Amplify.add(plugin: AWSAPIPlugin())
            try Amplify.configure()
            
            print("Amplify configured successfully")
        } catch {
            print("Could not initialize Amplify", error)
        }
    }
    
    
    
}




