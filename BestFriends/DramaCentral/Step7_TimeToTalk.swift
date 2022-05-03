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
                
                Text("Ready to meet")
                    .font(.system(size: 40, weight: .bold))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.purple)
                
                
                Text("IN-PERSON?")
                    .font(.system(size: 43, weight: .bold))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.purple)
                    .kerning(10)
                
                
                Spacer()
                    .frame(height: 30)
                
                VStack {
                    Link(destination: URL(string: "https://socialtechlabs.com/listen-to-them/")!) {
                        
                        Text("Be Open - Hear them Out")
                            .fontWeight(.thin)
                            .frame(width: 310, height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 27))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    }
                    
                    
                    
                    Spacer()
                        .frame(height: 70)
                    
                    
                    Text("Send them a time \nto meet in Chat")
                        .font(.system(size: 30))
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                    
                    VStack {
                        NavigationLink(
                            destination: TryThis(),
                            label: {
                                Text("Invite")
                                    .fontWeight(.thin)
                                    .foregroundColor(Color.white)
                                    .frame(width: 150.0, height: 40)
                                    .font(.system(size: 30))
                                    .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
                                
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                            }
                        )}
                    VStack {
                        
                        Text("We'll send them a \npush notification")
                            .font(.system(size: 30))
                            .fontWeight(.thin)
                            .foregroundColor(Color.white)
                        
                        
                        Spacer ()
                            .frame(height: 70)
                        
                        Button(action: {
                            sessionManager.showHome()
                        }, label: {
                            Text("DONE")
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






