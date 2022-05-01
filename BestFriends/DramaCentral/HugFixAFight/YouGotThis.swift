//
//  YouGotThis.swift
//  BestFriends
//
//  Created by Social Tech on 5/1/22.
//

import Foundation
import SwiftUI

struct YouGotThis: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
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
                
    //            put in Friend 1 planet
                Image("2 weeks")
            
                
                
                VStack {
                    Spacer()
                        .frame(height: 500)
                    
                    NavigationLink(
                        destination: TimeToTalk(),
                        label: {
                            Text("you got this >")
                                .fontWeight(.light)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .frame(width: 350, height: 40, alignment: .leading)
                                .font(.system(size: 40))
                                .padding(10)
                                .background(Color.purple)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                    Spacer()
                        .frame(height: 600)
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


