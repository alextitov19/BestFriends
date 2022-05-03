//
//  TimeToTalk.swift
//  BestFriends
//
//  Created by Social Tech on 4/28/22.
//
import Foundation

import SwiftUI
import AVKit

struct Step7_TimeToTalk: View {
    
    @EnvironmentObject var sessionManager: SessionManager

    var body: some View {
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            AdPlayerView(name: "backgroundAnimation")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            
            VStack {
                
                Text("Be a H E R O")
                    .font(.system(size: 65))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.purple)
                    .frame(height: 30)

                Spacer()
                    .frame(height: 40)
                
                Text("Send us the text message \nthat worked best for you")
                    .font(.system(size: 28))
                    .fontWeight(.thin)
                    .foregroundColor(Color.white)
               
                Spacer()
                    .frame(height: 30)

                Text("We'll include it \non BestFriends")
                    .font(.system(size: 30))
                    .fontWeight(.thin)
                    .foregroundColor(Color.purple)
                    .kerning(10)
                
                
                Spacer()
                    .frame(height: 40)
                
                VStack {
                    Link(destination: URL(string: "https://socialtechlabs.com/user-text-message-suggestions/")!) {
                        
                        Text("Email Your 'text' Suggestion")
                            .fontWeight(.thin)
                            .frame(width: 312, height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 27))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    }
                    
                    

                    Spacer()
                        .frame(height: 70)
                    
                    Text("We'll give you authorship,")
                        .font(.system(size: 28))
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
              
                    Text("so you can show your friends")
                        .font(.system(size: 26))
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                    
                    
                    VStack {
                        
                        Text("")
                            .font(.system(size: 17))
                            .fontWeight(.thin)
                            .foregroundColor(Color.white)
                        
                        
                        Spacer ()
                            .frame(height: 70)
                        
                        Button(action: {
                            sessionManager.showHome()
                        }, label: {
                            Text("HOME")
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
}









struct TimeToTalk_Previews : PreviewProvider {
    static var previews: some View {
        Step7_TimeToTalk()
    }
}






