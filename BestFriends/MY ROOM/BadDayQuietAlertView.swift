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
                
               
                
                Text("But, you're just not ready")
                    .font(.system(size: 25))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
          
                
                Text("to talk yet")
                    .font(.system(size: 28))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
          

                Spacer ()
                    .frame(height: 20)
                

         
                VStack {
                    
     
                    
                    Spacer ()
                        .frame(height: 80)
                    
                    Text("Your Friends")
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
                       
                        Text("want to give you")
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
