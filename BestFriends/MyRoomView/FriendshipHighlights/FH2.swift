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
            
            Image("CareHeartBalloon 1")
                .ignoresSafeArea()
                .scaledToFit()
                .opacity(0.8)
 

            VStack {

                
                ZStack {
                    
                    Spacer()
                        .frame(height: 70)
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(Color.purple)
                        .frame(width: 375, height: 375)
                        .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                        .opacity(0.9)
                    VStack {
                        
                        
                        Spacer()
                            .frame(height: 30)
                        
                        
                        Text("BestFriends is about feeling")
                            .font(.system(size: 27))
                            .foregroundColor(ColorManager .grey1)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                        
                        
                        Text("loved by your FIVE closest friends")
                            .font(.system(size: 27))
                            .foregroundColor(ColorManager .grey1)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                        
                        
                        Spacer()
                            .frame(height: 20)
                        
//                        Text("BestFriends is reserved for your")
//                            .font(.system(size: 20))
//                            .foregroundColor(ColorManager .grey1)
//                            .fontWeight(.thin)
//                            .multilineTextAlignment(.center)
//
//
//                        Text("5 BFFs")
//                            .font(.system(size: 20))
//                            .foregroundColor(ColorManager .grey1)
//                            .fontWeight(.thin)
//                            .multilineTextAlignment(.center)
                        
                        
                        NavigationLink(
                            
                            destination: SaySomethingNice6(user: user, atmosphere: atmosphere, friends: friends, groups: groups, friendAtmospheres: friendAtmospheres),
                            label: {
                                Text("+ Friends")
                                    .fontWeight(.regular)
                                    .frame(width: 100, height: 33)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 13))
                                    .background(Color.orange)
                                    .cornerRadius(15)
                                    .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                                
                            })
                    }
                    
                }
                VStack {
                    
                    Spacer()
                        .frame(height: 30)
                    
                    
                    
                    NavigationLink(
                        destination: FH9(),
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
        


















