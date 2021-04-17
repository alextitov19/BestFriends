//
//  SessionView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/16/21.
//

import SwiftUI
import Amplify


struct SessionView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: AuthUser

    var body: some View {
        VStack {
            Spacer()
            
            Text("You signed in as \(user.username) using Amplify!")
            
            Spacer()
            
            Button("Sign Out", action: sessionManager.signOut)
        }
    }
}

struct SessionView_Previews : PreviewProvider {
    private struct DummyUser: AuthUser {
        var userId: String = "1"
        var username: String = "dummy"
    }
    
    static var previews: some View {
        SessionView(user: DummyUser())
    }
}
