//
//  InfoCreateChatRm.swift
//  BestFriends
//
//  Created by Social Tech on 10/25/22.
//



import Foundation
import SwiftUI


struct InfoCreateChatRm: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
  
    var body: some View {
        ZStack {

            ColorManager.grey4
                .ignoresSafeArea()
                .onAppear()
    
                
            VStack {
                Spacer()
                    .frame(height: 15)

                    Text("Create")
                        .font(.system(size: 35))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.purple3)
                    
                    Text("NEW Chat Rooms")
                        .font(.system(size: 35))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.purple3)
                    
                Text("-Tap Friend's Planet")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.red)
                   
                    Text("-Tap [Create NEW Chat Rooms]")
                        .font(.system(size: 15))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.red)

                    Text("-Name Chat Room")
                        .font(.system(size: 15))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.red)
                    
                    Text("-Exit app and re-enter")
                        .font(.system(size: 23))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.red)
                    
                    Text("to Activate NEW Room")
                        .font(.system(size: 23))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.red)
                    
                    Text("-Try 'motion' background in Settings")
                        .font(.system(size: 15))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                    
                    
                }
                
         
    
                Spacer()
                .frame(height: 100)
                

           
               
            }
        }
        
    }






