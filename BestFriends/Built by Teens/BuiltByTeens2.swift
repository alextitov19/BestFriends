//
//  BuiltByTeens2.swift
//  BestFriends
//
//  Created by Social Tech on 6/17/22.
//

import Foundation
import SwiftUI
//import AVKit


struct BuiltByTeens2: View {
    
    var body: some View {
        
        ZStack {
            
            ColorManager.grey4
                  .ignoresSafeArea()
           
            
//            Image("BuiltByTeens")
//                .frame(width: 100, height: 40)
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
            
         

            VStack {
                
                
                Text("Building Resilient")
                    .font(.system(size: 40))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.blue)
                
                Text("Friendships")
                    .font(.system(size: 60))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.blue)
                
                
                Link(destination: URL(string: "https://socialtechlabs.com/team/")!) {
                        Text("Built by Teens")
                            .fontWeight(.thin)
                            .frame(width: 330, height: 40)
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    
                 
                }
                Text("(the 'Zen Masters' of social media)")
               
                    .font(.system(size: 15))
                    .italic()
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.white)
                
                Spacer()
                    .frame(height: 75)
                
               
                Link(destination: URL(string: "https://socialtechlabs.com/about-bestfriends/")!) {
                        Text("BestFriend's Features Explained")
                            .fontWeight(.thin)
                            .frame(width: 330, height: 40)
                            .font(.system(size: 23))
                            .foregroundColor(.white)
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                }
                
                NavigationLink(
                    destination: BetaTestVideo(),
                    label: {
                        Text("Be 1st to see 'Future Prototypes'")
                            .fontWeight(.thin)
                            .frame(width: 310, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.grey2)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                
                
            
                
//                VStack {
//
//                let avPlayer = AVPlayer(url:  Bundle.main.url(forResource: "BuiltByTeensVid", withExtension: "mp4")!)
//
//                VideoPlayer(player: avPlayer)
//                    .onAppear() {
//                        avPlayer.isMuted = false
//                    }
//                    .onDisappear() {
//                        avPlayer.isMuted = true
//                    }
////                    .frame(height: 300)
//                    .frame(width: 200, height: 400)
//                    .cornerRadius(15)
//            }
            
            Spacer()
                .frame(height: 75)
            
              
                        

            }//VStack
        }//ZStack
    }//body
}//struct

    

