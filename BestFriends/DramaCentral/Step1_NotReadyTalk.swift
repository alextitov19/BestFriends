//
//  NotReadyTalk.swift
//  BestFriends
//
//  Created by Social Tech on 4/28/22.
//


import Foundation
import SwiftUI

struct Step1_NotReadyTalk: View {
    
    var body: some View {
            ZStack {
                Image("purpleBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
               AdPlayerView(name: "backgroundAnimation")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                
                VStack {
                    
                    Text("I'm still too")
                        .font(.system(size: 70))
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20)
                  
                    Text("U P S E T")
                        .font(.system(size: 90))
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20)
                  
                    
                      Text("and need more")
                          .font(.system(size: 40))
                          .foregroundColor(.white)
                          .fontWeight(.ultraLight)
                          .multilineTextAlignment(.center)
                          .padding(.horizontal, 20)
                    
                    
                      Text("T I M E")
                          .font(.system(size: 50))
                          .foregroundColor(.white)
                          .fontWeight(.ultraLight)
                          .multilineTextAlignment(.center)
                          .padding(.horizontal, 20)
                    
                    
                    
                    Spacer()
                        .frame(height: 20)
                    
                    VStack {
                        Link(destination: URL(string: "https://socialtechlabs.com/ready-to-talk/")!) {
                   
                               Text("When will I be ready?")
                                    .fontWeight(.thin)
                                    .frame(width: 290, height: 50)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 30))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            }
                    
                    
                    Spacer()
                        .frame(height: 60)

                    VStack {
                        
                        
                        Spacer ()
                            .frame(height: 70)
                        
                        NavigationLink(
                            destination: Step2_FightLandingView(),
                            label: {
                                Text("Step-2")
                                    .fontWeight(.thin)
                                    .frame(width: 110, height: 40)
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
    

struct NotReadyTalk_Previews : PreviewProvider {
    static var previews: some View {
        Step1_NotReadyTalk()
    }
}


























