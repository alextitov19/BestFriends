//
//  RRBrokenHeart.swift
//  BestFriends
//
//  Created by Social Tech on 12/27/23.
//



import Foundation
import SwiftUI

struct RRBrokenHeart: View {
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
                    
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(Color.purple)
                        .frame(width: 450, height: 450)
                        .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                        .opacity(0.85)
                  
                    
                    VStack {
                        
                      
                        Text("Giving emotional support to others")
                            .font(.system(size: 25))
                            .foregroundColor(Color.white)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .opacity(0.99)
                        
                 
                        
                        Text("having a difficult day")
                            .font(.system(size: 25))
                            .foregroundColor(Color.white)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .opacity(0.99)
                        
                        
                        Text("when they are unable or not ready")
                            .font(.system(size: 25))
                            .foregroundColor(Color.white)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .opacity(0.99)
                        
                        Text("to talk to you")
                            .font(.system(size: 25))
                            .foregroundColor(Color.white)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .opacity(0.99)
                
//                        VStack {
                            
                            Spacer()
                                .frame(height: 20)


//                        }
                    }
                }
                
                Text("maybe it is as simple as")
                    .font(.system(size: 17))
                    .italic()
                    .foregroundColor(Color.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .opacity(0.99)
                
                Text("letting them know you care")
                    .font(.system(size: 17))
                    .italic()
                    .foregroundColor(Color.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .opacity(0.99)
                
                
                
                Spacer()
                    .frame(height: 40)
                
            }
        }
    }
}


        






