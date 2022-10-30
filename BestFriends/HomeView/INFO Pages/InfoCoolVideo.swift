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
    
    let user: User
    
    var body: some View {
        
        ZStack {
            
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
                
                Text("-Nope, it's not traditional social media \n-it's more of a welcomed twinge in your heart \n-like a girl's face suprised by flowers")
                    .font(.system(size: 17))
                    .italic()
                    .fontWeight(.thin)
                    .foregroundColor(Color.white)
                    .padding()
                
                let avPlayer = AVPlayer(url:  Bundle.main.url(forResource: "WorldVid", withExtension: "mp4")!)
                
                VideoPlayer(player: avPlayer)
                    .onAppear() {
                        avPlayer.isMuted = false
                    }
                    .onDisappear() {
                        avPlayer.isMuted = true
                    }
                    .frame(height: 230)
                
             
                VStack {
                    Text("F R I E N D S")
                        .font(.system(size: 25))
                    
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
               
                    
                    Text("-standing with us in the storm \n-always having our backs \n-never giving up on us \n-like kicking througth the leaves in fall")
                        .font(.system(size: 18))
                    
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
//                        .padding()
//
//
//
//                    Spacer()
//                        .frame(height: 20)
//
//
                    NavigationLink(
                        destination: InfoViewPlanet(user: user),
                        label: {
                            Text("Walk-through")
                                .fontWeight(.thin)
                                .frame(width: 200, height: 30)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 25))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })//NavLink
                    
                    Text("a friend may well be reckoned the masterpiece \nof nature --- Ralph Waldo Emerson")
                        .font(.system(size: 15))
                        .italic()
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                
//
//                    Spacer()
//                        .frame(height: 40)
//
                    
                }//VStack
            }//ZStack
        }//body
    }//struct
}
