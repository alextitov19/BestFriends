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
            
            Image("FatGuy")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
//            AdPlayerView(name: "backgroundAnimation")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//
            
            VStack {
                
                Text("HUG")
                    .font(.system(size: 65))
                    .fontWeight(.light)
                    .foregroundColor(Color.purple)
                    .frame(height: 30)

                Spacer()
                    .frame(height: 20)
                
                Text("it")
                    .font(.system(size: 50))
                    .fontWeight(.light)
                    .foregroundColor(Color.purple)
                    .frame(height: 30)

                Spacer()
                    .frame(height: 20)
                
                
                Text("Out!")
                    .font(.system(size: 65))
                    .fontWeight(.light)
                    .foregroundColor(Color.purple)
                    .frame(height: 30)

                Spacer()
                    .frame(height: 40)
                
             
                VStack {
                    Link(destination: URL(string: "https://socialtechlabs.com/user-text-message-suggestions/")!) {
                        
                        Text("Set time to meet")
                            .fontWeight(.thin)
                            .frame(width: 225, height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 27))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    }
                    
                    

                    Spacer()
                        .frame(height: 250)
                   
                    VStack {
                        
                        Text("Get Back to Bight Friends")
                            .font(.system(size: 30))
                            .fontWeight(.thin)
                            .foregroundColor(Color.black)
                        
                        
                        Spacer ()
                            .frame(height: 30)
                        
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
                            
                        NavigationLink(
                            destination: Step7_TimeToTalk(),
                            label: {
                                Text("Did this HELP?")
                                    .fontWeight(.thin)
                                    .frame(width: 200, height: 40)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 30))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    }
                )}
            }
        }
    }
}
}








struct Step7_TimeToTalk_Previews : PreviewProvider {
    static var previews: some View {
        Step7_TimeToTalk()
    }
}






