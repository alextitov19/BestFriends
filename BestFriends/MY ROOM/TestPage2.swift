//
//  TestPage2.swift
//  BestFriends
//
//  Created by Social Tech on 4/6/23.
//





//***********************************************************
//********************************************************************

import Foundation
import SwiftUI
import AVKit

struct TestPage2: View {
    
    
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    let groups: [Group]
    
    
    
    var body: some View {
        
        ZStack {
            
            ColorManager .purple1
                .ignoresSafeArea()
                .onAppear()
            
            Color .black
                .ignoresSafeArea()
            
            
            AdPlayerView(name: "Line")
                .ignoresSafeArea()
            
            
            
            
            
            VStack {
                
                Text("something")
                    .font(.system(size: 30))
//                    .italic()
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager .grey3)
                
                
//                Text("Not Good!")
//                    .font(.system(size: 40))
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(ColorManager .purple2)
                
                Spacer ()
                    .frame(height: 7)
                
                
                Text("just happend")
                    .font(.system(size: 35))
//                    .italic()
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager .grey3)
                
                Spacer ()
                    .frame(height: 145)
                
                ZStack {
                    //
                    //
                    //                    Image(systemName: "heart.fill")
                    //                        .resizable()
                    //                        .foregroundColor(ColorManager .purple2)
                    //                        .frame(width: 360, height: 330)
                    //                        .shadow(color: ColorManager .purple5, radius: 65, x: 30, y: 50)
                    //                        .opacity(0.8)
                    
                    
                    
                    VStack {
                        
                        Spacer ()
                            .frame(height: 20)
                        
                        Text("your friends care and want to give you")
                            .font(.system(size: 20))
                            .italic()
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager .grey3)
                        
                        Text("emotional support")
                            .font(.system(size: 20))
                            .italic()
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager .grey3)
                        
                        //                        MyRoomInfo(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups)
                        
                        //
                        //                                   AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups
                        //
                        
//                        TestPage(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups
                        
                        
                        NavigationLink( destination: AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                        label: {
                            Text("Let them know when \nyou'll be ready to talk")
                                .fontWeight(.thin)
                                .frame(width: 290, height: 80)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 23))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                        //
                        //                        Text("they can't help - if they don't know!")
                        //                           .font(.system(size: 20))
                        //                           .italic()
                        //                           .fontWeight(.light)
                        //                           .multilineTextAlignment(.center)
                        //                           .foregroundColor(ColorManager .grey3)
                        
                        VStack {
                            
                            Spacer ()
                                .frame(height: 20)
                            
                            Text("friendships leading the way")
                                .font(.system(size: 20))
                                .italic()
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(ColorManager .grey3)
                            
                    
                            
                            
                            
                            
                            Spacer ()
                                .frame(height: 200)
                            
                            
//                            NavigationLink( destination: MyRoomInfo(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
//                                            label: {
//                                Text("safe in my room")
//                                    .fontWeight(.thin)
//                                    .frame(width: 235, height: 40)
//                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                    .font(.system(size: 23))
//                                    .background(ColorManager.purple3)
//                                    .cornerRadius(15)
//                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                            })
//
//
//                            Text("hold up - I need some time alone first")
//                                .italic()
//                                .font(.system(size: 20))
//                                .fontWeight(.light)
//                                .multilineTextAlignment(.center)
//                                .foregroundColor(ColorManager .grey3)
                            
                            Spacer ()
                                .frame(height: 30)
                            
                        }
                    }
                }
            }
        }
        
    }
    
    
}
