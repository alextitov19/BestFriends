//
//  HorizonsPreload1.swift
//  BestFriends
//
//  Created by Social Tech on 8/23/22.
//


import Foundation
import SwiftUI
import AVKit


struct HorizonsPreload1: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    let user: User
    let atmosphere: Atmosphere
    
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    
    
    
//    let user: User
//    let friends: [User]
    
    var body: some View {
        ZStack {
//            ColorManager.grey4
//                .ignoresSafeArea()
//                .onAppear()
//
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
//            AdPlayerView(name: "Planet6")
//                .ignoresSafeArea()
//                .blendMode(.screen)
            
            AdPlayerView(name: "Dreams1")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            VStack {
           
              
                VStack {

                
                Text("chasing down")
                    .font(.system(size: 30))
                    .italic()
                    .foregroundColor(ColorManager.purple5)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    
                    Text("Our Dreams")
                        .font(.system(size: 50))
                        .foregroundColor(ColorManager.purple5)
                        .fontWeight(.thin)
                       .multilineTextAlignment(.center)
                    
                   
                    VStack {
                        Link(destination: URL(string: "https://socialtechlabs.com/dreams-we-dare-but-whisper/")!) {
                            
                            Text("Dreams we Dare but Whisper")
                                .fontWeight(.thin)
                                .frame(width: 310, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 25))
                                .background(ColorManager.pmbc_green)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        }
                        
                        Spacer()
                            .frame(height: 25)
//                        Text("just two things ...")
//                            .font(.system(size: 20))
//                            .italic()
//                            .foregroundColor(ColorManager.purple7)
//                            .fontWeight(.thin)
//                           .multilineTextAlignment(.center)
                        
                        
                        Text("action 1: START")
                            .font(.system(size: 30))
                            .foregroundColor(ColorManager.purple7)
                            .fontWeight(.thin)
                           .multilineTextAlignment(.center)
                        
                        Text("action 2: DON'T STOP")
                            .font(.system(size: 30))
                            .foregroundColor(ColorManager.purple7)
                            .fontWeight(.thin)
                           .multilineTextAlignment(.center)
                        
                        Spacer()
                            .frame(height: 15)
//
//
//                        Link(destination: URL(string: "https://socialtechlabs.com/twinkie-dreams/")!) {
//
//                            Text("Twinkie Dreams")
//                                .fontWeight(.thin)
//                                .frame(width: 310, height: 40)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .font(.system(size: 25))
//                                .background(ColorManager.pmbc_green)
//                                .cornerRadius(15)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                        }
//
                    
                    
                        
                        
                        VStack {
                        
                    Spacer()
                        .frame(height: 75)
                        
                       
                            
                            
                            
                            
                            
                       
//
//                            Text("Step 2: Love It")
//                                .font(.system(size: 40))
//                                .foregroundColor(ColorManager.purple5)
//                                .fontWeight(.thin)
//                               .multilineTextAlignment(.center)
//
//                            Text("Step 2: Don't Quit")
//                                .font(.system(size: 40))
//                                .foregroundColor(ColorManager.purple5)
//                                .fontWeight(.thin)
//                               .multilineTextAlignment(.center)
//
           
//                            
//                            
//                NavigationLink(destination: DreamVaultView(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres:  friendAtmospheres), label: {
//                        Text("My Dream Galaxy")
//                                .fontWeight(.thin)
//                                .frame(width: 310, height: 40)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .font(.system(size: 30))
//                                .background(ColorManager.purple3)
//                                .cornerRadius(15)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                                                        })
//                            
//             
                
                    Spacer()
                        .frame(height: 250)


               
                
                    }
                }
                
            }
            
        }
        
    }
}

}
