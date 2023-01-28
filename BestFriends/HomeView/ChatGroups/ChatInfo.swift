//
//  ChatInfo.swift
//  BestFriends
//
//  Created by Social Tech on 10/6/22.
//

import Foundation
import SwiftUI


struct ChatInfo: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
   let user: User

//
    var body: some View {
        ZStack {
            ColorManager.purple1
                .ignoresSafeArea()
                .onAppear()
            
//            Image("purpleBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
//               .blendMode(.screen)

            
            VStack {
         
                Text("Chat Rooms")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundColor(ColorManager .grey1)
                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                    .opacity(0.50)
                    .multilineTextAlignment(.center)

                

            
                
            VStack {
                    
            
                Spacer()
                    .frame(height: 30)
            
                    VStack {
                        NavigationLink(
                            destination: CreateChatRooms(user: user),
                            label: {
                                Text("Creating NEW Chat rooms")
                                    .fontWeight(.thin)
                                    .frame(width: 310, height: 30)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 25))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                            })
                        
                       
                        
                        
                        Spacer()
                            .frame(height: 15)
                        
                        NavigationLink(
                            destination: SafeChat(user: user),
                            label: {
                                Text("Super 'Safe / Private' Chat")

                                    .fontWeight(.thin)                                    .frame(width: 310, height: 30)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 25))
                                    .background(ColorManager.grey2)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                            })
                        

                        
                        Spacer()
                            .frame(height: 15)
                        
                        
                        NavigationLink(
                            destination: HowChatWorks(user: user),
                            label: {
                                Text("Inside Chat")
                                    .fontWeight(.thin)
                                    .frame(width: 310, height: 30)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 25))
                                    .background(ColorManager.pmbc_blue)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                            })
                        
                        
                        Spacer()
                            .frame(height: 15)
                        
                        
                        NavigationLink(
                            destination: ChangeChatBackgroundView(user: user),
                            label: {
                                Text("Customize Background")
                                    .fontWeight(.thin)
                                    .frame(width: 310, height: 30)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 25))
                                    .background(ColorManager.purple2)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                            })
                        
                        Spacer()
                            .frame(height: 15)
                        
                        
                        NavigationLink(
                            destination: ComingChat(user: user),
                            label: {
                                Text("Coming in 2023")
                                    .fontWeight(.thin)
                                    .frame(width: 310, height: 30)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 25))
                                    .background(ColorManager.orange3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                            })
                        Spacer()
                            .frame(height: 70)
                
                    }
                }
                
            }
}
    }
}
        
    
    
