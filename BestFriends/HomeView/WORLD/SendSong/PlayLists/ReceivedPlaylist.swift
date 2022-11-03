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
            ColorManager.grey3
                .ignoresSafeArea()
                .onAppear()
            
            
            VStack {
                
                
                Text("comming soon")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Spacer ()
                    .frame(height: 30)
                
                
                Text("Want friends to know ")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                
                Text("something just happend")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                
                Text("But, NOT feeling like talking")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                
                
                Text("to anyone right now")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                
                VStack {
                    
                    Spacer ()
                        .frame(height: 30)
                    
                    Text("Build your Playlist of songs")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                    
                    Text("friends recommended")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                    
                    Text("when their mood matches your's now")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                    
                    
                    
                    Spacer ()
                        .frame(height: 30)
                    
                    
                    
                    
                    Button(action: {
                        sessionManager.showLogin()
                    },
                           label: {
                        Text("Chat")
                            .fontWeight(.thin)
                            .frame(width: 100, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                    
                    
                    
                    Spacer ()
                        .frame(height: 150)
                    
                }
            }
            
        }
    }
    
}

