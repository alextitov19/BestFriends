//
//  FH9.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 7/7/23.
//

import Foundation
import SwiftUI

struct FH9: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
     let atmosphere: Atmosphere
     let friends: [User]
     let friendAtmospheres: [Atmosphere]
     let groups: [Group]
    
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
         
            Color.black
                .opacity(0.9)
                .ignoresSafeArea()
            
            AdPlayerView(name: "Planet4")
                .ignoresSafeArea()
                .blendMode(.screen)
            
                VStack {

                    
                       NavigationLink(
                           destination: ChangeChatBackgroundView(user: user),
                           label: {
                               Text("Customize \nChat Backgrounds")
                                   .fontWeight(.light)
                                   .frame(width: 280, height: 80)
                                   .foregroundColor(Color.white)
                                   .font(.system(size: 25))
                                   .background(Color.cyan)
                                   .cornerRadius(15)
                                   .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                   .opacity(0.5)
                           })
                    
                    ZStack {
                        
                        Image(systemName: "circle.fill")
                            .resizable()
                            .foregroundColor(Color.purple)
                            .frame(width: 550, height: 550)
                            .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                            .opacity(0.25)
                        
                        VStack {
                            Text("\nCREATING One-on-one Chat Rooms...Tap friend's planet, then this 'popup' to name room \n\nACCESSING one-on-one Chat Rooms...Tap friend's planet, then this 'popup' to enter")
                                .fontWeight(.medium)
                                .font(.system(size: 14))
                                .frame(width: 340, height: 265)
                                .padding(15)
                                .foregroundColor(.white)
                                .cornerRadius(20) .opacity(0.99)
                            
                        
                       
                            Text("CREATING Mulit-friend Chat Rooms...Tap ALL friend's planets one-at-a-time, then this 'popup' to name room (exit homepg / return to activate) \n\nACCESSING Multi-friend Chat Rooms...Use pullup Chat bubble at bottom of page")
                                .fontWeight(.medium)
                                .font(.system(size: 14))
                                .frame(width: 340, height: 265)
                                .padding(15)
                                .foregroundColor(.white)
                                .cornerRadius(20) .opacity(0.99)
                            
                        }
                        
                 
                
                        VStack {


                            Text("Build & Access")
                                .fontWeight(.medium)
                                .font(.system(size: 50))
                                .foregroundColor(.white)
                                .glow(color: ColorManager.purple4, radius: 3)
                                .opacity(0.15)


                            Text("Chat Rooms")
                                .fontWeight(.medium)
                                .font(.system(size: 50))
                                .foregroundColor(.white)
                                .glow(color: ColorManager.purple4, radius: 3)
                                .opacity(0.15)
              
                        }
                    }
                }

                            Spacer()
                                .frame(height: 90)
                  
                    }
                    
                }
                
            }
        
        
 















