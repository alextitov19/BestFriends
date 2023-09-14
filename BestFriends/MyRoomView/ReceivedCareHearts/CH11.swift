//
//  CH11.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 7/17/23.
//


import Foundation
import SwiftUI

struct CH11: View {
    @EnvironmentObject var sessionManager: SessionManager
    
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
          
   Image("background_8")
            .resizable()
            .scaledToFill()
            .edgesIgnoringSafeArea(.all)
            

                
                VStack {
                    
                    Text("BestFriends")
                        .font(.system(size: 35))
                        .foregroundColor(ColorManager .grey1)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                    
                    Text("is about")
                        .font(.system(size: 25))
                        .italic()
                        .foregroundColor(ColorManager .grey1)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)

                    Text("Friendships")
                        .font(.system(size: 40))
                        .foregroundColor(ColorManager .grey1)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                    
//                    Text("")
//                        .font(.system(size: 45))
//                        .foregroundColor(ColorManager .grey1)
//                        .fontWeight(.thin)
//                        .multilineTextAlignment(.center)
                    
                    ZStack {
                        
                        Spacer()
                            .frame(height: 70)
                        
                        Image(systemName: "square.fill")
                            .resizable()
                            .foregroundColor(Color.purple)
                            .frame(width: 375, height: 375)
                            .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                            .opacity(0.4)
                        VStack {
                            
                            
                            Spacer()
                                .frame(height: 70)
                            
                            Text("'A friend may well be reckoned")
                                .font(.system(size: 20))
                                .fontWeight(.light)
                                .italic()
                                .foregroundColor(Color.white)
                                .fontWeight(.thin)
                                .multilineTextAlignment(.center)
                            
                            
                            Text("the masterpiece of nature'")
                                .font(.system(size: 20))
                                .fontWeight(.light)
                                .italic()
                                .foregroundColor(Color.white)
                                .fontWeight(.thin)
                                .multilineTextAlignment(.center)
                            
                            Text("- Emerson")
                                .font(.system(size: 13))
                                .foregroundColor(ColorManager .grey1)
                                .fontWeight(.thin)
                                .multilineTextAlignment(.center)
                            
                            
                            Spacer()
                                .frame(height: 60)
                            
                            
                    NavigationLink(destination: EmptyView(),
                        label: {
             Text("Tell us in 15 words what your friends mean to you? Shoot us an email with your quote. Each month we'll post the top 3 winners. \n\nsend to QuoteContest@SocialTechLabs.com")
                 .fontWeight(.light)
                 .frame(width: 330, height: 140)
                 .foregroundColor(Color.white)
                 .font(.system(size: 15))
                 .background(ColorManager.grey3)
                 .cornerRadius(10)
                 .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
             
         })
                        }
                        
                    }

                        }
                        
                    }
                    
                }
                
            }
        

