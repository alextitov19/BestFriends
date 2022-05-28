//
//  TryThis.swift
//  BestFriends
//
//  Created by Social Tech on 4/28/22.
//

import Foundation

import Foundation
import SwiftUI

struct TryThis: View {
    
    var body: some View {
//        NavigationView {
            
            ZStack {
                Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                    .ignoresSafeArea()
                Image("purpleBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
         
                VStack {
                    Text("While counting the HOURS")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    
                    Text("waiting on an")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    Spacer()
                        .frame(height: 30)
                    
                    Text("ANSWER BACK")
                        .font(.system(size: 55))
                        .foregroundColor(.blue)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    Spacer()
                        .frame(height: 80)
                    
//                    Text("*hang out with a friend in Horizons \n*listen to your favorite songs \n*take a walk \n*text a friend \n*watch a funny video \n*eat some chocolate \n*watch a movie")
//                        .font(.system(size: 23))
//                        .italic()
//                        .fontWeight(.light)
//                        .foregroundColor(.white)
//                        .fontWeight(.heavy)
//                        .multilineTextAlignment(.leading)
//                        .padding(.horizontal, 10)
//
//                    Spacer()
//                        .frame(height: 75)
                    
                    VStack {
                         NavigationLink(
                            destination: BlueModePlaylist(),
                            label: {
                                Text("Listen to your BlueMode Playlist")
                                    .fontWeight(.thin)
                                    .frame(width: 330, height: 40)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 25))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            })
                        
                        Spacer()
                            .frame(height: 30)
                        
                        NavigationLink(
                           destination: EmptyView(),
                           label: {
                               Text("Talk to a friend in Chat")
                                   .fontWeight(.thin)
                                   .frame(width: 330, height: 40)
                                   .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                   .font(.system(size: 25))
                                   .background(ColorManager.purple3)
                                   .cornerRadius(15)
                                   .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                           })
                      
                        
                        
                        
                        NavigationLink(
                            destination: EmptyView(),
                           label: {
                               Text("Go to HIDEOUTS")
                                   .fontWeight(.thin)
                                   .frame(width: 330, height: 40)
                                   .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                   .font(.system(size: 25))
                                   .background(ColorManager.purple3)
                                   .cornerRadius(15)
                                   .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                           })
                      
                        
                }
            }
                    
        }
    }
        
}


struct TryThis_Previews : PreviewProvider {
    static var previews: some View {
        TryThis()
    }
}
