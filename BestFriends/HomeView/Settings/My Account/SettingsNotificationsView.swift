//
//  NotificationsView.swift
//  BestFriends
//
//  Created by Social Tech on 4/8/22.
//



import Foundation
import SwiftUI
import AVKit

struct SettingsNotificationsView: View {
    
    let user: User
    
    var body: some View {
        
        ZStack {
            
            ColorManager .purple1
                .ignoresSafeArea()
                .onAppear()
            
            
            
            
            VStack {
                
                
                Text("Friendship Drama")
                    .font(.system(size: 35))
                
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey2)
                
                
                ZStack {
                    
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(ColorManager .purple1)
                        .frame(width: 400, height: 400)
                        .shadow(color: ColorManager .pmbc_blue, radius: 65, x: 30, y: 50)
                        .opacity(0.95)
                    
                    
                    
                    VStack {
                        
                        
                        Spacer ()
                            .frame(height: 100)
                        
                        Text("Did a friend do something")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey3)
                        
                        Text("that's been bugging you?")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey3)
                        
                        Spacer ()
                            .frame(height: 25)
                        
                        Text("Maybe you're little nervious")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey3)
                        
                        Text("to say something")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey3)
                        
                        VStack {
                          
//                            Spacer ()
//                                .frame(height: 10)
                            
                            Text(". . .")
                                .italic()
                                .font(.system(size: 40))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(ColorManager.grey3)
                            
                            Spacer ()
                                .frame(height: 20)
                            
                            
                            Text("Join users worldwide")
                                .italic()
                                .font(.system(size: 20))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(ColorManager.grey3)
                            
                                Text("saying something - Right NOW!")
                                    .italic()
                                    .font(.system(size: 20))
                                    .fontWeight(.light)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(ColorManager.grey3)
                                
                                
                                
                                Spacer ()
                                    .frame(height: 20)
                                
                                Text("We'll all do this together!")
                                    .italic()
                                    .font(.system(size: 20))
                                    .fontWeight(.light)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(ColorManager.grey3)
                                
                                
                                
                                Spacer ()
                                    .frame(height: 100)
                                
                            }
                        }
                    }
                }
            }
            
        }
    }



