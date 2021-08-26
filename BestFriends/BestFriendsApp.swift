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
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @ObservedObject var sessionManager = SessionManager()
    
    init() {
        configureAmplify()
        FirebaseApp.configure()
//        sessionManager.signOut()
        
        //        if Amplify.Auth.getCurrentUser() != nil {
        //            let id  = Amplify.Auth.getCurrentUser()!.username
        //            if UserDataSource().getAllEmails().contains(id) == false {
        //                print("Got into line 25 on BFA")
        //                sessionManager.signOut()
        //                sessionManager.appState = .login
        //                NotificationCenter.default.addObserver(forName: UIApplication.didEnterBackgroundNotification, object: nil, queue: .main) { _ in
        //                    // Background...
        //                    // Change user isOnline to false
        //                    print("App is in background")
        //                    UserDataSource().setOnlineStatus(isOnline: false)
        //                }
        //                return
        //            }
        //        }
        //        AdDataSource().createAd()
        
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
            case .welcome:
                WelcomeView()
                    .environmentObject(sessionManager)
            case .login:
                LoginView()
                    .environmentObject(sessionManager)
            case .signUp:
                SignUpView1()
                    .environmentObject(sessionManager)
            case .confirmationCode(let username, let password):
                ConfirmationView(username: username, password: password)
                    .environmentObject(sessionManager)
            case .home:
                HomeView()
                    .environmentObject(sessionManager)
            case .rooms:
                RoomsView()
                    .environmentObject(sessionManager)
            case .smileNotes:
                SmileVaultView()
                    .environmentObject(sessionManager)
            case .settings:
                Settings2View()
                    .environmentObject(sessionManager)
            case .chat(let room):
                ChatView(room: room)
                    .environmentObject(sessionManager)
            case .infoPages(let username, let password):
                InfoViewPage1(username: username, password: password)
                    .environmentObject(sessionManager)
            case .loading(let page):
                Loading(page: page)
                    .environmentObject(sessionManager)
            case .pin(let room):
                PinView(room: room)
                    .environmentObject(sessionManager)
            case .isInvitedToChat(let invitedRoomId):
                NotificationPreLoad(roomID: invitedRoomId)
                    .environmentObject(sessionManager)
            case .shakingCool:
                ShakingCoolView()
                    .environmentObject(sessionManager)
            case .broadcast:
                BroadcastView()
                    .environmentObject(sessionManager)
            }
            
        }
    }
    
    private func configureAmplify() {
        do {
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.add(plugin: AWSS3StoragePlugin())
            try Amplify.add(plugin: AWSAPIPlugin())
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.add(plugin: AWSPinpointAnalyticsPlugin())
            try Amplify.configure()
            
            print("Amplify configured successfully")
        } catch {
            print("Could not initialize Amplify", error)
        }
    }
    
    
    
}




