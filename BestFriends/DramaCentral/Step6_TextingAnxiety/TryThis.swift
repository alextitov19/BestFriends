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
              
//                Image("ballons")
//                    .resizable()
//                    .ignoresSafeArea()
//                    .scaledToFill()
//
                
                AdPlayerView(name: "backgroundAnimation")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                    .offset(y: -250)
                
                VStack {
                    Text("While waiting")
                        .font(.system(size: 60))
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    
                    Text("on a return text")
                        .font(.system(size: 50))
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    Spacer()
                        .frame(height: 80)
                    
                    Text("*hang out with a friend in Horizons \n*listen to your favorite songs \n*take a walk \n*text a friend \n*watch a funny video \n*eat some chocolate \n*watch a movie")
                        .font(.system(size: 23))
                        .italic()
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 10)
                  
                    Spacer()
                        .frame(height: 75)
                                          }
                      }
                    
               }
            }
        



struct TryThis_Previews : PreviewProvider {
    static var previews: some View {
        TryThis()
    }
}
