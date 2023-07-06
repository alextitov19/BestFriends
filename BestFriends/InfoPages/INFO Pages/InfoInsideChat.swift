//
//  InfoInsideChat.swift
//  BestFriends
//
//  Created by Social Tech on 10/25/22.
//



import Foundation
import SwiftUI
import AVKit

struct InfoInsideChat: View {
    
    let user: User
    
    var body: some View {
        
        ZStack {
            
            
            ColorManager.grey4
                .ignoresSafeArea()
                .onAppear()
            
            
            VStack {
                
                
                Text("Creating")
                    .font(.system(size: 35))
                
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey2)
                
                Text("NEW Chat Rooms")
                    .font(.system(size: 38))
                
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey2)
                ZStack {
                    
                    
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(Color.purple)
                        .frame(width: 400, height: 400)
                        .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                        .opacity(0.95)
                    
                    
                    VStack {
                        
                        
                        Spacer ()
                            .frame(height: 90)
                        
                        Text("On Homepage")
                        //                            .italic()
                            .font(.system(size: 19))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager .grey1)
                        
                        Spacer ()
                            .frame(height: 20)
                        
                        Text("For 'One-on-One' Rooms:")
                            .font(.system(size: 25))
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager .grey1)
                        
                        Text("1) Tap friend's planet")
                            .font(.system(size: 19))
                            .italic()
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager .grey2)
                        
                
                        
                        Text("2) Then, tap the popup")
                            .font(.system(size: 20))
                            .italic()
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager .grey2)
                        
                        Text("[Create New Chat Room]")
                            .font(.system(size: 22))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager .grey2)
                        
                        VStack {
                            Spacer ()
                                .frame(height: 20)
                            Text("For 'Group' Rooms:")
                                .font(.system(size: 25))
                                .fontWeight(.regular)
                                .multilineTextAlignment(.center)
                                .foregroundColor(ColorManager .grey1)
                            
                            Text("1) Tap 'ALL' friend's planets you want in room")
                                .font(.system(size: 19))
                                .italic()
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(ColorManager .grey2)
                            
                    
                            
                            Text("2) Then, tap the popup")
                                .font(.system(size: 20))
                                .italic()
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(ColorManager .grey2)
                            
                            Text("[Create New Chat Room]")
                                .font(.system(size: 22))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(ColorManager .grey2)
                            
                    
                            
                            VStack {
                                
                                
                                
                                Spacer ()
                                    .frame(height: 40)
                                
                                NavigationLink(
                                    destination: ChangeChatBackgroundView(user: user),
                                    label: {
                                        Text("Customize \nChat Backgrounds")
                                            .fontWeight(.thin)
                                            .frame(width: 280, height: 80)
                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                            .font(.system(size: 25))
                                            .background(ColorManager .purple3)
                                            .cornerRadius(15)
                                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                            .opacity(0.5)
                                    })
                                
                            }
                        }
                    }
                }
            }
            
        }
        
    }
}
