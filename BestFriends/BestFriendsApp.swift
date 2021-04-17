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
        
    }
    
    var body: some Scene {
        WindowGroup {
            switch sessionManager.authState {
            case .login:
                LoginView()
            case .signUp:
                SignUpPage1()
            case .confirmationCode(let username):
                ConfirmationView(username: username)
            case .session(let user):
                SessionView(user: user)
            }
        }
    }
    
    private func configureAmplify() {
        do {
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.configure()
            print("Amplify configured successfully")
        } catch {
            print("Could not initialize Amplify", error)
        }
    }
}
