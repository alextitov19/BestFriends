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
    let friendAtmospheres: [Atmosphere]
    
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
                
                Text("Sunday's at 8:03pm EST")
                    .font(.system(size: 25))
//                    .italic()
                    .foregroundColor(ColorManager.orange2)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
             
                
                Text("(watch for push notification)")
                    .font(.system(size: 20))
                    .italic()
                    .foregroundColor(ColorManager.red)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
//                Text("(for a few minutes)")
//                    .font(.system(size: 20))
//                    .italic()
//                    .foregroundColor(ColorManager.orange2)
//                    .fontWeight(.ultraLight)
//                    .multilineTextAlignment(.center)
                Spacer()
                    .frame(height:40)
                
                Text("FriendGroups around the")
                    .font(.system(size: 30))
                    
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Text("W O R L D")
                    .font(.system(size: 50))
                    .foregroundColor(ColorManager.purple2)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
             
                
                Text("are getting together")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                
                Text("N O W!")
                    .font(.system(size: 50))
                    .foregroundColor(ColorManager.purple2)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
            
                
                Spacer()
                    .frame(height:100)
            
            
                
                VStack {
                    

                    
                    NavigationLink(destination: SaySomethingNice1(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres), label: {
                        Text("Say Something Nice!")
                            .fontWeight(.thin)
                            .frame(width: 270, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 27))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })

                   
                    VStack {
                      
                        Spacer()
                            .frame(height: 20)
                        
                        NavigationLink(destination: WorldPhotoPreload2(user: user, friends: friends), label: {
                            Text("PhotoPOP")
                                .fontWeight(.thin)
                                .frame(width: 270, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 27))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                        
                        Spacer()
                            .frame(height: 20)
                        
                        NavigationLink(destination: SomethingBuggingYou(user: user, atmosphere: atmosphere, friends: friends, groups: groups), label: {
                            Text("Something Bugging You?")
                                .fontWeight(.thin)
                                .frame(width: 270, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 24))
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
