//
//  RR51.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 10/29/23.
//


import Foundation
import SwiftUI

struct RR51: View {
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
            
            //            Color.black
            //                .opacity(0.9)
            //                .ignoresSafeArea()
            //
            //            AdPlayerView(name: "sky2")
            //                .ignoresSafeArea()
            //                .blendMode(.screen)
            
            Image("BuiltByTeens 1")
                .resizable()
                .ignoresSafeArea()
                .onAppear()
            
     
            
            VStack {
                
                ZStack {
//        *************************************
                    
                    NavigationLink(
                        destination:  RR4(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                        label: {
                            
                            ZStack {
                                
                                Image("CoolGuy")
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 35, height: 35)
                                    .opacity(0.3)
                                    .blinking(duration: 2.0)
                                
                                Text("First Time User (TAP)")
                                    .fontWeight(.medium)
                                    .frame(width: 170, height: 22)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 15))
                                    .background(ColorManager .grey3)
                                    .cornerRadius(7)
//                                                                .rotationEffect(.degrees(-38))
                                    .opacity(0.35)
                                    .blinking(duration: 3.0)
                                    .shadow(color: ColorManager .purple3, radius: 2, x: 0, y: 3)

                     
                            }
                        })
                
            
                    
                    
//         ********************************************
                    
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(Color.purple)
                        .frame(width: 500, height: 500)
                        .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                        .opacity(0.95)
                    
                    VStack {
                        
                        Text("Designed by over 150 \nteens worldwide")
                            .font(.system(size: 20))
                            .italic()
                            .foregroundColor(Color.white)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .opacity(0.7)
                        
                        HStack {
                            NavigationLink(
                                destination:   SettingsView(user: user, friends: friends, atmosphere: atmosphere),
                                label: {
                                    
                                    ZStack {
                                        Text("Settings")
                                            .fontWeight(.light)
                                            .frame(width: 200, height: 40)
                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                            .font(.system(size: 25))
                                            .background(Color.cyan)
                                            .cornerRadius(10)
                                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                        
                                        
                                    }
                                })
                           
//  ***********************************
                            
                            
                            ZStack {
                                
                                Image("comicBubble")
                                    .resizable()
                                    .foregroundColor(ColorManager .orange3)
                                    .frame(width: 130, height: 90)
                                    .shadow(color: ColorManager .purple1, radius: 3, x: 3, y: 3)
                                    .rotationEffect(.degrees(-10))
                                    .blinking(duration: 2.0)
                                    .opacity(0.7)
                                
                                VStack {
                                    
                                    Link(destination: URL(string: "https://docs.google.com/forms/d/e/1FAIpQLSeR-uflz8Y3slsu8utnYIoN9QPKL4Dx6-sOh6r30Y8yB5I5VQ/viewform")!) {
                                        
                                        
                                        
                                        Text("your \nfeedback")
                                            .font(.system(size: 12))
                                            .fontWeight(.light)
                                            .multilineTextAlignment(.center)
                                            .rotationEffect(.degrees(-10))
                                            .blinking(duration: 2.0)
                                            .foregroundColor(ColorManager .grey2)
                                        
                                  
                                        
                                    }
                                }
                                }
                            
                            
                            
//**********************************************************
                            
                        }
                        Spacer()
                            .frame(height: 30)
                        
                        Text("Let the outside of you")
                            .font(.system(size: 35))
                            .foregroundColor(Color.white)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .opacity(0.99)
                     
                        Text("match the inside of you")
                            .font(.system(size: 37))
                            .foregroundColor(Color.white)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .opacity(0.90)
                        

                        
                        VStack {
                            NavigationLink(
                                destination:  RR36Info(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                label: {

                                    ZStack {
                                        Text("Quick Setup")
                                            .fontWeight(.light)
                                            .frame(width: 200, height: 40)
                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                            .font(.system(size: 25))
                                            .background(Color.cyan)
                                            .cornerRadius(10)
                                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)


                                    }
                                })
                            
                   
                            
                            Spacer()
                                .frame(height: 5)
                            
                            
                            Text("- protected & non-toxic")
                                .font(.system(size: 20))
                                .italic()
                                .foregroundColor(Color.white)
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .opacity(0.7)
                            
                            
                            Text("- no likes, profiles or comments")
                                .font(.system(size: 20))
                                .italic()
                                .foregroundColor(Color.white)
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .opacity(0.7)
                            
                            
                            Text("shelter from the storm ")
                                .font(.system(size: 25))
                                
                                .foregroundColor(Color.white)
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .opacity(0.7)
                            
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
                                        .background(ColorManager .grey4)
                                        .cornerRadius(15)
                                        .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                                        .opacity(0.70)
                                    
                                })
                            }
                        }
                    }
                }
                
              
                VStack {
                    
                    Link(destination: URL(string: "https://socialtechlabs.com/social-media-influencers/")!) {
                        
                        Text("Supportive social Influencers")
                            .fontWeight(.thin)
                            .frame(width: 320, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 25))
                            .background(Color.cyan)
                            .cornerRadius(10)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                    }
                }
                
                
                Spacer()
                    .frame(height: 40)
                
            }
        }
    }
}


 
