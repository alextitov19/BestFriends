//
//  BlockFriend.swift
//  BestFriends
//
//  Created by Robert Roe on 5/7/21.
//



import Amplify
import SwiftUI


struct BlockFriend: View {
    
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

struct BlockFriend_Previews : PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
