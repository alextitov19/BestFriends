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
           
           Text("-Long-tap messages to save to 'Nice' messages")
               .font(.system(size: 15))
               .fontWeight(.light)
               .multilineTextAlignment(.center)
               .foregroundColor(ColorManager.grey1)
                
                Text("-Long-tap messages to Report Abuse")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey1)
                
                Text("-Tap [Remove Me] to be removed")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey1)
               

                Text("-Tap 'Lock' icon to Hide Chat")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey1)

                Text("-'Un-Hide' Chat enter 4 digit PIN")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey1)
                    
                
              
                Spacer()
                .frame(height: 100)
                

           
               
            }
        }
        
    }
}



