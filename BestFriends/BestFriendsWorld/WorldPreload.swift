//
//  WorldPreload.swift
//  BestFriends
//
//  Created by Social Tech on 8/6/22.
//


import Foundation
import SwiftUI


struct WorldPreload: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    
    var body: some View {
        ZStack {
//            ColorManager.grey3
//                .ignoresSafeArea()
//                .onAppear()
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
//            AdPlayerView(name: "Planet6")
//                .ignoresSafeArea()
//                .blendMode(.screen)
            
            AdPlayerView(name: "PaperAirplanes")
                .ignoresSafeArea()
                .blendMode(.screen)
            
//            AdPlayerView(name: "Atmosphere2")
//                .ignoresSafeArea()
//                .blendMode(.screen)
            
            VStack {
            
                Text("Join the rest")
                    .font(.system(size: 60))
                    .italic()
                    .foregroundColor(ColorManager.purple2)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                
                Text("of the World")
                    .font(.system(size: 60))
                    .italic()
                    .foregroundColor(ColorManager.purple2)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height:40)
                
                Text("Being BestFriends")
                             .font(.system(size: 30))
                             .fontWeight(.thin)
                             .multilineTextAlignment(.center)
                             .foregroundColor(Color.white)
                Spacer()
                    .frame(height:10)
                
                Text("Cheering each other")
                             .font(.system(size: 20))
                             .fontWeight(.thin)
                             .multilineTextAlignment(.center)
                             .foregroundColor(Color.white)
                Text("in good times,")
                             .font(.system(size: 20))
                             .fontWeight(.thin)
                             .multilineTextAlignment(.center)
                             .foregroundColor(Color.white)
                         Text("supporting in bad.")
                             .font(.system(size: 20))
                             .fontWeight(.thin)
                             .multilineTextAlignment(.center)
                             .foregroundColor(Color.white)
                
                Spacer()
                    .frame(height:50)
                
            
                
                VStack {
                 
                    
                    NavigationLink(destination: AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends), label: {
                        Text("For the Next 3 Minutes")
                            .fontWeight(.thin)
                            .frame(width: 310, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                    
                    Spacer()
                        .frame(height: 20)
//                   
//                    Text("Is Everybody")
//                        .font(.system(size: 30))
//                        .foregroundColor(.blue)
//                        .fontWeight(.ultraLight)
//                        .multilineTextAlignment(.center)
//                    
//                    Text("Okay?")
//                        .font(.system(size: 30))
//                        .foregroundColor(.blue)
//                        .fontWeight(.ultraLight)
//                        .multilineTextAlignment(.center)
                    
                    
                        Spacer()
                            .frame(height: 100)
                 
                        
                    }
                }
                
            }
            
        }
        
    }
    

