//
//  BestFriendsApp.swift
//  BestFriends
//
//  Created by Alex Titov on 4/12/21.
//

import SwiftUI
import Amplify
import AmplifyPlugins

class DeviceTokenManager {
    private init() {}
    static let shared = DeviceTokenManager()
    
    var deviceToken: String?
}

@main
struct BestFriendsApp: App {

    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @ObservedObject var sessionManager = SessionManager()
    @State var notificationService = NotificationService()
    
    init() {
        configureAmplify()
        sessionManager.getSurrentAuthUser()
    }
    
    var body: some Scene {
        WindowGroup {
            switch sessionManager.authState {
            case .login:
                LoginView()
                    .environmentObject(sessionManager)
                    .onAppear(perform: notificationService.requestPermission)
            case .signUp:
                SettingsView()
                    .environmentObject(sessionManager)
            case .confirmationCode(let username):
                ConfirmationView(username: username)
                    .environmentObject(sessionManager)
            case .session(let user):
                LandingView(myID: user.username)
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




