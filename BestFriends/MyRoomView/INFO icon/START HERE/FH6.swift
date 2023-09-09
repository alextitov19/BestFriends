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
//                        
//                        
//                        Text("Because you won't feel like you are not good enough or FOMO. \n\nWe don't allow 'likes' or 'comments' on images")
//                            .fontWeight(.regular)
//                            .frame(width: 340, height: 100)
//                            .foregroundColor(ColorManager .grey4)
//                            .font(.system(size: 15))
//                            .background(ColorManager .grey1)
//                            .cornerRadius(10)
//                            .shadow(color: Color.white, radius: 2, x: 0, y: 2)
//                            .opacity(0.7)

                        Text("Because you won't feel like")
                            .font(.system(size: 22))
//                                                       .italic()
                            .foregroundColor(ColorManager.grey1)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                        
                        Text("you're not good enough or FOMO")
                            .font(.system(size: 22))
//                                                        .italic()
                            .foregroundColor(ColorManager.grey1)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                            .frame(height: 10)
                        
                        Text("We don't allow 'likes' or 'comments' on images")
                            .font(.system(size: 22))
//                                                        .italic()
                            .foregroundColor(ColorManager.grey1)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                       
                        
                        Spacer()
                            .frame(height: 20)
               
                     
              

                    }
                    
                }
                VStack {
                    
                    Spacer()
                        .frame(height: 30)
                    
                    
                    
                    NavigationLink(
                        destination: RR6(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
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
        


















