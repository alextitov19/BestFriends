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

struct BadDayQuietAlertView: View {
    
    
    
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
            
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
            
            
            
            
            
            VStack {
//
//                Text("Ouch!")
//                    .font(.system(size: 40))
////                    .italic()
//                    .fontWeight(.regular)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(ColorManager .grey3)
//
                
                
                Text("Something")
                    .font(.system(size: 40))
//                    .italic()
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager .grey3)
                
             
                
                Text("Just Happend")
                    .font(.system(size: 40))
                    
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager .grey3)
                
               
                
                Text("We understand you may need time alone")
                    .font(.system(size: 20))
//                    .italic()
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager .grey3)
          
                Text("before talking to your friends about it")
                    .font(.system(size: 20))
                //                    .italic()
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager .grey3)
                
                Spacer ()
                    .frame(height: 20)
                

         
                VStack {
                    
                    
                
                    
               
//
//                    Text("- you don't want to bother them")
//                        .font(.system(size: 15))
//                    //                    .italic()
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager .grey3)
//
//                    Spacer ()
//                        .frame(height: 5)
//
//                    Text("- they really can't help fix this")
//                        .font(.system(size: 15))
//                    //                    .italic()
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager .grey3)
//
//                    Spacer ()
//                        .frame(height: 5)
//
//                    Text("- don't want to worry them ")
//                        .font(.system(size: 15))
//                    //                    .italic()
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager .grey3)
//
//
                    
                    Spacer ()
                        .frame(height: 50)
                    
                    Text("But")
                        .font(.system(size: 30))
                    
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .grey3)
                    
                    Text("Your freinds care about you")
                        .font(.system(size: 30))
                    
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .grey3)
                }
                
      
                
                ZStack {
                    
                    
                                        Image(systemName: "heart.fill")
                                            .resizable()
                                            .foregroundColor(ColorManager .purple2)
                                            .frame(width: 360, height: 330)
                                            .shadow(color: ColorManager .purple5, radius: 65, x: 30, y: 50)
                                            .opacity(0.8)
                    
                    
                    
                    VStack {
                        
                        Spacer ()
                            .frame(height: 70)
                        
                    
                        
                        //                        MyRoomInfo(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups)
                        
                        //
                        //                                   AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups
                        //
                        
//                        TestPage(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups
                        
                   
                     
                        
                        Text("and want to give you")
                            .font(.system(size: 20))
                            .italic()
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager .grey3)
                        
                        Text("Emotional Support")
                            .font(.system(size: 40))
//                            .italic()
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager .grey3)
                        
                        Text("while you're alone")
                            .font(.system(size: 20))
//                            .italic()
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager .grey3)
                        
                        VStack {
                            
                            
                            NavigationLink( destination: AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                            label: {
                                Text("Request \nCare Hearts")
                                    .fontWeight(.thin)
                                    .frame(width: 250, height: 70)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 23))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            })
                            
                            
                            
                            
                            
                            Spacer ()
                                .frame(height: 100)
                            
                            
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
