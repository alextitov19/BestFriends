//
//  NotReadyTalk.swift
//  BestFriends
//
//  Created by Social Tech on 4/28/22.
//


import Foundation
import SwiftUI

struct NotReadyTalk: View {
    
    var body: some View {
//       NavigationView {
            
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
                    
                    Text("I'm still too")
                        .font(.system(size: 70))
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20)
                  
                    Text("U P S E T")
                        .font(.system(size: 100))
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
                        .frame(height: 30)
                    
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
                        .frame(height: 40)

                    VStack {
                        
                        
                        Spacer ()
                            .frame(height: 70)
                        
                        NavigationLink(
                            destination: DramaMainView(),
                            label: {
                                Text("< back  \nWhen ready to start; tap Circle 2")
                                    .fontWeight(.medium)
                                    .frame(width: 370, height: 100)
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

}
    

struct NotReadyTalk_Previews : PreviewProvider {
    static var previews: some View {
        NotReadyTalk()
    }
}


























