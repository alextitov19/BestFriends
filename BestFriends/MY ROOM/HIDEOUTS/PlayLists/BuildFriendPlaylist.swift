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
    let friendAtmosphere: Atmosphere
    
    var body: some View {
        ZStack {
            ColorManager.purple4
                .ignoresSafeArea()
                .onAppear()
          

            VStack {
              
                Text("Playlists")
                    .font(.system(size: 80))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)

                Spacer()
                    .frame(height: 25)
                
                Text("Build a Playlist for your Friends")
                    .font(.system(size: 27))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                
                Spacer()
                    .frame(height: 5)
                 
                Text("that matches their ")
                    .font(.system(size: 27))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                Spacer()
                    .frame(height: 15)
                
                   
                Text("Mood")
                    .font(.system(size: 70))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                
            VStack {
                    Spacer()
                        .frame(height: 10)
                    
                    NavigationLink(
                        destination: SendSongChat2(user: user, friend: friend, groups: groups, friendAtmosphere: friendAtmosphere),
                        label: {
                            Text("Let's do this!")
                                .fontWeight(.thin)
                                .frame(width: 300, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                    
                    Spacer()
                        .frame(height: 60)
                
                Text("One for Good days, ")
                    .font(.system(size: 40))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.white)
                
                Text("one for Bad")
                    .font(.system(size: 40))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.white)
               
             
                    
                }
            }
            
        }
    }
}





