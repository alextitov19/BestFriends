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
            
//            ColorManager .purple7
//                .ignoresSafeArea()
//                .onAppear()
//
//            ColorManager .purple1
//                .ignoresSafeArea()
//
//
//            AdPlayerView(name: "sky2")
//                .ignoresSafeArea()
//
//
            
            ColorManager.purple7
                .opacity(0.3)
                .ignoresSafeArea()
                
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
            
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
                    .foregroundColor(ColorManager .grey2)
                
             
                
                Text("Just Happend")
                    .font(.system(size: 40))
                    
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager .grey2)
                
                Spacer ()
                    .frame(height: 20)
                
                Text("But, you're just not ready")
                    .font(.system(size: 23))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager .grey1)
          
                
                Text("to talk to your friends about it yet")
                    .font(.system(size: 23))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager .grey1)
          

               
                

         
                VStack {
                    
     
                    
                    Spacer ()
                        .frame(height: 80)
//
//                    Text("We can help...")
//                        .font(.system(size: 30))
//
//                        .fontWeight(.regular)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager .grey3)

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
                            .frame(height: 30)
                       
                        Text("Get")
                            .font(.system(size: 35))
                            
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager .purple7)
                        
                        Text("Emotional Support")
                            .font(.system(size: 40))
//                            .italic()
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager .purple7)
                        
                        Text("while you're alone")
                            .font(.system(size: 27))
                          .italic()
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager .grey3)
                        
                        VStack {
                            
                            
                            NavigationLink( destination: AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                            label: {
                                Text("REQUEST Care Hearts")
                                    .fontWeight(.thin)
                                    .frame(width: 300, height: 50)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 30))
                                    .background(Color .purple)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            })
                            
                            
                            
                            
//
//                            Spacer ()
//                                .frame(height: 100)
                            
                            
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
