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
            
            ColorManager .grey4
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
                .offset(x: -200, y: 400)
            
            
            
            
            
            VStack {
                
                
                VStack {
                    
                    
                    
                    
                    Text("Welcome everyone from the")
                        .font(.system(size: 25))
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                    
                    Text("Harvard STEM event")
                        .font(.system(size: 25))
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                    
                    
                    
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
                    
                    Text("For stickers")
                        .font(.system(size: 17))
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                
                    Text("find our co-founder, Lizza")
                        .font(.system(size: 17))
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                    
                    
                    Text("in the _____ Dorm, Rm. _____")
                        .font(.system(size: 17))
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                        .frame(height: 50)
                    
                    VStack {
                        ZStack {
                            
                            Image(systemName: "heart.fill")
                                .resizable()
                                .foregroundColor(ColorManager .purple1)
                                .frame(width: 180, height: 150)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            
//                                .opacity(0.95)
                            
                            
                            NavigationLink(
                                destination: InfoWhyLoveFB(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                label: {
                                    Text("Welcome \nTap")
                                        .fontWeight(.thin)
                                        .frame(width: 100, height: 50)
                                        .foregroundColor(ColorManager .purple3)
                                        .font(.system(size: 25))
                                        .background(ColorManager .purple1)
                                  
                                    
                                }
                            )}
                        
                        Spacer()
                            .frame(height: 200)
                        
                        Text("(We are not affiliated with Harvard)")
                            .font(.system(size: 13))
                            .italic()
                            .fontWeight(.thin)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                        
                        
                        Spacer()
                            .frame(height: 50)
                        
                        
                    }
                    
                }
            }
            
        }
    }
}
