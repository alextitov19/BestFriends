//
//  PhotoPopVideo.swift
//  BestFriends
//
//  Created by Social Tech on 6/2/22.
//

import Foundation

import SwiftUI
import AVKit


struct PhotoPopVideo: View {
    
    var body: some View {
        
        ZStack {
         

Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
    .ignoresSafeArea()

Image("purpleBackground")
    .resizable()
    .ignoresSafeArea()
    .scaledToFill()

AdPlayerView(name: "ShakingCoolVideo")
    .ignoresSafeArea()
    .blendMode(.screen)

        }
    }
}
