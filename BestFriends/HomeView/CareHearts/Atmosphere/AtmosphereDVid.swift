//
//  AtmosphereDVid.swift
//  BestFriends
//
//  Created by Social Tech on 7/28/22.
//

//
//import Foundation
//import SwiftUI
//import AVKit
//
//
//struct AtmosphereDVid: View {
//    
//    @EnvironmentObject var sessionManager: SessionManager
//
//    let user: User
//    let atmosphere: Atmosphere
//    let friends: [User]
//    
//    var body: some View {
//        
//        ZStack {
//         
//
//
//            ColorManager.grey4
//                .ignoresSafeArea()
//            
//                VStack {
//    
//                    
//                    NavigationLink(destination: AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends), label: {
//                        Text("My Atmosphere")
//                            .fontWeight(.thin)
//                            .frame(width: 220, height: 40)
//                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                            .font(.system(size: 30))
//                            .background(ColorManager.purple3)
//                            .cornerRadius(15)
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                    })
////                        NavLink
//                    
//                    
//                 
//                        
//                    
//                    Text("NAVIGATION")
//                        .font(.system(size: 45))
//                        .fontWeight(.ultraLight)
//                        .foregroundColor(Color.white)
//                    
//    //                    VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "BestFriendsAd1", withExtension: "mp4")!))
//    //                        .ignoresSafeArea()
//    //                        .blendMode(.screen)
//                        
//                    let avPlayer = AVPlayer(url:  Bundle.main.url(forResource: "clouds2", withExtension: "mp4")!)
//                       
//                    VideoPlayer(player: avPlayer)
//                        .onAppear() {
//                            avPlayer.isMuted = false
//                        }
//                        .onDisappear() {
//                            avPlayer.isMuted = true
//                        }
//                        .frame(height: 400)
//                  
//                    
//                    Text("(if your iPhone is on 'silent mode'")
//                        .font(.system(size: 15))
//                        .italic()
//                        .fontWeight(.thin)
//                        .foregroundColor(Color.white)
//                    
//                    Text("you will not hear audio)")
//                        .font(.system(size: 15))
//                        .italic()
//                        .fontWeight(.thin)
//                        .foregroundColor(Color.white)
//                    
//                    Spacer()
//            }//VStack
//        }//ZStack
//    }//body
//}//struct
//
