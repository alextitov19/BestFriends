//
//  INFOPreload2.swift
//  BestFriends
//
//  Created by Social Tech on 11/8/22.
//

//

import Foundation
import SwiftUI


struct INFOPreload2: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
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
            
            //
            //            AdPlayerView(name: "dramaLights")
            //                .ignoresSafeArea()
            //                .blendMode(.screen)
            //                .opacity(0.75)
            
            
            //            Circle()
            //                .frame(width: 300, height: 300)
            //                .foregroundColor(ColorManager.purple2)
            //                .offset(x: 200, y: -450)
            
            Circle()
                .frame(width: 300, height: 300)
                .foregroundColor(ColorManager.purple3)
                .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                .offset(x: -200, y: 400)
            
            
            
            
            
            VStack {
                
                
                VStack {
                    
                    
                    
                    
                    Text("Welcome everyone from the")
                        .font(.system(size: 25))
                        .fontWeight(.thin)
                        .foregroundColor(ColorManager .purple5)
                        .multilineTextAlignment(.center)
                    
                    Text("Harvard WECode 2023")
                        .font(.system(size: 25))
                        .fontWeight(.thin)
                        .foregroundColor(ColorManager .purple5)
                        .multilineTextAlignment(.center)
                    
//                    Text("Feb. 18-19th")
//                        .font(.system(size: 25))
//                        .fontWeight(.thin)
//                        .foregroundColor(Color.white)
//                        .multilineTextAlignment(.center)
                    
                    Spacer()
                        .frame(height: 10)
                    
                    //                    Image("Harvard")
                    //                        .resizable()
                    //                        .frame(width: 50, height: 50)
                    //                        .cornerRadius(10)
                    //                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    //
                    Spacer()
                        .frame(height: 50)
                    
                    Text("For stickers or questions")
                        .font(.system(size: 17))
                        .fontWeight(.thin)
                        .foregroundColor(ColorManager .purple5)
                        .multilineTextAlignment(.center)
                    
                    Text("find our co-founder, Leeza")
                        .font(.system(size: 17))
                        .fontWeight(.thin)
                        .foregroundColor(ColorManager .purple5)
                        .multilineTextAlignment(.center)
                    VStack {
                        
                        Text("in the Leverett G Tower")
                            .font(.system(size: 17))
                            .fontWeight(.thin)
                            .foregroundColor(ColorManager .purple5)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                            .frame(height: 20)
                        
                        Text("Email: Admin@SocialTechLabs.com")
                            .fontWeight(.thin)
                            .frame(width: 310, height: 25)
                            .foregroundColor(Color .blue)
                          
                            .font(.system(size: 20))
                            .background(ColorManager .grey1)
                            .cornerRadius(4)
                    
                        
                        Spacer()
                            .frame(height: 50)
                        
                        VStack {
                            ZStack {
                                
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .foregroundColor(ColorManager .purple1)
                                    .frame(width: 180, height: 150)
                                    .shadow(color: ColorManager .purple3, radius: 65, x: 30, y: 50)
                                
                                //
                                
                                NavigationLink(
                                    destination: INFOMainHowWorks(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                    label: {
                                        VStack {
                                            Text("Welcome")
                                                .fontWeight(.thin)
                                                .frame(width: 135, height: 30)
                                                .foregroundColor(ColorManager .purple3)
                                                .font(.system(size: 35))
                                                .background(ColorManager .purple1)
                                            
                                            Text("Tap here")
                                                .fontWeight(.thin)
                                                .frame(width: 90, height: 30)
                                            
                                                .foregroundColor(Color .green)
                                                .font(.system(size: 20))
                                                .background(ColorManager .purple1)
                                        }
                                    }
                                )}
                            
                            Spacer()
                                .frame(height: 100)
                            
                            Text("(We are not affiliated with Harvard)")
                                .font(.system(size: 13))
                                .italic()
                                .fontWeight(.thin)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                            
                            
//                            Spacer()
//                                .frame(height: 50)
                            
                            
                        }
                        
                    }
                }
                
            }
        }
    }
}
