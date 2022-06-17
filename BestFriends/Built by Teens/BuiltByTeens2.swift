//
//  BuiltByTeens2.swift
//  BestFriends
//
//  Created by Social Tech on 6/17/22.
//

import Foundation
import SwiftUI
import AVKit


struct BuiltByTeens2: View {
    
    var body: some View {
        
        ZStack {
            
            Image("BuiltByTeens")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
         

            VStack {
                
                Link(destination: URL(string: "https://socialtechlabs.com/team/")!) {
                        Text("Teen Team")
                            .fontWeight(.thin)
                            .frame(width: 150, height: 40)
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                }
                
                VStack {
                
                let avPlayer = AVPlayer(url:  Bundle.main.url(forResource: "BuiltByTeensVid", withExtension: "mp4")!)
               
                VideoPlayer(player: avPlayer)
                    .onAppear() {
                        avPlayer.isMuted = false
                    }
                    .onDisappear() {
                        avPlayer.isMuted = true
                    }
//                    .frame(height: 300)
                    .frame(width: 200, height: 400)
                    .cornerRadius(15)
            }
            
            Spacer()
                .frame(height: 75)
            
              
                        

            }//VStack
        }//ZStack
    }//body
}//struct

    

