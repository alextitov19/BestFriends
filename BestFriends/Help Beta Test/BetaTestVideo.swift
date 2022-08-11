//
//  BetaTestVideo.swift
//  BestFriends
//
//  Created by Social Tech on 6/2/22.
//

import Foundation
import SwiftUI
import AVKit


struct BetaTestVideo: View {
    
    @EnvironmentObject var sessionManager: SessionManager

    
    var body: some View {
        
        ZStack {
         
//            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
//                .ignoresSafeArea()

//            Image("purpleBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()

            ColorManager.grey4
                .ignoresSafeArea()
            
                VStack {
    
                    
                    
                    NavigationLink(
                        destination: HorizonsPrototype(),
                        label: {
                            Text("NEXT")
                                .fontWeight(.thin)
                                .frame(width: 100, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })//NavLink
                    
                    
                    Text("Be 1st to test new")
                        .font(.system(size: 30))
                        .italic()
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        
                    
                    Text("protoype 'Features'")
                        .font(.system(size: 40))
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color.white)
                    
    //                    VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "BestFriendsAd1", withExtension: "mp4")!))
    //                        .ignoresSafeArea()
    //                        .blendMode(.screen)
                        
                    let avPlayer = AVPlayer(url:  Bundle.main.url(forResource: "BestFriendsAd1", withExtension: "mp4")!)
                       
                    VideoPlayer(player: avPlayer)
                        .onAppear() {
                            avPlayer.isMuted = false
                        }
                        .onDisappear() {
                            avPlayer.isMuted = true
                        }
                        .frame(height: 450)
                  
                    
                    Text("(if your iPhone is on 'silent mode'")
                        .font(.system(size: 15))
                        .italic()
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                    
                    Text("you will not hear audio)")
                        .font(.system(size: 15))
                        .italic()
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                    
                    Spacer()
                        .frame(height: 30)
            }//VStack
        }//ZStack
    }//body
}//struct

