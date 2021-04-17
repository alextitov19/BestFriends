//
//  SessionView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/16/21.
//

import SwiftUI

struct SessionView: View {

    var body: some View {
        VStack {
            Spacer()
            
            Text("You signed in using Amplify!")
            
            Spacer()
            
            Button("Sign Out", action: {})
        }
    }
}

struct SessionView_Previews : PreviewProvider {
    static var previews: some View {
        SessionView()
    }
}
