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
            
            AdPlayerView(name: "background_9")
                .ignoresSafeArea()
                .blendMode(.screen)
 

            VStack {
                
                HStack {
                    
                    VStack {
                        
                        ZStack {
                            
                            
                            NavigationLink( destination:  RR17(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                            label: {
                                Text("Leaving \nSafe-zone")
                                    .fontWeight(.bold)
                                    .frame(width: 300, height: 42)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 16))
                                    .background(Color.orange)
                                    .glow(color: ColorManager.purple1, radius: 1)
                                    .shadow(color: .white, radius: 3, x: -4, y: 4)
                                    .opacity(0.75)
                                    .cornerRadius(15)
                                    .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                                    .opacity(0.99)
                            })
                            
                            
                            HStack {
                                ZStack {
                                    
                                    Image(systemName: "heart.fill")
                                        .resizable()
                                        .foregroundColor(ColorManager.orange3)
                                        .frame(width: 80, height: 60)
                                        .rotationEffect(.degrees(-7))
                                        .shadow(color: .white, radius: 2, x: -2, y: 2)
                                        .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                                        .opacity(0.6)
                                    
                                    
                                    Link(destination: URL(string: "https://socialtechlabs.com/social-media-influencers/")!) {
                                        
                                        Text("supportive \ninfluencers")
                                            .fontWeight(.light)
                                            .foregroundColor(Color.black)
                                            .font(.system(size: 11))
                                            .rotationEffect(.degrees(-7))
                                            .opacity(0.85)
                                        
                                    }
                                }
                              
                                Spacer ()
                                    .frame(width: 130)
                                
        //                        ****************************************************************
                                ZStack {
                                    
                                    Image(systemName: "heart.fill")
                                        .resizable()
                                        .foregroundColor(ColorManager.orange3)
                                        .frame(width: 80, height: 60)
                                        .rotationEffect(.degrees(7))
                                        .shadow(color: .white, radius: 2, x: -2, y: 2)
                                        .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                                        .opacity(0.6)
                                    
                                    
                                    NavigationLink( destination: CH20(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                                    label: {
                                        Text("Accessorizing")
                                            .fontWeight(.light)
                                            .foregroundColor(Color.black)
                                            .font(.system(size: 9))
                                            .rotationEffect(.degrees(7))
                                            .opacity(0.85)
                                        
                                    })
                                    
                                }
                                
                                
//                                        Spacer ()
//                                            .frame(width: 180)
                                
                            }
                        }
                        
                        Spacer ()
                            .frame(width: 400)
                        
                    }
                }
              
 
                ZStack {
                    
//                    Spacer()
//                        .frame(height: 70)
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(Color.purple)
                        .frame(width: 375, height: 375)
                        .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                        .opacity(0.5)
                    
                    VStack {
                        
                        
                        Spacer()
                            .frame(height: 40)
                        
                        Text("BestFriendsNetwork")
                            .font(.system(size: 27))
                            .foregroundColor(ColorManager.grey1)
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                        
                        Text("where you can ...")
                            .font(.system(size: 19))
                               .italic()
                            .foregroundColor(ColorManager.grey1)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                        
                        
                        
                        
                        Spacer()
                            .frame(height: 20)
                        
                        Text("let the outside of you")
                            .font(.system(size: 22))
                            .foregroundColor(Color.white)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                        
                        Text("match the inside of you")
                            .font(.system(size: 22))
                            .foregroundColor(Color.white)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                        
                        Text("on a 'closed' friend network")
                            .font(.system(size: 22))
                            .foregroundColor(Color.white)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                    
                        
                        
                        Spacer()
                            .frame(height: 20)
              
                        Text("in a safe,")
                            .font(.system(size: 19))
                               .italic()
                            .foregroundColor(ColorManager.grey1)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                        
                        Text("non-toxic environment")
                            .font(.system(size: 19))
                               .italic()
                            .foregroundColor(ColorManager.grey1)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                    }
                    
                }
                VStack {
                    
                    Spacer()
                        .frame(height: 30)
                    
                    
                    
                    NavigationLink(
                        destination:  FH10(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                        label: {
                            Text("->")
                                .fontWeight(.thin)
                                .foregroundColor(Color.white)
                                .frame(width: 40, height: 40)
                                .font(.system(size: 30))
                                .background(ColorManager .grey2)
                                .opacity(0.95)
                                .cornerRadius(5)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        }
                        
                    )}
                
                
                
                
                Spacer()
                    .frame(height: 40)
                
            }
            
        }
        
    }
    
    
}
        


















