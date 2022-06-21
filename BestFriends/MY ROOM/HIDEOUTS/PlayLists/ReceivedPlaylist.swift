//
//  ReceivedPlaylist.swift
//  BestFriends
//
//  Created by Social Tech on 6/19/22.
//

import Foundation
import SwiftUI

struct ReceivedPlaylist: View {
    
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
                
                Text("Check to see if")
                    .font(.system(size: 35))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                
                Text("your friends sent songs")
                    .font(.system(size: 35))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                
                Text("in Chat that they listen to")
                    .font(.system(size: 35))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                
                Text("that match your mood.")
                    .font(.system(size: 35))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                
                Spacer()
                    .frame(height: 5)
             
                
            VStack {
                    Spacer()
                        .frame(height: 10)
                    
                
                
                
                
    
                    
                }
            }
            
        }
    }
}


struct ReceivedPlaylist_Previews : PreviewProvider {
    static var previews: some View {
        ReceivedPlaylist()
    }
}


