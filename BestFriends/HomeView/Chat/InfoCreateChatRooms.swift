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
            
            ColorManager .grey4
                .ignoresSafeArea()
                .onAppear()
            
 
            
            VStack {
                
                Text("Create")
                    .font(.system(size: 35))
                
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey2)
                Text("Chat Rooms")
                    .font(.system(size: 35))
                
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey2)
             
                
                ZStack {
                    
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(Color.orange)
                        .frame(width: 335, height: 335)
                        .shadow(color: ColorManager .grey1, radius: 65, x: 30, y: 50)
                        .opacity(0.95)
                    
                    
                    
                    VStack {
                        
                        
                        Spacer ()
                            .frame(height: 60)
                        
                        Text("Individual Rooms")
                            .font(.system(size: 25))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.white)
                      
                    
                        
                        Text("1) On homepage; tap friend's planet")
                            .font(.system(size: 15))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey4)
                    
                        
                        Text("2) Tap [Create Chat Rooms] popup")
                            .font(.system(size: 15))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey4)
                        
                        Text("3) Name chat room")
                            .font(.system(size: 15))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey4)
                        
                   
                        
                        Text("Note: must exit app and return to activate")
                            .font(.system(size: 13))
                            .italic()
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey1)
                        
                        VStack {
                        
                            Spacer ()
                                .frame(height: 7)
                            
                            Text(".  .  .")
                                .font(.system(size: 25, weight: .bold))
                                .foregroundColor(ColorManager .purple4)
                                .shadow(color: .black, radius: 1, x: 0, y: 1)
                                .opacity(0.50)
                                .multilineTextAlignment(.center)
                            
                            Spacer ()
                                .frame(height: 10)
                            
                            Text("Group Rooms")
                                .font(.system(size: 25))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.white)
                      
                            
                            Text("1) Tap 'ALL' friends planets want in room")
                                .font(.system(size: 15))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(ColorManager.grey4)
                        
                            
                            
                            Text("2) Then follow above instructions")
                                .font(.system(size: 15))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(ColorManager.grey4)
                            

                            
                            Spacer ()
                                .frame(height: 100)
                            
                        }
                        
                    }
                }
            }
        }
    }
    
}
           
