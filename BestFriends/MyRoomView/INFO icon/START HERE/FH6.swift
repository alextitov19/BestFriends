//
//  FH6.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 7/7/23.
//


import Foundation
import SwiftUI

struct FH6: View {
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
            
            AdPlayerView(name: "Planet4")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            
            VStack {
               
                ZStack {
                    
                    Image("comicBubble")
                        .resizable()
                        .foregroundColor(Color.purple)
                        .frame(width: 430, height: 240)
                        .shadow(color: ColorManager .purple2, radius: 3, x: 3, y: 3)
                        .rotationEffect(.degrees(-10))
                        .opacity(0.95)
                    //                            .blinking(duration: 3.0)
                    
                    
                    VStack {
                        
                        VStack {
                            
                            
                            
                            Text("Planets")
                                .font(.system(size: 23))
                                .fontWeight(.regular)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.white)
                                .rotationEffect(.degrees(-10))
                                .blinking(duration: 2.0)
                            
                            Text("You're the center planet,")
                                .font(.system(size: 15))
                                .fontWeight(.light)
                                .multilineTextAlignment(.leading)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color.white)
                            //                                .blinking(duration: 5.0)
                            
                            Text("friends planet's orbit you.")
                                .font(.system(size: 15))
                                .fontWeight(.light)
                                .multilineTextAlignment(.leading)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color.white)
                            //                                .blinking(duration: 5.0)
                            Spacer()
                                .frame(height: 10)
                            
                            Text("Planet atmosphere color")
                                .font(.system(size: 15))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color.white)
                            
                            
                            Text("matches their 'Vibe'")
                                .font(.system(size: 15))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color.white)
                        }
                        
                        
                        
                        Spacer()
                            .frame(width: 100)
                        
                
                    }
                }
                
                ZStack {
                    
                    
                    
                    Spacer()
                        .frame(height: 70)
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(Color.purple)
                        .frame(width: 375, height: 375)
                        .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                        .opacity(0.5)
                    
                    VStack {
                        
                        
                        Spacer()
                            .frame(height: 40)
                        
                        
                        
                        Spacer()
                            .frame(height: 10)
                        
                        Text("No feelings of not")
                            .font(.system(size: 20))
                            .foregroundColor(ColorManager.grey1)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                        
                        Text("being good enough")
                            .font(.system(size: 20))
                            .foregroundColor(ColorManager.grey1)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                            .frame(height: 15)
                        
                        VStack {
                            
                            
                            Text("You're")
                                .fontWeight(.medium)
                                .font(.system(size: 50))
                                .foregroundColor(.white)
                                .glow(color: ColorManager.purple4, radius: 3)
                                .opacity(0.15)
                            
                            Text("Safe & Sound")
                                .fontWeight(.medium)
                                .font(.system(size: 50))
                                .foregroundColor(.white)
                                .glow(color: ColorManager.purple4, radius: 3)
                                .opacity(0.15)
                            
                            Spacer()
                                .frame(height: 15)
                            
                            Text("No FOMO")
                                .font(.system(size: 20))
                                .foregroundColor(ColorManager.grey1)
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                            
                            Spacer()
                                .frame(height: 20)
                            
                            Text("No comparisons")
                                .font(.system(size: 20))
                                .foregroundColor(ColorManager.grey1)
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                            
                            Spacer()
                                .frame(height: 20)
                            
                            //
                            //                        Text("(No 'likes' / 'comments'")
                            //                            .font(.system(size: 20))
                            //                            .foregroundColor(ColorManager.grey1)
                            //                            .fontWeight(.light)
                            //                            .multilineTextAlignment(.center)
                            
                            VStack {
                                
                                
                                Link(destination: URL(string: "https://socialtechlabs.com/our-story/")!) {
                                    
                                    Text("Our Story")
                                        .fontWeight(.thin)
                                        .frame(width: 200, height: 40)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 25))
                                        .background(ColorManager.pmbc_green)
                                        .cornerRadius(15)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                }
                            }
                            
                        }
                    }
                }
                
                
                
                
                
                VStack {
                    
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
                    
                    Spacer()
                        .frame(height: 40)
                    
                }
                
            }
            
        }
        
    }
    
}




//
//************ Our Story ***********************************
//
//
//HStack {
//
//ZStack {
//
//Image(systemName: "circle")
//.resizable()
//.scaledToFit()
//.frame(width: 65, height: 65)
//.foregroundColor(Color .purple)
//.glow(color: ColorManager.purple4, radius: 3)
//.blinking(duration: 2.0)
//
//NavigationLink(destination: BuiltByTeensView(user: user, friends: friends),
//           label: {
//Text("tap")
//    .foregroundColor(Color.white)
//    .frame(width: 40, height: 40)
//    .multilineTextAlignment(.center)
//    .font(.system(size: 16))
////                                   .padding(10)
//    .background(Color.gray)
//    .cornerRadius(50)
//    .glow(color: Color.white, radius: 20)
//    .shadow(color: Color.white, radius: 2, x: 2, y: 2)
//    .blinking(duration: 2.0)
//})
//}
//
//ZStack {
//
//
//Image("comicBubble")
//.resizable()
//.foregroundColor(Color.purple)
//.frame(width: 170, height: 120)
//.shadow(color: ColorManager .purple3, radius: 3, x: 3, y: 3)
//.opacity(0.5)
//
//VStack {
//
//Text("Our")
//    .font(.system(size: 17))
//    .fontWeight(.light)
//    .multilineTextAlignment(.center)
//    .foregroundColor(Color.white)
//
//Text("Story")
//    .font(.system(size: 17))
//    .fontWeight(.light)
//    .multilineTextAlignment(.center)
//    .foregroundColor(Color.white)
//}
//}
//
//
//
//
//
//
//
//
//
//
//
//
//
