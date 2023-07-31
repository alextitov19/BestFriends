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
    
//    let user: User
    
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
                
                Text("Friendship Highlights")
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
                            
                                                          
                                    }
                       
                        Spacer()
                            .frame(height: 25)
                        
                        HStack {
                            
                            Image(systemName: "star.circle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .opacity(0.9)
                                .foregroundColor(.white)
                            
                            Text("As a special feature for our top users - quickly see your most recent PhotoPOPs & SmileVault messages.")
                                .font(.system(size: 20))
                                .foregroundColor(Color.cyan)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
        
                            Text("You must be at Level 1 to access this feature")
                                .font(.system(size: 20))
                                .foregroundColor(ColorManager .grey1)
                                .fontWeight(.regular)
                                .multilineTextAlignment(.center)
                        }
                        
                  
                        
                        
                        
                        Spacer()
                            .frame(height: 25)
                        
                        HStack {
                            
                            Image(systemName: "star.circle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 37, height: 37)
                                .opacity(0.9)
                                .foregroundColor(.white)
                    
                            
                        }
                        
                        
                        NavigationLink(
                            destination: FH1(user: user, friends: friends, friendAtmospheres: friendAtmospheres),
                                label: {
                                    Text("Access \nFriendship Highlights")
                                        .fontWeight(.light)
                                        .frame(width: 275, height: 60)
                                        .foregroundColor(ColorManager .grey4)
                                        .font(.system(size: 17))
                                        .background(Color.cyan)
                                        .opacity(0.85)
                                        .cornerRadius(15)
                                        .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                    
                                                        })
                        
                        }
                    }
                }
                            
                        }
                    }
                }
            
 
