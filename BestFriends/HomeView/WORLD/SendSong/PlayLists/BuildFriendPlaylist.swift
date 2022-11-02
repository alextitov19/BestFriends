//
//  BuildFriendPlaylist.swift
//  BestFriends
//
//  Created by Social Tech on 6/11/22.
//

import SwiftUI

struct BuildFriendPlaylist: View {
    
    let user: User
    let groups: [Group]
    let friend: User
    let friends: [User]
    let friendAtmosphere: Atmosphere
    
    var body: some View {
        ZStack {
            ColorManager.purple4
                .ignoresSafeArea()
                .onAppear()
          

            VStack {
              
                Text("Friend having a tough day?")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Text("Send a Song")
                    .font(.system(size: 60))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)

                Spacer()
                    .frame(height: 25)
                
                Text("You know that one you listen to")
                    .font(.system(size: 22))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                Text("over and over and over")
                    .font(.system(size: 15))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                Text("on a sad day in the dark.")
                    .font(.system(size: 15))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                
                
                
                
                
                
                Spacer()
                    .frame(height: 5)
//
//                Text("that matches their Aura")
//                    .font(.system(size: 27))
//                    .foregroundColor(.white)
//                    .fontWeight(.ultraLight)
                Spacer()
                    .frame(height: 15)
                
                   
//                Text("Mood")
//                    .font(.system(size: 70))
//                    .foregroundColor(.white)
//                    .fontWeight(.ultraLight)
//
            VStack {
                    Spacer()
                        .frame(height: 10)
                    
                    NavigationLink(
                        destination: SendSongChat2(user: user, friend: friend, friends: friends, groups: groups, friendAtmosphere: friendAtmosphere),
                        label: {
                            Text("Be a BestFriend")
                                .fontWeight(.thin)
                                .frame(width: 300, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                    
                    
                }
            }
            
        }
    }
}





