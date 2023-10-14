//
//  CreateChatRooms.swift
//  BestFriends
//
//  Created by Social Tech on 12/20/22.
//



import Foundation
import SwiftUI
import AVKit

struct InfoCreateChatRooms: View {
  
    let user: User
   
    var body: some View {
        
        ZStack {
            
               Color.black
                   .opacity(0.9)
                   .ignoresSafeArea()
               
               AdPlayerView(name: "Planet4")
                   .ignoresSafeArea()
                   .blendMode(.screen)
            
            VStack {
                Text("Multi-friend")
                    .fontWeight(.medium)
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .glow(color: ColorManager.purple4, radius: 3)
                    .opacity(0.15)


                Text("Chat Rooms")
                    .fontWeight(.medium)
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .glow(color: ColorManager.purple4, radius: 3)
                    .opacity(0.15)
                   
                ZStack {
                        
                        Image(systemName: "circle.fill")
                            .resizable()
                            .foregroundColor(Color.purple)
                            .frame(width: 400, height: 400)
                            .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                            .opacity(0.25)
                        
                        VStack {
//                            Text("\nCREATING One-on-one Chat Rooms...Tap friend's planet, then ChatBubble 'popup' to name room \n\nACCESSING one-on-one Chat Rooms...Tap friend's planet, then this 'popup' to enter")
//                                .fontWeight(.medium)
//                                .font(.system(size: 14))
//                                .frame(width: 340, height: 265)
//                                .padding(15)
//                                .foregroundColor(.white)
//                                .cornerRadius(20) .opacity(0.99)
//
//
                       
                            Text("CREATING Mulit-friend Chat Rooms...Tap ALL friend's planets one-at-a-time, then tap the ChatBubble popup to name room \n\nACCESSING Multi-friend Chat Rooms...Either tap ALL friends planets in the room then the ChatBubble popup. Or select room from Chat Pullup")
                                .fontWeight(.medium)
                                .font(.system(size: 14))
                                .frame(width: 340, height: 265)
                                .padding(15)
                                .foregroundColor(.white)
                                .cornerRadius(20) .opacity(0.99)
                            
                        }
                        
                 
                
                        VStack {


                      
              
                        }
                    }
                }
                            Spacer ()
                                .frame(height: 100)
                            
                        }
                        
                    }
                }
        
           
