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
              
                Text("Song from a friend")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)

                
                Text("when their mood matches yours")
                    .font(.system(size: 35))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                
              
                
                Text("Check Push Notifications")
                    .font(.system(size: 20))
                    .italic()
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                
        
                    
                }
            }
            
        }
    }



struct ReceivedPlaylist_Previews : PreviewProvider {
    static var previews: some View {
        ReceivedPlaylist()
    }
}


