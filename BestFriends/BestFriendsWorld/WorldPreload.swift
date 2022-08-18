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
    let groups: [Group]
    
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
                
                Text("Sunday's ")
                    .font(.system(size: 25))
                    .italic()
                    .foregroundColor(ColorManager.orange2)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Text("at 8pm your time")
                    .font(.system(size: 20))
                    
                    .foregroundColor(ColorManager.orange2)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                Spacer()
                    .frame(height:40)
                
                Text("Join the rest")
                    .font(.system(size: 30))
//                    .italic()
                    .foregroundColor(ColorManager.purple2)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                
                Text("of the World")
                    .font(.system(size: 30))
//                    .italic()
                    .foregroundColor(ColorManager.purple2)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
              
                
                Text("Being BestFriends")
                             .font(.system(size: 35))
                             .fontWeight(.thin)
                             .multilineTextAlignment(.center)
                             .foregroundColor(ColorManager.purple2)
                
                Spacer()
                    .frame(height:100)
            
            
                
                VStack {
                    
               
//
//
//                    NavigationLink(destination: AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends), label: {
//                        Text("My New Aura")
//                            .fontWeight(.thin)
//                            .frame(width: 270, height: 40)
//                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                            .font(.system(size: 30))
//                            .background(ColorManager.purple3)
//                            .cornerRadius(15)
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                    })
//
                 


                    Button(action: {
                        sessionManager.showLogin()
                    },
                        label: {
                            Text("Send Nice Message")
                                .fontWeight(.thin)
                                .frame(width: 250, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 26))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                   
                    VStack {
                      
                        Spacer()
                            .frame(height: 20)
                        
                        NavigationLink(destination: WorldPhotoPreload(user: user, friends: friends), label: {
                            Text("PhotoPop")
                                .fontWeight(.thin)
                                .frame(width: 250, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 27))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                        
                        Spacer()
                            .frame(height: 20)
                        
                        NavigationLink(destination: SomethingBuggingYou(user: user, atmosphere: atmosphere, friends: friends, groups: groups), label: {
                            Text("Ouch!")
                                .fontWeight(.thin)
                                .frame(width: 250, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 27))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                        
                        
                        
                        
                        
                        Spacer()
                            .frame(height: 120)
                 
                        
                    }
                }
                
            }
            
        }
        
    }
    

}
