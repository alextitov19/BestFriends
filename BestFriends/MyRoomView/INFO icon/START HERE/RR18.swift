//
//  RR18.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 8/18/23.
//


import Foundation
import SwiftUI

struct RR18: View {
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
            
            Color.gray
                .opacity(0.2)
                .ignoresSafeArea()
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            AdPlayerView(name: "girlSpace1")
                .ignoresSafeArea()
                .blendMode(.screen)
                .opacity(0.5)
            
            
            VStack {
                
                ZStack {
                    //                    Image("comicBubble")
                    //                        .resizable()
                    //                        .foregroundColor(Color.purple)
                    //                        .frame(width: 500, height: 300)
                    //                        .shadow(color: ColorManager .purple2, radius: 3, x: 3, y: 3)
                    //                        .rotationEffect(.degrees(-10))
                    //                        .opacity(0.95)
                    //                        .blinking(duration: 2.0).blinking(duration: 3.0)
                    //
                    //
                    VStack {
                        
                        VStack {
                            
                            Text("sharing excitment, \nlove & comfort")
                                .font(.system(size: 47))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .foregroundColor(ColorManager .grey2)
                                .rotationEffect(.degrees(-20))
                            //                                .blinking(duration: 3.0)
                                .shadow(color: Color.white, radius: 6, x: 3, y: 5)
                                .opacity(0.25)
                            
                            
                        }
                    }
                }
                
                ZStack {
                    
                    
                    Image(systemName: "heart")
                        .resizable()
                        .foregroundColor(Color.purple)
                        .frame(width: 450, height: 375)
                        .shadow(color: Color.white, radius: 5, x: 3, y: 5)
                        .opacity(0.2)
                    
                    VStack {
                        
                        Spacer()
                            .frame(height: 60)
                        
                        Text("closed network")
                            .font(.system(size: 17))
                            .foregroundColor(Color.white)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .opacity(0.7)
                        
                        
                        Text("w/ your 5 nobelest friends")
                            .font(.system(size: 24))
                            .foregroundColor(Color.white)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .opacity(0.7)
                        
                        
                        Spacer()
                            .frame(height: 50)
                        
                        Text("featuring")
                            .font(.system(size: 17))
                            .italic()
                            .foregroundColor(Color.white)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .opacity(0.7)
                        
                        Spacer()
                            .frame(height: 15)
                        
                        VStack {
                            
                            Text("CareHearts")
                                .font(.system(size: 72))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.white)
                                .blinking(duration: 3.0)
                                .opacity(0.5)
                            
                            
                            Text("&")
                                .font(.system(size: 30))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.white)
                                .blinking(duration: 3.0)
                                .opacity(0.5)
                            
                            Text("Off Planet")
                                .font(.system(size: 65))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.white)
                                .blinking(duration: 3.0)
                                .opacity(0.5)
                            
                            Spacer()
                                .frame(height: 60)
                            
                            ZStack {
                                
                                NavigationLink(
                                    destination:  RR58(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                    label: {
                                        VStack {
                                            Text("uniquenly different  >>>")
                                                .fontWeight(.light)
                                                .frame(width: 300, height: 40)
                                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                                .font(.system(size: 25))
                                                .background(Color.cyan)
                                                .cornerRadius(15)
                                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                            
                                            //                                        Text("It's Cute")
                                            //                                            .fontWeight(.thin)
                                            //                                            .italic()
                                            //                                            .font(.system(size: 25))
                                            //                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                            Text("It's sort of like teachers giving out")
                                                .fontWeight(.light)
                                                .italic()
                                                .font(.system(size: 15))
                                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                            Text("cupcakes instead of grades")
                                                .fontWeight(.light)
                                                .italic()
                                                .font(.system(size: 15))
                                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        }
                                    }
                                )}
//
//                                                        VStack {
//
//                                                            Button(action: {
//                                                                sessionManager.showLogin()
//                                                            },
//                                                                   label: {
//                                                                Image("home-alt2")
//                                                                    .frame(width: 60, height: 30)
//                                                                    .foregroundColor(.black)
//                                                                    .font(.system(size: 20))
//                                                                    .background(ColorManager .grey3)
//                                                                    .cornerRadius(15)
//                                                                    .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
//                                                                    .opacity(0.70)
//
//                                                            })
//                                                        }
                        }
                    }
                    
                    
                    
                    
                    
                    
                    Spacer()
                        .frame(height: 40)
                    
                }
            }
        }
    }
}

        



















