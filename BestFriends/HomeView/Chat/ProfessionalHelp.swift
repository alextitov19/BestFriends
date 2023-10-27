//
//  ProfessionalHelp.swift
//  BestFriends
//
//  Created by Social Tech on 2/1/23.
//



import Foundation
import SwiftUI
import AVKit

struct ProfessionalHelp: View {
  
    let user: User
   
    var body: some View {
        
        ZStack {
            
               Color.black
                   .opacity(0.9)
                   .ignoresSafeArea()
               
               AdPlayerView(name: "sky2")
                   .ignoresSafeArea()
                   .blendMode(.screen)
            
            VStack {
                Text("Single-friend")
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
                
                
                
                
                Text("To access rooms tap Friend's Planet")
                    .fontWeight(.light)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .glow(color: ColorManager.purple4, radius: 3)
                    .opacity(0.9)
                   
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
                        
                        Text("\nCREATING One-on-one Chat Rooms...Tap friend's planet, then ChatBubble 'popup' to name room \n\nACCESSING one-on-one Chat Rooms...Tap friend's planet, then this 'popup' to enter")
                            .fontWeight(.medium)
                            .font(.system(size: 14))
                            .frame(width: 340, height: 265)
                            .padding(15)
                            .foregroundColor(.white)
                            .cornerRadius(20) .opacity(0.99)
                        
                    }
                    
                }
                
                VStack {
                    
                    
                    
                    
                }
                    }
                }
                            Spacer ()
                                .frame(height: 5)
            
            
            NavigationLink(
                destination: ChangeChatBackgroundView(user: user),
                label: {
                    Text("Customize \nChat Backgrounds")
                        .fontWeight(.light)
                        .frame(width: 280, height: 80)
                        .foregroundColor(Color.white)
                        .font(.system(size: 25))
                        .background(Color.cyan)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        .opacity(0.5)
                })
                            
                        
                        
                    }
                }
        
           
