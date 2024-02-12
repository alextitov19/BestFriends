//
//  FH2.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 7/7/23.
//





import Foundation
import SwiftUI

struct FH2: View {
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
        //        ScrollView {
        
        ZStack {
            
            Color.black
                .opacity(0.9)
                .ignoresSafeArea()
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            
            VStack {
                
                ZStack {
                    Image("comicBubble")
                        .resizable()
                        .foregroundColor(Color.purple)
                        .frame(width: 430, height: 200)
                        .shadow(color: ColorManager .purple2, radius: 3, x: 3, y: 3)
                        .rotationEffect(.degrees(-10))
                        .opacity(0.95)
                        .blinking(duration: 2.0).blinking(duration: 3.0)
                    
                    
                    VStack {
                        
                        VStack {
                            
                            
                            
                            Text("Friends nowhere to be found")
                                .font(.system(size: 25))
                                .fontWeight(.regular)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.cyan)
                                .rotationEffect(.degrees(-10))
                                .blinking(duration: 2.0)
                            
                            
                            //                            Text("No feelings of...")
                            //                                .font(.system(size: 15))
                            //                                .italic()
                            //                                .fontWeight(.light)
                            //                                .multilineTextAlignment(.leading)
                            //                                .rotationEffect(.degrees(-10))
                            //                                .foregroundColor(Color.white)
                            //                                .blinking(duration: 2.0)
                            
                            
                            Text("We got you")
                                .font(.system(size: 20))
                                .fontWeight(.light)
                                .multilineTextAlignment(.leading)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color.white)
                                .blinking(duration: 2.0)
                            
                            
                        }
                    }
                }
                
                ZStack {
                    
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(Color.purple)
                        .frame(width: 450, height: 450)
                        .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                        .opacity(0.3)
                    
                    VStack {
                        
                        Text("AI visual aura")
                            .font(.system(size: 35))
                            .foregroundColor(Color.white)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .opacity(0.4)
                        
                        Spacer()
                            .frame(height: 10)
                        
                        Text("comming Q3:2024")
                            .font(.system(size: 27))
                            .italic()
                            .multilineTextAlignment(.center)
                            .opacity(0.4)
                        
                        
                        
                        Spacer()
                            .frame(height: 20)
                        
                        VStack {
                            
                            Link(destination: URL(string: "https://socialtechlabs.com/our-story-2/")!) {
                                
                                Text("We're here to help")
                                    .fontWeight(.thin)
                                    .frame(width: 240, height: 40)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 25))
                                    .background(Color.cyan)
                                    .cornerRadius(10)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                            }
                            
                            
                            Spacer()
                                .frame(height: 30)
                            
                            VStack {
                                
                                Button(action: {
                                    sessionManager.showLogin()
                                },
                                       label: {
                                    Image("home-alt2")
                                        .frame(width: 60, height: 30)
                                        .foregroundColor(.black)
                                        .font(.system(size: 20))
                                        .background(ColorManager .grey3)
                                        .cornerRadius(15)
                                        .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                                        .opacity(0.70)
                                    
                                })
                            }
                        }
                    }
                    
                  
                    Spacer()
                        .frame(height: 40)
                    
                }
            }
        }
    }
}

        


















