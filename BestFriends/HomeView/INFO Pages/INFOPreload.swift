//
//  INFOPreload.swift
//  BestFriends
//
//  Created by Social Tech on 10/28/22.
//


import Foundation
import SwiftUI

struct INFOPreload: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
        let user: User
   
    
    var body: some View {
        
        VStack {
            
            
            ZStack {
                
                Color .black
                  .ignoresSafeArea()
                  .onAppear()
//                
//                Image("purpleBackground")
//                    .resizable()
//                    .ignoresSafeArea()
//                    .scaledToFill()

                AdPlayerView(name: "sky2")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                    .opacity(0.75)
                
                
                VStack {
   
                    Text("Building Resilient Friendships")
                        .font(.system(size: 35, weight: .bold))
                        .foregroundColor(ColorManager .purple3)
                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                        .opacity(0.50)
                        .multilineTextAlignment(.center)
                 
                    Spacer ()
                        .frame(height: 10)
                    
                    Text(".  .  .")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(ColorManager .grey1)
                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                        .opacity(0.50)
                        .multilineTextAlignment(.center)
                   
                    Spacer ()
                        .frame(height: 10)
                    
                    Text("Reducing \nFriendGroup Drama")
                        .font(.system(size: 35, weight: .bold))
                        .foregroundColor(ColorManager .purple3)
                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                        .opacity(0.50)
                        .multilineTextAlignment(.center)
                    
                    
                    
                    
                    ZStack{
               
 
                        
                            Spacer ()
                                .frame(height: 100)
                            
                            Text("5 \nminutes \ndaily")
                                .font(.system(size: 17))
                                .italic()
                                .foregroundColor(.white)
                                .fontWeight(.regular)
                                .multilineTextAlignment(.center)
                                .shadow(color: .black, radius: 1, x: 0, y: 1)
                           
                            Spacer ()
                                .frame(height: 30)
                          
                        VStack {

                            NavigationLink(destination:  EmptyView(), label: {
                                SomethingNiceCircle (color: ColorManager .purple2, friendName: "")
                            })

                        }
                    }
                   
                    VStack {
                        
                        
                        Spacer ()
                            .frame(height: 120)

                     
                        NavigationLink(
                            destination: INFOPreload2(user: user),
                            label: {
                                Text("Next")
                                    .fontWeight(.thin)
                                    .frame(width: 100, height: 30)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 25))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                            })
          
                        Spacer()
                            .frame(height: 20)
                      
                        
                        Text("All of us,")
                            .font(.system(size: 20))
                        
                            .foregroundColor(.white)
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                        
                        Text("(at the same time)")
                            .font(.system(size: 22))
                            .italic()
                            .foregroundColor(ColorManager .purple3)
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                        
//                        Spacer()
//                            .frame(height: 10)
//
                        Text("together in a safe, positive space")
                            .font(.system(size: 20))
                    
                            .foregroundColor(.white)
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                        
                        Spacer()
                            .frame(height: 75)
                        

                     
                        
                    }
                }
                
            }
        }
        
    }
}


