//
//  CH19.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 7/17/23.
//
//


import Foundation
import SwiftUI
import AVKit

struct CH19: View {
    
    let user: User
    
    var body: some View {
        
        ZStack {
        
            ColorManager .purple4
                .opacity(0.6)
                .ignoresSafeArea()

            
            Image("FHBackground")
                     .resizable()
                     .scaledToFill()
                     .edgesIgnoringSafeArea(.all)
            
            Circle()
                          .frame(width: 300, height: 300)
                          .foregroundColor(ColorManager.purple3)
                          .offset(x: -200, y: 400)
            
            VStack {
                
                Text("Friendship Badges")
                    .fontWeight(.light)
                    .frame(width: 320, height: 60)
                    .foregroundColor(Color.white)
                    .font(.system(size: 30))
                    .background(ColorManager .orange5)
                    .cornerRadius(10)
                    .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                
                
                   Spacer()
                       .frame(height: 30)
                ZStack {
                            
                            Image(systemName: "circle.fill")
                                .resizable()
                                .foregroundColor(Color.purple)
                                .frame(width: 400, height: 400)
                                .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                                .opacity(0.95)
                            
                    VStack {
                        
                       
                     
                        Spacer()
                            .frame(height: 20)
                        
                        HStack {
                            
                            
                            Image(systemName: "star.circle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 37, height: 37)
                                .opacity(0.9)
                                .foregroundColor(.white)
                            
                                                            Text("Level 1 _")
                                                                .font(.system(size: 25))
                                                                .foregroundColor(ColorManager .grey4)
                                                                .fontWeight(.regular)
                                                                .multilineTextAlignment(.center)
                                    }
                        
                        Text("after you acheive 30 Shooting Stars")
                            .font(.system(size: 25))
                            .foregroundColor(Color.cyan)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                        
                        
                        
                        Spacer()
                            .frame(height: 25)
                        
                        HStack {
                            
                            Image(systemName: "star.circle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 37, height: 37)
                                .opacity(0.9)
                                .foregroundColor(.white)
                            
                            Text("Level 2 _")
                                .font(.system(size: 25))
                                .foregroundColor(ColorManager .grey4)
                                .fontWeight(.regular)
                                .multilineTextAlignment(.center)
        
        
                        }
                        
                        Text("???")
                            .font(.system(size: 25))
                            .foregroundColor(Color.cyan)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                        
                        
                        
                        Spacer()
                            .frame(height: 25)
                        
                        HStack {
                            
                            Image(systemName: "star.circle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 37, height: 37)
                                .opacity(0.9)
                                .foregroundColor(.white)
                            
                            Text("Level 3 _")
                                .font(.system(size: 25))
                                .foregroundColor(ColorManager .grey4)
                                .fontWeight(.regular)
                                .multilineTextAlignment(.center)
                      
                            
                        }
                        
                        Text("???")
                            .font(.system(size: 25))
                            .foregroundColor(Color.cyan)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                        
                        }
                    }
                }
                            
                        }
                    }
                }
            
 
