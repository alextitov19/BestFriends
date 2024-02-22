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
            
//            ColorManager.purple5
//                .ignoresSafeArea()
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()

            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
                .opacity(0.75)
            
            
            
            VStack {
                
            
               
                Spacer()
                
                Text("building")
                    .font(.system(size: 20))
                    .italic()
                    .fontWeight(.thin)
                    .foregroundColor(Color.white)
                
                    .frame(height: 10)
                
                Text("World FriendGroups")
                    .font(.system(size: 32))
                    .fontWeight(.thin)
                    .foregroundColor(Color.white)
                
                Text("moments of kindness")
                    .font(.system(size: 17))
                    .italic()
                    .fontWeight(.thin)
                    .foregroundColor(Color.white)
                
                Text("amoung friends")
                    .font(.system(size: 17))
                    .italic()
                    .fontWeight(.thin)
                    .foregroundColor(Color.white)
                
                Text("   Our friends sending warm pings touching our hearts \n\n   Feeling safe in the silence \n\n   Feeling special, like a girl's face holding unexpected flowers. \n\n   Kicking through autumn's leaves, our lives perfect in the moment \n\n   NOW, feeling somehow lighter as if making snow angles")
                    .font(.system(size: 12))
//                    .italic()
                    .fontWeight(.thin)
                    .foregroundColor(Color.white)
                    .padding()
//                
//                let avPlayer = AVPlayer(url:  Bundle.main.url(forResource: "WorldVid", withExtension: "mp4")!)
//                
//                VideoPlayer(player: avPlayer)
//                    .onAppear() {
//                        avPlayer.isMuted = false
//                    }
//                    .onDisappear() {
//                        avPlayer.isMuted = true
//                    }
//                    .frame(height: 230)
                
             
                VStack {
                    Text("F R I E N D S")
                        .font(.system(size: 25))
                    
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                    
                    Text("a friend may well be reckoned the masterpiece \nof nature --- Ralph Waldo Emerson")
                        .font(.system(size: 15))
                        .italic()
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
               


                    Spacer()
                .frame(height: 20)


                    NavigationLink(
                        destination: EmptyView(),
                        label: {
                            Text("Next")
                                .fontWeight(.thin)
                                .frame(width: 100, height: 30)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 25))
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
}
