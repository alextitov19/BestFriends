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
   
    @State private var showItems: Bool = false
    @State private var offset: CGFloat = 200.0
    @State private var isLockTapped = false
    
    
    var body: some View {
        
        VStack {
            
            
            ZStack {
                
//                Color .black
//                  .ignoresSafeArea()
//                  .onAppear()
//                
                Image("purpleBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()

                AdPlayerView(name: "sky2")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                    .opacity(0.75)
                
                
//                ZStack{
                    
                    
                    
                    //                AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends),
                    
                  

                    
                      
                
                VStack {
   
                    Text("Building Resilient Friendships")
                        .font(.system(size: 33, weight: .bold))
                        .foregroundColor(ColorManager .purple1)
                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                        .opacity(0.50)
                        .multilineTextAlignment(.center)
                 
                    Spacer ()
                        .frame(height: 15)
                    
                    Text(".  .  .")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(ColorManager .grey1)
                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                        .opacity(0.50)
                        .multilineTextAlignment(.center)
                   
                    Spacer ()
                        .frame(height: 10)
                    
                    Text("Reducing \nFriendGroup Drama")
                        .font(.system(size: 36, weight: .bold))
                        .foregroundColor(ColorManager .purple1)
                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                        .opacity(0.50)
                        .multilineTextAlignment(.center)
                    
                    
                    
                    
                ZStack{
               
 
                        
                            Spacer ()
                                .frame(height: 100)
                           
                        
                    VStack {
                            Text("5 minutes \ndaily")
                                .font(.system(size: 17))
                            
                                .foregroundColor(.white)
                                .fontWeight(.regular)
                                .multilineTextAlignment(.center)
                                .shadow(color: .black, radius: 1, x: 0, y: 1)
                            
                            Text("TAP Here")
                                .font(.system(size: 20))
                                .italic()
                                .foregroundColor(.green)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .shadow(color: .black, radius: 1, x: 0, y: 1)
                            
                        }
                            
                            Spacer ()
                                .frame(height: 30)
                          
                        VStack {
//
//                            NavigationLink(destination:  INFOPreload2(user: user), label: {
//                                SomethingNiceCircle (color: ColorManager .purple2, friendName: "")
//                            })

                        }
                    }
                   
                    VStack {
                        
                        
                     
//
//
//                        NavigationLink(
//                            destination: INFOPreload2(user: user),
//                            label: {
//                                Text("Next")
//                                    .fontWeight(.thin)
//                                    .frame(width: 100, height: 30)
//                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                    .font(.system(size: 25))
//                                    .background(ColorManager.purple3)
//                                    .cornerRadius(15)
//                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//                            })
//
                        Spacer()
                            .frame(height: 50)
                      
                        
                        Text("all of us,")
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(ColorManager .purple3)
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                            .opacity(0.50)
                            .multilineTextAlignment(.center)
                        
                        Text("at same time,")
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(ColorManager .purple3)
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                            .opacity(0.50)
                            .multilineTextAlignment(.center)
                        

//
                        Text("together,")
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(ColorManager .purple3)
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                            .opacity(0.50)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                            .frame(height: 7)
                        
                        
                        Text("in a safe & positive space")
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(ColorManager .purple2)
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                            .opacity(0.50)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                            .frame(height: 75)
                        

                     
                        
                    }
                }
                
            }
        }
        
    }
}


