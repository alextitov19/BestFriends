//
//  RR1.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 7/15/23.
//




import Foundation
import SwiftUI

struct RR1: View {
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
         
            Image("CareHeartBalloon 1")
                .ignoresSafeArea()
                .scaledToFit()
                .opacity(0.8)
        

                
                VStack {

                    Text("Celebrating")
                        .font(.system(size: 45))
                        .foregroundColor(Color.white)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                    
                    Text("Friendships")
                        .font(.system(size: 45))
                        .foregroundColor(Color.white)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                    
//                    Text("celebrating friendships")
//                        .font(.system(size: 17))
//                        .italic()
//                        .foregroundColor(Color.white)
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
                    
                    ZStack {
                        
                       
                        Spacer()
                            .frame(height: 40)
                        
                        Image(systemName: "circle.fill")
                            .resizable()
                            .foregroundColor(Color.purple)
                            .frame(width: 375, height: 375)
                            .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                            .opacity(0.95)
                        
                        VStack {
                            
                            
                            Spacer()
                                .frame(height: 20)
                            
                            HStack {
                                
//                                Text("Mon _")
//                                    .font(.system(size: 25))
//                                    .foregroundColor(ColorManager .grey1)
//                                    .fontWeight(.light)
//                                    .multilineTextAlignment(.center)
                                
                                
                                Text("emotional support")
                                    .font(.system(size: 25))
                                    .italic()
                                    .foregroundColor(ColorManager .grey1)
                                    .fontWeight(.light)
                                    .multilineTextAlignment(.center)
                                
                            }
                                
                                Text("CareHearts")
                                    .font(.system(size: 25))
                                    .foregroundColor(Color.cyan)
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.center)
                                
                            
                                
                            Spacer()
                                .frame(height: 25)
                            
                            HStack {
                                
                                
                                
//                                Text("sharing your")
//                                    .font(.system(size: 25))
//                                    .italic()
//                                    .foregroundColor(ColorManager .grey1)
//                                    .fontWeight(.light)
//                                    .multilineTextAlignment(.center)
                            }
                                
//                                Text("Crushes")
//                                    .font(.system(size: 25))
//                                    .foregroundColor(Color.cyan)
//                                    .fontWeight(.bold)
//                                    .multilineTextAlignment(.center)
//
                            
                            
                            Spacer()
                                .frame(height: 25)
                            
                            HStack {
                                
//                                Text("Fri _")
//                                    .font(.system(size: 25))
//                                    .foregroundColor(ColorManager .grey1)
//                                    .fontWeight(.light)
//                                    .multilineTextAlignment(.center)
                                
                                Text("'shake' your iPhone for")
                                    .font(.system(size: 25))
                                    .italic()
                                    .foregroundColor(ColorManager .grey1)
                                    .fontWeight(.light)
                                    .multilineTextAlignment(.center)
                                
                            }
                                
                                Text("Lightspeed Images")
                                    .font(.system(size: 25))
                                    .foregroundColor(Color.cyan)
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.center)
                                
                                
                                
                            
                        }
                        
                    }
                        VStack {
                            
                            Spacer()
                                .frame(height: 40)
                           
                               
                          
                            NavigationLink(
                                destination: FH9(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
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
        
        
 















