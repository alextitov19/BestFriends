//
//  TextingFirst.swift
//  BestFriends
//
//  Created by Social Tech on 4/28/22.
//

import Foundation
import SwiftUI


struct Step6_TextingFirst: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    
    var body: some View {
        ZStack {
            
            
            
            ColorManager.grey2
                .ignoresSafeArea()
            
            
            
            VStack {
                
//                Text("Ok, I am ready to try to")
//                    .font(.system(size: 35, weight: .ultraLight))
//                    .foregroundColor(Color.purple)
//
//                Text("fix this mess")
//                    .font(.system(size: 40, weight: .ultraLight))
//                    .foregroundColor(Color.purple)
//
//                Spacer()
//                    .frame(height: 20)
                
                
                Text("Not exactly sure what to say")
                    .font(.system(size: 20, weight: .thin))
                    .italic()
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 15)
                
                VStack {
                    Link(destination: URL(string: "https://socialtechlabs.com/applink/")!) {
                        
                        Text("Here are some ideas")
                            .fontWeight(.thin)
                            .frame(width: 310, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.pmbc_blue)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    }
                    
                    Spacer()
                        .frame(height: 90)
                    
                    
                    
                    Text("Shoot them a text in Chat")
                        .font(.system(size: 35, weight: .ultraLight))
                        .foregroundColor(Color.purple)
                     
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                        .frame(height: 10)
                    
                    Button(action: {
                        sessionManager.showLogin()
                    },
                           label: {
                        Image("home-alt2")
                            .frame(width: 50, height: 25)
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .background(ColorManager .grey3)
                            .cornerRadius(15)
                            .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                            .opacity(0.70)
                        
                    })
                    
                    
                    VStack {
                        Spacer()
                            .frame(height: 80)
                        
                        Text("Let's make sure")
                            .font(.system(size: 20, weight: .thin))
                            .italic()
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                        
                        
                        Text("they see your message.")
                            .font(.system(size: 20, weight: .thin))
                            .italic()
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                        
                     
                            
                            VStack {
                                
                                NavigationLink(
                                    
                                    destination: Step2_FightLandingView(user: user, friends: friends),
                                    label: {
                                        Text("Send push notification")
                                            .fontWeight(.thin)
                                            .foregroundColor(Color.white)
                                            .frame(width: 310, height: 40)
                                            .font(.system(size: 25))
                                            .background(ColorManager.purple3)
                                            .cornerRadius(15)
                                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                        
                                    }
                                )}
                            
                        Text("And you get a read-receipt")
                            .font(.system(size: 20, weight: .thin))
                            .italic()
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                        
                        
                        
                        
                            Spacer()
                                .frame(height: 25)
                            
                            
                            
                            
                            
                            Spacer()
                                .frame(height: 150)
                            
                            //                        Text("While waiting for a reply")
                            //                        .font(.system(size: 30, weight: .thin))
                            //                        .foregroundColor(Color.white)
                            //                        .multilineTextAlignment(.center)
                            //
                            //
                            //                        Spacer()
                            //                            .frame(height: 20)
                            //                    }
                            //
                            //                }
                            //
                            //                VStack {
                            //
                            //                    NavigationLink(
                            //                        destination: TryThis(),
                            //                        label: {
                            //                            Text("Try These")
                            //                                .fontWeight(.thin)
                            //                                .foregroundColor(Color.white)
                            //                                .frame(width: 150.0, height: 40)
                            //                                .font(.system(size: 30))
                            //                                .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
                            //                                .cornerRadius(15)
                            //                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            //
                            //                        }
                            //                    )}
                            //                Spacer()
                            //                    .frame(height: 40)
                            //
                            //                VStack {
                            //
                            //                    NavigationLink(
                            //                        destination: Step7_TimeToTalk(),
                            //                        label: {
                            //                            Text("Who is Fight with?")
                            //                                .fontWeight(.thin)
                            //                                .frame(width: 300, height: 40)
                            //                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            //                                .font(.system(size: 30))
                            //                                .background(ColorManager.purple3)
                            //                                .cornerRadius(15)
                            //                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            //
                            //
                            //
                            //                        })
                            //
                            //
                            
                            
                        }
                        
                    }
                }
                
            }
        }
        
    }
    





