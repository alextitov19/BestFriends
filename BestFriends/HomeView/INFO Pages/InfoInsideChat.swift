//
//  InfoInsideChat.swift
//  BestFriends
//
//  Created by Social Tech on 10/25/22.
//



import Foundation
import SwiftUI


struct InfoInsideChat: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        
    ZStack {

            
            ColorManager.grey4
                .ignoresSafeArea()
                .onAppear()
               
        VStack {
          
           Text("Inside Chat Rooms")
               .font(.system(size: 35))
               .fontWeight(.light)
               .multilineTextAlignment(.center)
               .foregroundColor(ColorManager.purple3)
            
            
            
              
              Text("-Long-tap messages saving messages \n      to World FriendGroups \n      'Say Something Nice' feature \n-Long-tap messages to 'Report Abuse' \n\n\n-Tap [Remove Me] to be removed from room \n\n\n-Tap 'Lock' icon to Hide Chat \n-To 'Un-Hide' Chat, enter 4 digit PIN \n\n\n-Tap 'home' icon to return to homepage")
                  .font(.system(size: 17))
                  .fontWeight(.light)
                  .foregroundColor(Color .white)
                  .padding()
            
                Spacer()
                .frame(height: 100)
                

           
               
            }
        }
        
    }
}



