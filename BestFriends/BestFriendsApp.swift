//
//  BestFriendsApp.swift
//  BestFriends
//
//  Created by Alex Titov on 4/12/21.
//

import SwiftUI

@main
struct BestFriendsApp: App {
    
    var sessionManager = SessionManager()
    
    var body: some Scene {
        WindowGroup {
            
            LoginView()
                .environmentObject(sessionManager)
            
        }
    }
}





