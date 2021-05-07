//
//  DeleteBestFriends.swift
//  BestFriends
//
//  Created by Robert Roe on 5/7/21.
//

import Amplify
import SwiftUI


struct DeleteBestFriends: View {

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

struct DeleteBestFriend_Previews : PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
