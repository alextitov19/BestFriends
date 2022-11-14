//
//  ReceivedPlaylist.swift
//  BestFriends
//
//  Created by Social Tech on 6/19/22.
//

import Foundation
import SwiftUI

struct ReceivedPlaylist: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        ZStack {
            ColorManager.grey4
                .ignoresSafeArea()
                .onAppear()
            
            
            VStack {
                
                
                Text("comming 2023")
                    .font(.system(size: 23))
                    .italic()
                    .foregroundColor(.green)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                
                Spacer ()
                    .frame(height: 30)
                
             
                Text("FriendGroup")
                    .font(.system(size: 40))
                    .foregroundColor(ColorManager .purple3)
                    .fontWeight(.ultraLight)
              
              Text("P L A Y L I S T S")
                  .font(.system(size: 45))
                  .foregroundColor(.white)
                  .fontWeight(.ultraLight)
            
                
                VStack {
                    
                    Spacer ()
                        .frame(height: 70)
                    
                    Text("Friends can add songs")
                        .font(.system(size: 30))
                        .foregroundColor(ColorManager .purple3)
                        .fontWeight(.ultraLight)
                    
                    
                    Text("to your Playlist")
                        .font(.system(size: 30))
                        .foregroundColor(ColorManager .purple3)
                        .fontWeight(.ultraLight)
                    
                    
                    Spacer ()
                        .frame(height: 10)
                    
                    Text("-You can appept or reject")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                        
                    
                    Spacer ()
                        .frame(height: 30)
                    
                    Text("Auto upload to")
                        .font(.system(size: 30))
                        .foregroundColor(ColorManager .purple3)
                        .fontWeight(.ultraLight)
                    
                    Text("Apple Music")
                        .font(.system(size: 30))
                        .foregroundColor(ColorManager .purple3)
                        .fontWeight(.ultraLight)
                   
                    
                    Spacer ()
                        .frame(height: 30)
                    
                    
                    
//
//                    Button(action: {
//                        sessionManager.showLogin()
//                    },
//                           label: {
//                        Text("Chat")
//                            .fontWeight(.thin)
//                            .frame(width: 100, height: 40)
//                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                            .font(.system(size: 30))
//                            .background(ColorManager.purple3)
//                            .cornerRadius(15)
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                    })
//
                    
                    
                    Spacer ()
                        .frame(height: 150)
                    
                }
            }
            
        }
    }
    
}

