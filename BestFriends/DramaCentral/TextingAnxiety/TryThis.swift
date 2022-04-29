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
        NavigationView {
            
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
                    
                    Text("*listen to your favorite songs \n*take a walk \n*text a friend \n*watch a funny video \n*eat some chocolate \n*watch a movie")
                        .font(.system(size: 20))
                        .italic()
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 10)
                    Spacer()
                        .frame(height: 15)
                    
                    VStack {
//                    Text("pace yourself -this may take a while")
//                        .font(.system(size: 23))
//                        .italic()
//                        .fontWeight(.medium)
//                        .foregroundColor(.white)
//                        .fontWeight(.heavy)
//                        .multilineTextAlignment(.leading)
//                        .padding(.horizontal, 10)
//
                    Spacer()
                        .frame(height: 5)
                    
                    
                  
                    
                    Spacer()
                        .frame(height: 40)
                    
                    Text("do something with a friend")
                        .font(.system(size: 25, weight: .bold))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
//                        .italic()
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    
                    Spacer()
                        .frame(height: 30)
                    
                    NavigationLink(
                        destination: DramaMainView(),
                        label: {
                            Text("Ok, take me to Daily Horizons")
                                .fontWeight(.light)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.center)
                                .frame(width: 275, height: 30, alignment: .leading)
                                .font(.system(size: 20))
                                .padding(10)
                                .background(Color.gray)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                               
                 }
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
