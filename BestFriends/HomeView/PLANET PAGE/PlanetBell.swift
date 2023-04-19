//
//  PlanetBell.swift
//  BestFriends
//
//  Created by Social Tech on 12/31/22.
//



import Foundation
import SwiftUI
import AVKit

struct PlanetBell: View {
    
    let user: User
    
    @EnvironmentObject var sessionManager: SessionManager
    
    
    var body: some View {
        
        ZStack {
            
            ColorManager .purple1
                .ignoresSafeArea()
                .onAppear()
            
            
            
            
            VStack {
                
               
                ZStack {
                    
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(ColorManager .purple1)
                        .frame(width: 400, height: 400)
                        .shadow(color: ColorManager .grey2, radius: 65, x: 30, y: 50)
                        .opacity(0.95)
                    
                    
                    
                    VStack {
                        
                        
                        Spacer ()
                            .frame(height: 80)
                        
                        Text("BF is designed for real-time interactions")
                            .foregroundColor(Color .green)
                            .font(.system(size: 20, weight: .light))
        //                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                            .opacity(0.90)
                        
                        Text("Turning OFF notifications significantly")
                            .foregroundColor(Color .green)
                            .font(.system(size: 20, weight: .light))
        //                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                            .opacity(0.90)
                        Text("reduces it's effectiveness")
                            .foregroundColor(Color .green)
                            .font(.system(size: 20, weight: .light))
        //                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                            .opacity(0.90)
                        
//
//                        Text("Received \nPush Notifiction")
//                            .font(.system(size: 30))
//                            .italic()
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(ColorManager.grey2)
//
//
//                        Button(action: {
//                            sessionManager.showLogin()
//                        },
//                               label: {
//                            Text("On Home Page")
//                                .frame(width: 150, height: 30)
//                                .foregroundColor(.white)
//                                .font(.system(size: 20))
//                                .background(ColorManager.grey4)
//                                .cornerRadius(10)
//                                .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
//                                .opacity(0.70)
//
//                        })
//
//
//                        Text("Tap friend's planet that sent notification")
//                            .italic()
//                            .font(.system(size: 20))
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(ColorManager.grey3)
//
//                        Spacer ()
//                            .frame(height: 25)
//
//                        Text("Tap appropriate button \nin dropdown menu")
//                            .italic()
//                            .font(.system(size: 20))
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(ColorManager.grey3)
//
//                        //                        Text("and send brief reason.")
//                        //                            .italic()
//                        //                            .font(.system(size: 20))
//                        //                            .fontWeight(.light)
//                        //                            .multilineTextAlignment(.center)
//                        //                            .foregroundColor(ColorManager.purple4)
//
//                        Spacer ()
//                            .frame(height: 25)
//
//                        Text("Re-tap friend's planet")
//                            .italic()
//                            .font(.system(size: 20))
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(ColorManager.grey3)
//
//                        Text("to hide dropdown menu")
//                            .italic()
//                            .font(.system(size: 20))
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(ColorManager.grey3)
//
                        
                            Spacer ()
                                .frame(height: 100)
                            
                            
                            
                        }
                    }
                }
            }
        }
        
    }
    

