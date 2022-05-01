//
//  YouGotThis.swift
//  BestFriends
//
//  Created by Social Tech on 5/1/22.
//

import Foundation
import SwiftUI

struct YouGotThis: View {
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                    .ignoresSafeArea()
//
//                Image("onPhone")
//                    .resizable()
//                    .frame(width: 500, height: 1000)
//
//
                              Image("VirtualHug")
                                   .resizable()
                                  .frame(width: 800, height: 1000)
                
                
                
//
//                AdPlayerView(name: "backgroundAnimation")
//                    .ignoresSafeArea()
//                    .blendMode(.screen)
//                    .offset(y: -250)
//
                VStack {
                       
                  

                    Spacer()
                        .frame(height: 520)
                    
                    NavigationLink(
                        destination: TimeToTalk(),
                        label: {
                            Text("it's going to be okay")
                                .fontWeight(.light)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.center)
                                .frame(width: 350, height: 50, alignment: .leading)
                                .font(.system(size: 40))
                                .padding(10)
                                .background(Color.pink)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                               
                 }
                      }
                    
               }
            }
        }
    

struct YouGotThis_Previews : PreviewProvider {
    static var previews: some View {
        YouGotThis()
    }
}


