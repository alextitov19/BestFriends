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
                
                Text("Your friends sent these songs for you")
                    .font(.system(size: 27))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                
                Spacer()
                    .frame(height: 5)
             
                
            VStack {
                    Spacer()
                        .frame(height: 10)
                    
                
                
                
                
                
                
                
                
                
                    NavigationLink(
                        destination: EmptyView(),
                        label: {
                            Text("Home")
                                .fontWeight(.thin)
                                .frame(width: 100, height: 40)
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


struct ReceivedPlaylist_Previews : PreviewProvider {
    static var previews: some View {
        ReceivedPlaylist()
    }
}


