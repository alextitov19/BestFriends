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
            LoginView()
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
