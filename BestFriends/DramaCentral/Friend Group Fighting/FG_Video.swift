//
//  FG_Video.swift
//  BestFriends
//
//  Created by Christine Maldonado on 6/3/22.
//

import Foundation
import SwiftUI
import AVKit


struct FG_Video: View {
    
    var body: some View {
        
        ZStack {
            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                .ignoresSafeArea()

            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()

            VStack {
                
                VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "FGVideo2", withExtension: "mp4")!))
                    .ignoresSafeArea()
                    .blendMode(.screen)
                
                Spacer()
                    .frame(height: 0)
                
                NavigationLink(
                    destination: FG_VideoCall(),
                    label: {
                        Text("SKIP")
                            .fontWeight(.thin)
                            .frame(width: 100, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                })//NavLink
            }//VStack
        }//ZStack
    }//body
}//struct

