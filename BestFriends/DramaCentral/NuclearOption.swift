//
//  NuclearOption.swift
//  BestFriends
//
//  Created by Social Tech on 4/28/22.
//

import Foundation
import SwiftUI
import AVKit

struct NuclearOption: View {
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                    .ignoresSafeArea()
            
                Image("purpleBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                AdPlayerView(name: "backgroundAnimation")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                    .offset(y: -250)
                
                VStack {
                    
//                    Text("Before going")
//                        .font(.system(size: 50))
//                        .foregroundColor(.gray)
//                        .fontWeight(.ultraLight)
//                        .multilineTextAlignment(.center)
//
//
//                    Text("N U C L E A R")
//                        .font(.system(size: 65))
//                        .foregroundColor(.gray)
//                        .fontWeight(.ultraLight)
//                        .multilineTextAlignment(.center)
//
                    
                
                    ZStack {
                 
                    Image(systemName: "heart.fill")
        
                             .resizable()
                             .frame(width: 190, height: 170, alignment: .leading)
       
                             .foregroundColor(Color(hue: 0.714, saturation: 0.411, brightness: 0.626))
                       .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 3, x: 1, y: 3)

                        
                     Text("please think \ntwice before ...")
                             .font(.system(size: 20))
                             .foregroundColor(.white)
                             .fontWeight(.medium)
                             .multilineTextAlignment(.center)
                    }
                    
                    
                        Spacer()
                            .frame(height: 50)
      
                    Text("Unfriending and")
                        .font(.system(size: 25))
                        .italic()
                        .foregroundColor(.gray)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    Spacer()
                        .frame(height: 5)
                    
                    Text("posting your friend's private messages \n on social media")
                        .font(.system(size: 25, weight: .bold))
                        .italic()
                        .foregroundColor(.gray)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    Spacer()
                        .frame(height: 15)
                    
//                    Text("*REMEMBER")
//                        .font(.system(size: 30, weight: .bold))
//                        .italic()
//                        .foregroundColor(.gray)
//                        .fontWeight(.medium)
//                        .multilineTextAlignment(.leading)
//                        .padding(.horizontal, 0)
//
                    VStack {
                        Spacer()
                            .frame(height: 60)
                    
                    NavigationLink(
                        destination: DramaMainView(),
                        label: {
                            Text("< back    Remember, 30 minutes ago you were best friends and most likely will be again!")
                                .fontWeight(.light)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.center)
                                .frame(width: 310, height: 100, alignment: .leading)
                                .font(.system(size: 20))
                                .padding(10)
                                .background(Color.purple)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                               
                 }
                      }
                    
               }
            }
        }
    
}
struct NuclearOption_Previews : PreviewProvider {
    static var previews: some View {
        NuclearOption()
    }
}


