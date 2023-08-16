//
//  CH18.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 7/17/23.
//



import Foundation
import SwiftUI
import AVKit

struct CH18: View {
    
 
    
    let user: User
     let atmosphere: Atmosphere
     let friends: [User]
     let friendAtmospheres: [Atmosphere]
     let groups: [Group]
    
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
                    .frame(width: 325, height: 60)
                    .foregroundColor(Color.white)
                    .font(.system(size: 25))
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
                            
                            
                            NavigationLink(
                                destination: CH17(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                label: {
                                    Text("Level 1")
                                        .fontWeight(.light)
                                        .frame(width: 100, height: 50)
                                        .foregroundColor(ColorManager .grey4)
                                        .font(.system(size: 20))
                                        .background(Color.cyan)
                                        .opacity(0.85)
                                        .cornerRadius(15)
                                        .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                                    
                                })
    
                    }
                        
                        Text("after you acheive 30 Shooting Stars")
                            .font(.system(size: 18))
                            .italic()
                            .foregroundColor(Color.white)
                            .fontWeight(.regular)
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
                            
                            NavigationLink(
                                destination: EmptyView(),
                                label: {
                                    Text("Level 2")
                                        .fontWeight(.light)
                                        .frame(width: 100, height: 50)
                                        .foregroundColor(ColorManager .grey4)
                                        .font(.system(size: 20))
                                        .background(Color.cyan)
                                        .opacity(0.85)
                                        .cornerRadius(15)
                                        .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                                    
                                })
        
        
                        }
                        
                        Text("details coming soon")
                            .font(.system(size: 18))
                            .italic()
                            .foregroundColor(Color.white)
                            .fontWeight(.regular)
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
                            
                            NavigationLink(
                                destination: EmptyView(),
                                label: {
                                    Text("Level 3")
                                        .fontWeight(.light)
                                        .frame(width: 100, height: 50)
                                        .foregroundColor(ColorManager .grey4)
                                        .font(.system(size: 20))
                                        .background(Color.cyan)
                                        .opacity(0.85)
                                        .cornerRadius(15)
                                        .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                                    
                                })
                            
                        }
                        
                        Text("details coming soon")
                            .font(.system(size: 18))
                            .italic()
                            .foregroundColor(Color.white)
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                        
                        }
                    }
                }
                            
                        }
                    }
                }
            
 
