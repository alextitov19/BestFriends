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
            
            AdPlayerView(name: "background_9")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            
            VStack {
                
                
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
                        
                        Text("Why non-toxic?")
                            .font(.system(size: 30))
                            .foregroundColor(ColorManager.grey1)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                       
                        Spacer()
                            .frame(height: 10)
                        
                        Text("1) You won't feel like")
                            .font(.system(size: 20))
                            .foregroundColor(ColorManager.grey1)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                        
                        Text("you're not good enough")
                            .font(.system(size: 20))
                            .foregroundColor(ColorManager.grey1)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                            .frame(height: 10)
                        
                        Text("2) No FOMO issues")
                            .font(.system(size: 20))
                            .foregroundColor(ColorManager.grey1)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                            .frame(height: 10)
                        
                        
                        
                        
                        VStack {
                            
                            Text("2) No comparison issues")
                                .font(.system(size: 20))
                                .foregroundColor(ColorManager.grey1)
                                .fontWeight(.thin)
                                .multilineTextAlignment(.center)
                            
                            Text("(no 'likes' or 'comment' on images")
                                .font(.system(size: 15))
                                .italic()
                                .foregroundColor(ColorManager.grey1)
                                .fontWeight(.thin)
                                .multilineTextAlignment(.center)
                            
                            Spacer()
                                .frame(height: 30)
                            
                            Text("BestFriendsNetwork is a")
                                .font(.system(size: 17))
                                .italic()                            .foregroundColor(ColorManager.grey1)
                                .fontWeight(.thin)
                                .multilineTextAlignment(.center)
                            
                            Text("safe and sound space)")
                                .font(.system(size: 17))
                                .italic()                            .foregroundColor(ColorManager.grey1)
                                .fontWeight(.thin)
                                .multilineTextAlignment(.center)
                            
                            Spacer()
                                .frame(height: 20)
                            
                            
                            
                            
                        }
                    }
                }
                
                    VStack {
                        
                        Spacer()
                            .frame(height: 30)
                        
                        
                        
                        NavigationLink(
                            destination: FH8(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
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

        


















