//
//  RRdemoVideo.swift
//  BestFriends
//
//  Created by Robert Roe on 10/13/23.
//


import Foundation
import SwiftUI

struct RRdemoVideo: View {
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
            
            Color.black
                .opacity(0.9)
                .ignoresSafeArea()
            
            AdPlayerView(name: "DemoVideo1")
                .ignoresSafeArea()
                .blendMode(.screen)
                VStack {

                        }
                    }
                }   
            }
        
