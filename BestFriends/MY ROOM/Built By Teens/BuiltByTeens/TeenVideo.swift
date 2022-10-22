//
//  TeenVideo.swift
//  BestFriends
//
//  Created by Social Tech on 10/14/22.
//



import Foundation
import SwiftUI
import AVKit


struct TeenVideo: View {
    
    @EnvironmentObject var sessionManager: SessionManager

    
    var body: some View {
        
        ZStack {

//
//            Image("Elena")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()

            ColorManager.grey4
                .ignoresSafeArea()
            
                VStack {
    
                    
//                    
//             
//                    Text("the 'Zen Masters'")
//                        .font(.system(size: 35, weight: .bold))
//                        .foregroundColor(ColorManager.grey1)
//                        .shadow(color: .black, radius: 1, x: 0, y: 1)
//                        .opacity(0.50)
//    //                    .foregroundColor(ColorManager.grey1)
//    //                    .fontWeight(.ultraLight)
//                        .multilineTextAlignment(.center)
//                    
//                    Text("of social media")
//                        .font(.system(size: 35, weight: .bold))
//                        .foregroundColor(ColorManager.grey1)
//                        .shadow(color: .black, radius: 1, x: 0, y: 1)
//                        .opacity(0.50)
//    //                    .foregroundColor(ColorManager.grey1)
//    //                    .fontWeight(.ultraLight)
//                        .multilineTextAlignment(.center)
//                    
//                    
                    Spacer()
                        .frame(height: 40)
                        
                    let avPlayer = AVPlayer(url:  Bundle.main.url(forResource: "BuiltByTeens3", withExtension: "mp4")!)
                       
                    VideoPlayer(player: avPlayer)
                        .onAppear() {
                            avPlayer.isMuted = false
                        }
                        .onDisappear() {
                            avPlayer.isMuted = true
                        }
                        .frame(height: 225)
                  
                    
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
                    
                    
                                            Button(action: {
                                                sessionManager.showLogin()
                                            },
                                                label: {
                                                    Text("Home")
                                                        .fontWeight(.thin)
                                                        .frame(width: 100, height: 40)
                                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                                        .font(.system(size: 30))
                                                        .background(ColorManager.purple3)
                                                        .cornerRadius(15)
                                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                                })
                    
                    
                    
            }//VStack
        }//ZStack
    }//body
}//struct

