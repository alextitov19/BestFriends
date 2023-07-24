//
//  FH3.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 7/7/23.
//


import Foundation
import SwiftUI

struct FH3: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    @State private var selectedFriends: [String] = []
    @State private var colors: [Color] = [ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3]
    @State private var shareColor = ColorManager.purple5
    @State private var showingAlert = false
    
    @State private var counter = 0
    
    @State private var mood: Int = -1
    @State private var summary = ""
    @State private var sharedWith: [String] = []
    @State private var colorChangeTap: String = ""
    @State private var shareTapped: Bool = false
    
    var body: some View {
      
        
        ZStack {
          
            Image("CareHeartBalloon 1")
                .ignoresSafeArea()
                .scaledToFit()
                .opacity(0.8)
            

                VStack {
                    
                    ZStack {
                        
                        Spacer()
                            .frame(height: 70)
                        
                        Image(systemName: "circle.fill")
                            .resizable()
                            .foregroundColor(Color.purple)
                            .frame(width: 375, height: 375)
                            .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                            .opacity(0.9)
                        VStack {
                            
                            
                            Spacer()
                                .frame(height: 70)
                            
                            Text("Stay connected to your friends")
                                .font(.system(size: 25))
                                .foregroundColor(ColorManager .grey1)
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                            
                            
                            
                            Spacer()
                                .frame(height: 15)
                            
                            Text("real-time")
                                .font(.system(size: 35))
                                .foregroundColor(ColorManager .grey1)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                            Spacer()
                                .frame(height: 15)
                            
                            
                            Text("when notifications are turned on")
                                .font(.system(size: 20))
                                .foregroundColor(ColorManager .grey1)
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                            
                            Text("for BestFriends app")
                                .font(.system(size: 20))
                                .foregroundColor(ColorManager .grey1)
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                            
                            Spacer()
                                .frame(height: 90)
                            
  
                        }
                        
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
                            .frame(height: 40)
                        
                    }
                    
                }
                
            }
            
        }
    }

