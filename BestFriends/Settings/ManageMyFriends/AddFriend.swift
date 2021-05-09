//
//  AddFriend.swift
//  BestFriends
//
//  Created by Robert Roe on 5/7/21.
//

import Amplify
import SwiftUI


struct AddFriend: View {

    var body: some View {
        NavigationView{
        ZStack {
            
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
        }
        }
    }
}

struct AddFriend_Previews : PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
