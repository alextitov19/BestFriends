//
//  CH17.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 7/17/23.
//



import Foundation
import SwiftUI
import AVKit

struct CH17: View {
    
  
    
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
                
                
                Text("Shooting Stars")
                    .fontWeight(.light)
                    .frame(width: 320, height: 60)
                    .foregroundColor(Color.white)
                    .font(.system(size: 30))
                    .background(ColorManager .orange5)
                    .cornerRadius(10)
                    .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                
                Text("'star' next to you planet with # of days in a row")
                    .italic()
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                
                ZStack {
                    
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(Color.purple)
                        .frame(width: 400, height: 400)
                        .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                        .opacity(0.95)
                    
                    
                    
                    VStack {
                        
                        
                        Spacer ()
                            .frame(height: 100)
                        
                        Text("BestFriends rewards you for")
                        //                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey1)
                        
//                        Text("sending emotional support to friends")
//                        //                            .italic()
//                            .font(.system(size: 20))
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(ColorManager.grey1)
                        
                        
                        Text("sending CareHearts")
                        //                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey1)
                        
                        Spacer ()
                            .frame(height: 30)
                        
                        
                        VStack {
                            
                            NavigationLink(destination: HugPreload(user: user, friends: friends, groups: groups, atmosphere: atmosphere, friendAtmospheres: friendAtmospheres),
                                           label: {
                                Text("Blowing Kisses, Sending Hugs, PhotoPOPs & Songs")
                                    .fontWeight(.light)
                                    .frame(width: 320, height: 60)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 20))
                                    .background(Color .cyan)
                                    .cornerRadius(10)
                                    .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                                
                            })
                                
                            Text("once you get 30 shooting \nstars you earn a Level 1 Badge")
                                    .italic()
                                    .font(.system(size: 15))
                                    .fontWeight(.light)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(ColorManager.grey4)
                                
                            
                            
                            
                            
                            VStack {
                                
                                
                                
                                Spacer ()
                                    .frame(height: 100)
                                
                            }
                        }
                    }
                }
            }
            
        }
    }
}

