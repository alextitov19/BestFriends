//
//  BestFriendsApp.swift
//  BestFriends
//
//  Created by Alex Titov on 4/12/21.
//

import SwiftUI
import Amplify
import AmplifyPlugins

@main
struct BestFriendsApp: App {

    @ObservedObject var sessionManager = SessionManager()
    
    init() {
        configureAmplify()
        sessionManager.getSurrentAuthUser()
        uploadData()
    }
    
    var body: some Scene {
        WindowGroup {
            switch sessionManager.authState {
            case .login:
                LoginView()
                    .environmentObject(sessionManager)
            case .signUp:
                SignUpPage1()
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
            let models = AmplifyModels()
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.add(plugin: AWSS3StoragePlugin())
            try Amplify.add(plugin: AWSAPIPlugin(modelRegistration: models))
            
            try Amplify.configure()
            
            print("Amplify configured successfully")
        } catch {
            print("Could not initialize Amplify", error)
        }
    }
    
    func uploadData() {
        let dataString = "Example file contents"
        let data = dataString.data(using: .utf8)!
        Amplify.Storage.uploadData(key: "ExampleKey", data: data,
            progressListener: { progress in
                print("Progress: \(progress)")
            }, resultListener: { (event) in
                switch event {
                case .success(let data):
                    print("Completed: \(data)")
                case .failure(let storageError):
                    print("Failed: \(storageError.errorDescription). \(storageError.recoverySuggestion)")
            }
        })
    }
}
