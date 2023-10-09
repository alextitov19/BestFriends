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
    
    //    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    //    let atmosphere: Atmosphere
    //    let friends: [User]
    //    let friendAtmospheres: [Atmosphere]
    //    let groups: [Group]
    //    //    let friendAtmospheres: [Atmosphere]
    
    //    @State private var showItems: Bool = false
    //    @State private var offset: CGFloat = 200.0
    //
    
    var body: some View {
        
        ZStack {
            
            ColorManager .purple1
                .ignoresSafeArea()
                .onAppear()
            
            //            Image("purpleBackground")
            //                .resizable()
            //                .scaledToFill()
            //                .ignoresSafeArea()
            //
            //            Image("Meet750")
            //               .frame(width: 100, height: 50)
            //                .ignoresSafeArea()
            //                .scaledToFill()
            
            
            VStack {
                
                
                Text("Create Chat Rooms")
                    .font(.system(size: 35))
                
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey2)
             
                
                ZStack {
                    
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(ColorManager .purple1)
                        .frame(width: 335, height: 335)
                        .shadow(color: ColorManager .purple4, radius: 65, x: 30, y: 50)
                        .opacity(0.95)
                    
                    
                    
                    VStack {
                        
                        
                        Spacer ()
                            .frame(height: 60)
                        
                        Text("Individual Rooms")
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey2)
                        
               
                        
                        Text("On Homepage:")
                            .font(.system(size: 15))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey4)
                    
                        
                        Text("-tap Friend's Planet")
                            .font(.system(size: 15))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey4)
                    
                        
                        Text("-tap [Create Chat Rooms] from dropdown")
                            .font(.system(size: 15))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey4)
                        
                        Text("-name Chat Room")
                            .font(.system(size: 15))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey4)
                        
                   
                        
                        Text("* (must sign-out from 'Settings' \n& log back in to activate)")
                            .font(.system(size: 15))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey4)
                        
                        VStack {
                        
                            
                            Text(".  .  .")
                                .font(.system(size: 25, weight: .bold))
                                .foregroundColor(ColorManager .purple4)
                                .shadow(color: .black, radius: 1, x: 0, y: 1)
                                .opacity(0.50)
                                .multilineTextAlignment(.center)
                            
                            Spacer ()
                                .frame(height: 10)
                            Text("Group Rooms")
                                .font(.system(size: 20))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(ColorManager.grey2)
                      
                            
                            Text("-tap ALL friends planets want in room")
                                .font(.system(size: 15))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(ColorManager.grey4)
                        
                            
                            
                            Text("(* then follow above instructions)")
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
           
