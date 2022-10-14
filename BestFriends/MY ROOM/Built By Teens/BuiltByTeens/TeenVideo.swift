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
                        destination: BuiltForTeens(),
                        label: {
                            Text("NEXT")
                                .fontWeight(.thin)
                                .frame(width: 100, height: 35)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })//NavLink
                    
                    Text("the 'Zen Masters'")
                        .font(.system(size: 35, weight: .bold))
                        .foregroundColor(.green)
                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                        .opacity(0.50)
    //                    .foregroundColor(ColorManager.purple5)
    //                    .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                    
                    Text("of social media")
                        .font(.system(size: 35, weight: .bold))
                        .foregroundColor(.green)
                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                        .opacity(0.50)
    //                    .foregroundColor(ColorManager.purple5)
    //                    .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                    
                    
                    Spacer()
                        .frame(height: 130)
                        
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
            }//VStack
        }//ZStack
    }//body
}//struct

