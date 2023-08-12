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
                .ignoresSafeArea()
                .onAppear()
            
            AdPlayerView(name: "background_3")
                .ignoresSafeArea()
                .blendMode(.screen)
 

            VStack {
                
                Text("introducing")
                    .font(.system(size: 15))
                    .italic()
                    .foregroundColor(Color.white)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                
                Text("BestFriends")
                    .font(.system(size: 20))
                    .italic()
                    .foregroundColor(Color.white)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 15)
                
                Text("it's just for")
                    .font(.system(size: 35))
                    .foregroundColor(Color.white)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                

                Text("you & your")
                    .font(.system(size: 35))
                    .foregroundColor(Color.white)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                
                Text("friends")
                    .font(.system(size: 35))
                    .foregroundColor(Color.white)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
             
                
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
                        
                        
                        Text("Now, you can let the outside of you")
                                                    .font(.system(size: 22))
                                                       .italic()
                                                    .foregroundColor(ColorManager.grey1)
                                                    .fontWeight(.light)
                                                    .multilineTextAlignment(.center)
                                                
                                                Text("match the inside of you")
                                                    .font(.system(size: 22))
                                                        .italic()
                                                    .foregroundColor(ColorManager.grey1)
                                                    .fontWeight(.light)
                                                    .multilineTextAlignment(.center)
                                                
                                                
                                                Text("on social media")
                                                    .font(.system(size: 22))
                                                        .italic()
                                                    .foregroundColor(ColorManager.grey1)
                                                    .fontWeight(.light)
                                                    .multilineTextAlignment(.center)
                        
                        
                        
                    
                        
                        
                        Spacer()
                            .frame(height: 30)
              
                        Text("a social media app that")
                            .font(.system(size: 20))
                            .foregroundColor(Color.white)
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                   
                        Text("feels like a sleep-over!")
                            .font(.system(size: 30))
                            .foregroundColor(Color.white)
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
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
        


















