//
//  NEWSFeedPergion.swift
//  BestFriends
//
//  Created by Social Tech on 12/20/22.
//

import Foundation

//
//api.goperigon.com/v1/all?apiKey=aac803df-d463-49b8-8739-0d7a3b1c5c60&title=healthy friendships

import Foundation
import SwiftUI
import AVKit

struct NEWSFeedPergion: View {
    
    
    let user: User
    let friends: [User]
    let atmosphere: Atmosphere
    
    var body: some View {
        
        ZStack {
            
            ColorManager .purple1
                .ignoresSafeArea()
                .onAppear()
            
            Color .black
                .ignoresSafeArea()
            
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
            
            
            
            
            
            VStack {
//
//                Text("something bad")
//                    .font(.system(size: 40))
////                    .italic()
//                    .fontWeight(.regular)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(ColorManager .grey3)
//
//
//
//                Text("just happend")
//                    .font(.system(size: 35))
//                    .italic()
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(ColorManager .grey3)
//
//                Spacer ()
//                    .frame(height: 80)
                
                Text("You have the power to have great friends")
                    .font(.system(size: 25))
//                    .italic()
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager .grey3)
                
                Spacer ()
                    .frame(height: 10)
               
                VStack {
                    
                    Text("IF YOU DARE")
                        .font(.system(size: 35))
                    //                    .italic()
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .grey3)
                    Spacer ()
                        .frame(height: 10)
                    
                    Text("ask them ...")
                        .font(.system(size: 25))
                    //                    .italic()
                        .fontWeight(.thin)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .grey3)
                    
          
                    
                }
                
                
                
                Spacer ()
                    .frame(height: 20)
                
                ZStack {
                    
                    
                                        Image(systemName: "heart.fill")
                                            .resizable()
                                            .foregroundColor(ColorManager .purple2)
                                            .frame(width: 360, height: 330)
                                            .shadow(color: ColorManager .purple5, radius: 65, x: 30, y: 50)
                                            .opacity(0.8)
                    
                    
                    
                    VStack {
                        
                        Spacer ()
                            .frame(height: 80)
                        
              
//
//
//                        Text("Yep, a unique Journal designed to")
//                            .font(.system(size: 20))
//                            .italic()
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(ColorManager .grey3)
//
//                        Text("Fix Problems")
//                            .font(.system(size: 30))
////                            .italic()
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(ColorManager .grey3)
//
//
//
                        VStack {
                            
//                            NavigationLink( destination:   HorizonHomeView(user: user, friends: friends, atmosphere: atmosphere)
                            
                            NavigationLink( destination: EmptyView(),
                                            label: {
                                Text("How am I doing?")
                                    .fontWeight(.thin)
                                    .frame(width: 250, height: 40)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 23))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            })
                            
                           
                            Spacer ()
                                .frame(height: 10)
                            
//                            Text("with your friends help")
//                                .font(.system(size: 20))
//    //                            .italic()
//                                .fontWeight(.light)
//                                .multilineTextAlignment(.center)
//                                .foregroundColor(ColorManager .grey3)
//
//
                            Spacer ()
                                .frame(height: 100)
              
                            
                        }
                    }
                }
            }
        }
        
    }
    
    
}

