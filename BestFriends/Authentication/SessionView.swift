//
//  SessionView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/15/21.
//

import SwiftUI

struct SessionView: View {

    var body: some View {

        VStack {
            Spacer()
            
            Text("You signed up using Amplify!!!")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Button("Sign Out", action: {})

        }
    }
}

struct SessionView_Previews: PreviewProvider {
    private struct DummyUser: AuthUser {
        let userId: String = "1"
        let username: String = "dummy"
    }
    
    static var previews: some View {
        SessionView(user: DummyUser())
    }
}
