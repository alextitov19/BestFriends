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
        
        let adDoc = ManagementDocument(id: "currentRuningAds", documents: ["5A1F13A5-E2E4-46A8-A1A9-83E09193902F", "57B0D99E-EEA8-4A68-9DB7-EFFA9D81276A", "811C5961-C15E-41C3-AC0B-1474E871623D"])
        Amplify.API.mutate(request: .create(adDoc)) { mutationResult in
            switch mutationResult {

            case .success(let creationResult):
                
                switch creationResult {
                case .success:
                    print("Successfully created adDoc")
                    
                case .failure(let error):
                    print(error)
                }
                
            case .failure(let apiError):
                print(apiError)
            }
        }
    }
    
    var body: some Scene {
        WindowGroup {
            switch sessionManager.appState {
            case .login:
                LoginView()
                    .environmentObject(sessionManager)
            case .signUp:
                SignUpPage1()
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




