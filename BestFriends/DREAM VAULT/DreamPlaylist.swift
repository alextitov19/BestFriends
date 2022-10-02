//
//  DreamPlaylist.swift
//  BestFriends
//
//  Created by Social Tech on 9/13/22.
//



import Foundation
import SwiftUI

struct DreamPlaylist: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        ZStack {
            ColorManager.grey3
                .ignoresSafeArea()
                .onAppear()
          

            VStack {
              
//
//                Text("Being a BestFriend")
//                    .fontWeight(.thin)
//                    .frame(width: 300, height: 50)
//                    .foregroundColor(Color .blue)
//                    .font(.system(size: 30))
//                    .background(ColorManager.purple3)
//                    .cornerRadius(15)
//                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
                Text("Let's build your Dream")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)

                
                Text("Playlist")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                
                
//                Text("to when their mood")
//                    .font(.system(size: 30))
//                    .foregroundColor(.white)
//                    .fontWeight(.ultraLight)
//
//                Text("matches yours")
//                    .font(.system(size: 30))
//                    .foregroundColor(.white)
//                    .fontWeight(.ultraLight)
//
                
                Spacer ()
                        .frame(height: 30)
                
//                Text("(Check Chat)")
//                    .font(.system(size: 17))
//                    .italic()
//                    .foregroundColor(.white)
//                    .fontWeight(.ultraLight)
//
                
                Button(action: {
                    sessionManager.showLogin()
                },
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
                
                
                
        Spacer ()
                .frame(height: 150)
                    
                }
            }
            
        }
    }

