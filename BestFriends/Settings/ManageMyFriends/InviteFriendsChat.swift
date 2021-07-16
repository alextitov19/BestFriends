//
//  InviteFriendsChat.swift
//  BestFriends
//
//  Created by Social Tech on 7/16/21.
//

import Foundation

import SwiftUI

struct InviteFriendsChat: View {
    
//    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        ZStack {
            
            Image("SignUpPinBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                
                
                
                Text("Invite Your Friends to Chat.")
                    
                    .font(.system(size: 40))
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Spacer()
                    .frame(height: 20)

            }
        }
    }
}
