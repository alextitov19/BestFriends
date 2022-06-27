//
//  MyRoomPreload.swift
//  BestFriends
//
//  Created by Social Tech on 6/25/22.
//


import Foundation

import SwiftUI


struct MyRoomPreload: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    let atmosphere: Atmosphere
    let friendAtmospheres: [Atmosphere]
    
    var body: some View {
        ZStack {
            
            ColorManager.purple4
                .ignoresSafeArea()
                .onAppear()
            
            
            
            
            
            
            VStack {
                Text("Yep, its one of those")
                    .font(.system(size: 45))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                
                
                Text("D A Y S")
                    .font(.system(size: 65))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 10)
                
                
                Text("We really just want to be by ourselves")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                
                Spacer()
                    .frame(height: 50)
                
                
                
                NavigationLink(destination: HideoutsView(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres:  friendAtmospheres), label: {
                    Text("My Room")
                        .fontWeight(.thin)
                        .frame(width: 200, height: 40)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 30))
                        .background(ColorManager.purple3)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                })
                
//                NavigationLink(
//                    destination: EmptyView(),
//                    label: {
//                        Text("My Room")
//                            .fontWeight(.thin)
//                            .frame(width: 300, height: 40)
//                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                            .font(.system(size: 30))
//                            .background(ColorManager.purple3)
//                            .cornerRadius(15)
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//                    })
                VStack {
                    Spacer()
                        .frame(height: 30)
                    
                    Text("- see nice messages you \nlong-tapped in Chat")
                        .font(.system(size: 19))
                        .italic()
                        .foregroundColor(ColorManager.grey4)
                        .fontWeight(.light)
                        .foregroundColor(Color.white)
                    
                    Spacer()
                        .frame(height: 10)
                    
                    Text("- Shake you phone - images \nthat always make you SMILE \npop up for just a second")
                        .font(.system(size: 19))
                        .italic()
                        .foregroundColor(ColorManager.grey4)
                        .fontWeight(.light)
                        .foregroundColor(Color.white)
                    
                    Spacer()
                        .frame(height: 10)
                    
                    Text("- Check out songs that your friends \n sent you to match your mood")
                        .font(.system(size: 19))
                        .italic()
                        .foregroundColor(ColorManager.grey4)
                        .fontWeight(.light)
                        .foregroundColor(Color.white)
                    VStack{
                        
                        Spacer()
                            .frame(height: 30)
                        
                        Text("btw,")
                            .font(.system(size: 35))
                            .italic()
                            .fontWeight(.light)
                            .foregroundColor(Color.white)
                        
                        
                        Text("Its ok to be sad for a while")
                            .font(.system(size: 30))
                            .italic()
                            .fontWeight(.light)
                            .foregroundColor(Color.white)
                        
                        
                        Spacer()
                            .frame(height: 30)
                        
                        
                        
                    
                    }
                    
                    
                }
            }
            
        }
        
    }
    
}

