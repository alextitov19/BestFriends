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
                
                ZStack {
//        *************************************
                    
//                    NavigationLink(
//                        destination:  RR4(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
//                        label: {
//
//                            ZStack {
//
//                                Image("CoolGuy")
//                                    .aspectRatio(contentMode: .fit)
//                                    .frame(width: 35, height: 35)
//                                    .opacity(0.3)
//                                    .blinking(duration: 2.0)
//
//                                Text("First Time User (TAP)")
//                                    .fontWeight(.medium)
//                                    .frame(width: 170, height: 22)
//                                    .foregroundColor(Color.white)
//                                    .font(.system(size: 15))
//                                    .background(ColorManager .grey3)
//                                    .cornerRadius(7)
////                                                                .rotationEffect(.degrees(-38))
//                                    .opacity(0.35)
//                                    .blinking(duration: 3.0)
//                                    .shadow(color: ColorManager .purple3, radius: 2, x: 0, y: 3)
//
//
//                            }
//                        })
                
            
                    
                    
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
                
              
//                VStack {
//
//                    Link(destination: URL(string: "https://socialtechlabs.com/social-media-influencers/")!) {
//
//                        Text("Supportive social Influencers")
//                            .fontWeight(.thin)
//                            .frame(width: 320, height: 40)
//                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                            .font(.system(size: 25))
//                            .background(Color.cyan)
//                            .cornerRadius(10)
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//                    }
//                }
                
                
                Spacer()
                    .frame(height: 40)
                
            }
        }
    }
}


 
