//
//  MyRoomDVid.swift
//  BestFriends
//
//  Created by Social Tech on 7/28/22.
//


import Foundation
import Combine
import SwiftUI
import AVKit


struct MyRoomDVid: View {
    
//    @EnvironmentObject var sessionManager: SessionManager
    
//    let user: User
//    let friends: [User]
//    let groups: [Group]
//
//    @State private var customMessage = "Custom Message"
//    @State private var colorChangeTap: String = ""
//    @State private var noteTapped = false
//    @State private var selectedFriends: [String] = []
//    @State private var colors: [Color] = [ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3]
//    @State private var shareColor = ColorManager.purple5
//    @State private var showingAlert = false
    
    var body: some View {
        ZStack {
            
            Image("blueBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            AdPlayerView(name: "nostalgia")
                .ignoresSafeArea()
                .blendMode(.screen)



        }
    }
}

