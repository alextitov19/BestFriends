//
//  InfoCoolVideo.swift
//  BestFriends
//
//  Created by Social Tech on 10/28/22.
//



import Foundation
import SwiftUI
import AVKit


struct InfoCoolVideo: View {
    
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
                    
                    Text("introducing")
                        .font(.system(size: 17))
                        .italic()
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        
                    
                    Text("World FriendGroups")
                        .font(.system(size: 25))
                  
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        
                    
//                      Text("where we know we're loved")
//                          .font(.system(size: 25))
//
//                          .fontWeight(.thin)
//                          .foregroundColor(Color.white)
//
//
                
                    Text("-Nope, it's not flashy \n-it's more of a twinge in your heart \n-with friends like us")
                        .font(.system(size: 17))
                        .italic()
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        .padding()
  
                    let avPlayer = AVPlayer(url:  Bundle.main.url(forResource: "CoolVideo", withExtension: "mp4")!)
                       
                    VideoPlayer(player: avPlayer)
                        .onAppear() {
                            avPlayer.isMuted = false
                        }
                        .onDisappear() {
                            avPlayer.isMuted = true
                        }
                        .frame(height: 250)
                  
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
                    
                    Spacer()
                        .frame(height: 30)
                    
                    
                    Text("F R I E N D S")
                        .font(.system(size: 25))
                    
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        .padding()
                    
                    Text("-standing with us in the storm \n-always having our back \n-never giving up on us \n-while feeling safety in the silence")
                        .font(.system(size: 20))
                        .italic()
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                    
                    Spacer()
                        .frame(height: 20)
                    
                    
                    NavigationLink(
                        destination: InfoViewPlanet(),
                        label: {
                            Text("Walk-through")
                                .fontWeight(.thin)
                                .frame(width: 200, height: 30)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 20))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })//NavLink
                    
                    Spacer()
                        .frame(height: 40)
                    
                    
            }//VStack
        }//ZStack
    }//body
}//struct

