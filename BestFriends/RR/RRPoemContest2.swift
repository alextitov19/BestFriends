//
//  RRPoemContest2.swift
//  BestFriends
//
//  Created by Social Tech on 1/30/24.
//



import Foundation
import SwiftUI

struct RRPoemContest2: View {
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
            
            //            Image("BuiltByTeens 1")
            //                .resizable()
            //                .ignoresSafeArea()
            //                .onAppear()
            
            
            
            VStack {
                
                VStack {
                    
                    
                    Text("Two souls whose stories forever")
                        .font(.system(size: 12))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                        .rotationEffect(.degrees(-20))
                    //                            .blinking(duration: 3.0)
                        .shadow(color: ColorManager .grey3, radius: 0.7, x: 0.5, y: 0.5)
                        .opacity(0.9)
                    
                    Text("etched in the laugh lines and")
                        .font(.system(size: 12))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                        .rotationEffect(.degrees(-20))
                    //                            .blinking(duration: 3.0)
                        .shadow(color: ColorManager .grey3, radius: 0.7, x: 0.5, y: 0.5)
                        .opacity(0.9)
                    
                    Text("dreams swiriling behind their eyes.")
                        .font(.system(size: 12))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                        .rotationEffect(.degrees(-20))
                    //                            .blinking(duration: 3.0)
                        .shadow(color: ColorManager .grey3, radius: 0.7, x: 0.5, y: 0.5)
                        .opacity(0.9)
                    
                    
                    Text("-- Thays from Brazil")
                        .font(.system(size: 10))
                        .italic()
                        .fontWeight(.bold)
                        .italic()
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                        .rotationEffect(.degrees(-20))
                    //                            .blinking(duration: 3.0)
                        .shadow(color: ColorManager .grey3, radius: 0.7, x: 0.5, y: 0.5)
                        .opacity(0.9)
                    
                    Spacer ()
                        .frame(width: 100)
                    
                 Spacer ()
                        .frame(height: 30)
                    
                    
                    ZStack {
                        //        *************************************
                        
                        
                        
                        //         ********************************************
                        
                        
                        Image(systemName: "circle.fill")
                            .resizable()
                            .foregroundColor(Color.purple)
                            .frame(width: 450, height: 450)
                            .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                            .opacity(0.95)
                        
                        VStack {
                            
                            //                        Text("Designed by over 150 \nteens worldwide \nso you can let")
                            //                            .font(.system(size: 20))
                            //                            .italic()
                            //                            .foregroundColor(Color.white)
                            //                            .fontWeight(.light)
                            //                            .multilineTextAlignment(.center)
                            //                            .opacity(0.7)
                            //
                            //                        Spacer()
                            //                            .frame(height: 20)
                            
                            Text("Submit your romantic poems to:")
                                .font(.system(size: 25))
                                .foregroundColor(Color.white)
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .opacity(0.99)
                            
                            
                            
                            VStack {
                                //                            NavigationLink(
                                //                                destination:  RR4(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                //                                label: {
                                //
                                //                                    ZStack {
                                //
                                //                                        Image("CoolGuy")
                                //                                            .aspectRatio(contentMode: .fit)
                                //                                            .frame(width: 35, height: 35)
                                //                                            .opacity(0.9)
                                //            //                                .blinking(duration: 2.0)
                                //
                                //                                        Text("First Time User (TAP)")
                                //                                            .fontWeight(.medium)
                                //                                            .frame(width: 170, height: 22)
                                //                                            .foregroundColor(Color.white)
                                //                                            .font(.system(size: 15))
                                //                                            .background(ColorManager .grey3)
                                //                                            .cornerRadius(7)
                                //                                            .rotationEffect(.degrees(-38))
                                //                                            .opacity(0.7)
                                //            //                                .blinking(duration: 3.0)
                                //                                            .shadow(color: ColorManager .purple3, radius: 2, x: 0, y: 3)
                                //
                                //
                                //                                    }
                                //                                })
                                
                                
                                
                                Text("admin@YesTech.tech")
                                    .font(.system(size: 37))
                                    .foregroundColor(Color.white)
                                    .fontWeight(.light)
                                    .multilineTextAlignment(.center)
                                    .opacity(0.90)
                                
                                Spacer()
                                    .frame(height: 10)
                                
                                
                                Text("- you retain copyright to poem")
                                    .font(.system(size: 15))
                                    .italic()
                                    .foregroundColor(Color.white)
                                    .fontWeight(.light)
                                    .multilineTextAlignment(.center)
                                    .opacity(0.7)
                                
                                Text("- each month's winner is ONLY posted")
                                    .font(.system(size: 15))
                                    .italic()
                                    .foregroundColor(Color.white)
                                    .fontWeight(.light)
                                    .multilineTextAlignment(.center)
                                    .opacity(0.7)
                                
                                Text("on the previous page")
                                    .font(.system(size: 15))
                                    .italic()
                                    .foregroundColor(Color.white)
                                    .fontWeight(.light)
                                    .multilineTextAlignment(.center)
                                    .opacity(0.7)
                                
                                Text("- all users can view the poems")
                                    .font(.system(size: 15))
                                    .italic()
                                    .foregroundColor(Color.white)
                                    .fontWeight(.light)
                                    .multilineTextAlignment(.center)
                                    .opacity(0.7)
                                
                                
                                
                                
                                
                                Spacer()
                                    .frame(height: 10)
                                
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
                    
                    
                    
                    HStack {
                        
                        Spacer ()
                            .frame(width: 100)
                        
                        ZStack {
                            Image(systemName: "heart.fill")
                                .resizable()
                                .foregroundColor(ColorManager .grey2)
                                .frame(width: 140, height: 110)
                                .shadow(color: ColorManager .grey1, radius: 3, x: 3, y: 3)
                                .rotationEffect(.degrees(-10))
                                .opacity(0.4)
                            
                            
                            
                            Image(systemName: "heart.fill")
                                .resizable()
                                .foregroundColor(ColorManager .grey2)
                                .frame(width: 150, height: 120)
                                .shadow(color: ColorManager .grey1, radius: 3, x: 3, y: 3)
                                .rotationEffect(.degrees(-10))
                                .opacity(0.3)
                            
                            //                        Link(destination: URL(string: "https://socialtechlabs.com/a-kisses-journey/")!) {
                            
                            VStack {
                                Text("Feb 2024 WINNER")
                                    .font(.system(size: 12))
                                    .fontWeight(.light)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color .black)
                                    .rotationEffect(.degrees(-10))
                                    .opacity(0.99)
                                
                                Text("submit your \npoem now")
                                    .font(.system(size: 17))
                                    .fontWeight(.light)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(ColorManager .grey4)
                                    .rotationEffect(.degrees(-10))
                                    .opacity(0.99)
                                
                                //                            }
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

 
