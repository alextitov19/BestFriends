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
            
            
            
            VStack {
                Spacer()
                    .frame(height: 0)
                
                NavigationLink(
                    destination: EmptyView(),
                    label: {
                        Text("Set-up PhotoPop")
                            .fontWeight(.thin)
                            .frame(width: 250, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                
                
                
            }
        }
    }
}