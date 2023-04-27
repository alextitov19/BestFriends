//
//  TestPage.swift
//  BestFriends
//
//  Created by Social Tech on 4/6/23.
//



import Foundation
import SwiftUI
import AVKit

struct TestPage: View {
    
    
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    let groups: [Group]
    
    var body: some View {
        
        ZStack {
            
            //            ColorManager .purple1
            //                .ignoresSafeArea()
            //                .onAppear()
            
            ColorManager .purple1
                .ignoresSafeArea()
                .onAppear()
            
            Color .black
                .ignoresSafeArea()
            
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
            
            
            
            
            VStack {
                
                
           
                
                Spacer ()
                    .frame(height: 20)
                
                Text("We keep you safe & sound")
                    .font(.system(size: 20))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager .purple1)
                
                Spacer ()
                    .frame(height: 5)
                
                Text("here in Bestfriends, so you can ...")
                    .font(.system(size: 20))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager .purple1)
                
                Spacer ()
                    .frame(height: 15)
                
                VStack {
                    
                    Text("Let the outside of you")
                        .font(.system(size: 35))
                        .fontWeight(.thin)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .purple1)
                    
                    Spacer ()
                        .frame(height: 5)
                    
                    VStack {
                        
                        Text("match")
                            .font(.system(size: 22))
                            .italic()
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager .purple1)
                        
                        Spacer ()
                            .frame(height: 5)
                        
                        Text("the inside of you")
                            .font(.system(size: 35))
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager .purple1)
                        
                        VStack {
                            
                            Spacer ()
                                .frame(height: 50)
                            
                            
                            Spacer ()
                                .frame(height: 20)
                            
                            
                            NavigationLink( destination: AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                            //                               destination: AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                            label: {
                                Text("Getting your Emotional Support")
                                    .fontWeight(.thin)
                                    .frame(width: 320, height: 40)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 23))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            })
                            
                            
                            Spacer ()
                                .frame(height: 200)
                            
                        }
                    }
                }
            }
        }
        
    }
    
}
