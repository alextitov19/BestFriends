//
//  SendSongChat.swift
//  BestFriends
//
//  Created by Social Tech on 6/20/22.
//

import Foundation

import SwiftUI

struct SendSongChat: View {
    
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
                
                Text("For now,  please go to")
                    .font(.system(size: 35))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                
                Spacer()
                    .frame(height: 5)
                
                Text("CHAT")
                    .font(.system(size: 35))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
           
        VStack {
                
                Spacer()
                    .frame(height: 5)
                
                Text("and send a song")
                    .font(.system(size: 35))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                
                Spacer()
                    .frame(height: 5)
                 
                Text("that matchs their ")
                    .font(.system(size: 35))
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
                        .frame(height: 40)

                
                Text("Note: ")
                    .font(.system(size: 30))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.white)
                
                Text("We will have this function")
                    .font(.system(size: 25))
                    .italic()
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.white)
                
                Text("automated by end of summer")
                    .font(.system(size: 25))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.white)
               
             
                    
                }
            }
            
        }
    }
}
}

struct SendSongChat_Previews : PreviewProvider {
    static var previews: some View {
        SendSongChat()
    }
}


