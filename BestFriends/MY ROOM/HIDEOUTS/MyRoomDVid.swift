//
//  MyRoomDVid.swift
//  BestFriends
//
//  Created by Social Tech on 7/28/22.
//


import Foundation
//import Combine
import SwiftUI
import AVKit


struct MyRoomDVid: View {
    

    
    var body: some View {
        ZStack {
            
            Image("blueBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            AdPlayerView(name: "SplashScreen2")
                .ignoresSafeArea()
                .blendMode(.screen)



        }
    }
}

