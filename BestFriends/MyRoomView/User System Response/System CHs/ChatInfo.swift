//
//  ChatInfo.swift
//  BestFriends
//
//  Created by Social Tech on 10/6/22.
//
//
import Foundation
import SwiftUI


struct ChatInfo: View {
    
        @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    
    //
    var body: some View {
        ZStack {
            ColorManager .grey4
                .opacity(0.9)
                .ignoresSafeArea()
            
            AdPlayerView(name: "Fireworks2")
                .ignoresSafeArea()
                .blendMode(.screen)
                .opacity(0.9)
            
            
            
            VStack {
                

                VStack {
                    
                    VStack {
                        
                        ZStack {
                            Image("comicBubble")
                                .resizable()
                                .foregroundColor(Color.purple)
                                .frame(width: 600, height: 300)
                                .shadow(color: ColorManager .purple2, radius: 3, x: 3, y: 3)
                                .rotationEffect(.degrees(-10))
                                .opacity(0.5)
//                                .blinking(duration: 2.0).blinking(duration: 3.0)
                            
                            
                            VStack {
                                
                              
                                
                                Text("We're not sure what you did")
                                    .font(.system(size: 30))
                                    .fontWeight(.regular)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color.white)
                                    .rotationEffect(.degrees(-10))
//                                    .blinking(duration: 2.0)
                                
                                Text("BUT...")
                                    .font(.system(size: 30))
                                    .fontWeight(.regular)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color.white)
                                    .rotationEffect(.degrees(-10))
//                                    .blinking(duration: 2.0)
                                
                          
                            }
                        }
                        
                        
                        Spacer()
                            .frame(height: 200)
                        
                        Text("CONGRATULATIONS!!!")
                            .font(.system(size: 35))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.white)
//                            .rotationEffect(.degrees(-10))
                            .blinking(duration: 1.0)
                        
                        Text("YEP, YOU DID IT!!!")
                            .font(.system(size: 35))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.white)
//                            .rotationEffect(.degrees(-10))
                            .blinking(duration: 2.0)
                        
                        Text("NICE JOB!!!")
                            .font(.system(size: 35))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.white)
//                            .rotationEffect(.degrees(-10))
                            .blinking(duration: 3.0)
                        
                        Text("YES, YES, YES")
                            .font(.system(size: 35))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.white)
//                            .rotationEffect(.degrees(-10))
                            .blinking(duration: 4.0)
                    }
                    
                    VStack {
                        
                        Button(action: {
                            sessionManager.showLogin()
                        },
                               label: {
                            Image("home-alt2")
                                .frame(width: 50, height: 25)
                                .foregroundColor(.white)
                                .font(.system(size: 20))
                                .background(ColorManager .grey2)
                                .cornerRadius(15)
                                .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                                .opacity(0.70)
                            
                        })
                        
                   
                            Spacer()
                                .frame(height: 200)
                            
                        }
                    }
                    
                }
            }
        }
    }

    
    
