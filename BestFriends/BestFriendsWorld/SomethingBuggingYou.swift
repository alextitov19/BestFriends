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
                
         
                Spacer()
                    .frame(height:20)
                
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
                
              
                
                Text("that hurt?")
                             .font(.system(size: 25))
                             .italic()
                             .fontWeight(.thin)
                             .multilineTextAlignment(.center)
                             .foregroundColor(ColorManager.purple2)

                
                       Spacer()
                           .frame(height:20)
                
                
              
                Text("Did you do or say")
                    .font(.system(size: 25))
                    .italic()
                    .foregroundColor(ColorManager.purple2)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                
                Text("something not nice?")
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
                    
//                    Text("give you the courage")
//                                 .font(.system(size: 20))
//                                 .fontWeight(.thin)
//                                 .multilineTextAlignment(.center)
//                                 .foregroundColor(ColorManager.purple1)
                            
                Text("bugging you all week ...")
                             .font(.system(size: 20))
                             .fontWeight(.thin)
                             .multilineTextAlignment(.center)
                             .foregroundColor(ColorManager.purple1)
                           
               
//
//                    Text("so it can be fixed.")
//                                 .font(.system(size: 20))
//                                 .fontWeight(.thin)
//                                 .multilineTextAlignment(.center)
//                                 .foregroundColor(ColorManager.purple1)
//
                    VStack {
                 
                    
                    Spacer()
                        .frame(height: 40)
                    
                    Button(action: {
                        sessionManager.showLogin()
                    },
                        label: {
                            Text("Mention it in Chat")
                                .fontWeight(.thin)
                                .frame(width: 250, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                    
                    
                    VStack {
                                            Text("You got this!")
                                                         .font(.system(size: 20))
                                                         .fontWeight(.thin)
                                                         .multilineTextAlignment(.center)
                                                         .foregroundColor(Color.white)
                        Spacer()
                            .frame(height: 30)
                        
                        NavigationLink(destination: FG_VideoCall(user: user, friends: friends, groups: groups), label: {
                                Text("Like some help?")
                                    .fontWeight(.thin)
                                    .frame(width: 230, height: 40)
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




