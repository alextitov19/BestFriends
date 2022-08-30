//
//  SomethingBuggingYou.swift
//  BestFriends
//
//  Created by Social Tech on 8/13/22.
//


import Foundation
import SwiftUI


struct SomethingBuggingYou: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let groups: [Group]
    
    var body: some View {
        ZStack {
            ColorManager.grey4
                .ignoresSafeArea()
                .onAppear()
            
//            Image("purpleBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
//
//            AdPlayerView(name: "Planet6")
//                .ignoresSafeArea()
//                .blendMode(.screen)
            
//            AdPlayerView(name: "PaperAirplanes")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//
//            AdPlayerView(name: "Atmosphere2")
//                .ignoresSafeArea()
//                .blendMode(.screen)
            
            VStack {
                
         
                
                Text("Did your friend")
                    .font(.system(size: 25))
                    .italic()
                    .foregroundColor(ColorManager.purple2)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                
                Text("do or say something")
                    .font(.system(size: 25))
                    .italic()
                    .foregroundColor(ColorManager.purple2)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
              
                
                Text("that hurt down to the")
                             .font(.system(size: 25))
                             .italic()
                             .fontWeight(.thin)
                             .multilineTextAlignment(.center)
                             .foregroundColor(ColorManager.purple2)
                
                Text("soul of you?")
                             .font(.system(size: 25))
                             .italic()
                             .fontWeight(.thin)
                             .multilineTextAlignment(.center)
                             .foregroundColor(ColorManager.purple2)
                    Text("...")
                        .font(.system(size: 20))
                        .italic()
                        .foregroundColor(ColorManager.purple2)
                        .fontWeight(.thin)
                        .multilineTextAlignment(.center)
                    
                Text("Did you hurt them?")
                    .font(.system(size: 25))
                    .italic()
                    .foregroundColor(ColorManager.purple2)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
             
                VStack {
                
                Spacer()
                    .frame(height:40)
            
                Text("If it's been")
                             .font(.system(size: 20))
                             .fontWeight(.thin)
                             .multilineTextAlignment(.center)
                             .foregroundColor(ColorManager.purple1)

                            
                Text("bugging you all week")
                             .font(.system(size: 20))
                             .fontWeight(.thin)
                             .multilineTextAlignment(.center)
                             .foregroundColor(ColorManager.purple1)
                    Text("here's a chance to")
                                 .font(.system(size: 20))
                                 .fontWeight(.thin)
                                 .multilineTextAlignment(.center)
                                 .foregroundColor(ColorManager.purple1)
                           
                    Text("Fix this!")
                                 .font(.system(size: 50))
                                 .italic()
                                 .fontWeight(.regular)
                                 .multilineTextAlignment(.center)
                                 .foregroundColor(ColorManager.purple3)
                    VStack {
                 
                    
                    Spacer()
                        .frame(height: 50)
                    
                    Button(action: {
                        sessionManager.showLogin()
                    },
                        label: {
                            Text("Say something in Chat")
                                .fontWeight(.thin)
                                .frame(width: 310, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                    
                        Text("Get this OFF your chest!")
                                     .font(.system(size: 20))
                                     .fontWeight(.thin)
                                     .multilineTextAlignment(.center)
                                     .foregroundColor(Color.white)
                    VStack {
                                          
                        Spacer()
                            .frame(height: 20)
                        
                        NavigationLink(destination: FG_VideoCall(user: user, friends: friends, groups: groups), label: {
                                Text("Like some help w/ what to say?")
                                    .fontWeight(.thin)
                                    .frame(width: 310, height: 50)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 23))
                                    .background(ColorManager.purple5)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            })
                      
                        
                        
                        
                        Spacer()
                            .frame(height: 60)
                        
                        NavigationLink(destination: SomethingBuggingYou2(user: user, friends: friends), label: {
                                Text("Send Push Notification")
                                    .fontWeight(.thin)
                                    .frame(width: 310, height: 40)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 30))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            })
                        
                        Spacer()
                            .frame(height: 150)
                 
                        
                    }
                }
                
            }
            
        }
        
    }
    

}
}




