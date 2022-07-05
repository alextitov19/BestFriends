//
//  NotReadyTalk.swift
//  BestFriends
//
//  Created by Social Tech on 4/28/22.
//


import Foundation
import SwiftUI

struct Step1_NotReadyTalk: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
//        ScrollView {
            ZStack {
                ColorManager.grey4
                      .ignoresSafeArea()
//                Image("purpleBackground")
//                    .resizable()
//                    .ignoresSafeArea()
//                    .scaledToFill()
//                
//               AdPlayerView(name: "backgroundAnimation")
//                    .ignoresSafeArea()
//                    .blendMode(.screen)
                
        ScrollView {
               
                    VStack {
                    
                        Text("I'm still too")
                            .font(.system(size: 60))
                            .fontWeight(.ultraLight)
                            .foregroundColor(Color.blue)
                  
                        Text("U P S E T")
                            .font(.system(size: 80))
                            .fontWeight(.ultraLight)
                            .foregroundColor(Color.blue)
                  
                        Spacer()
                            .frame(height: 20)
                        
                      Text("I need more")
                              .font(.system(size: 30))
                            .italic()
                            .foregroundColor(.white)
                          .fontWeight(.ultraLight)
                          .multilineTextAlignment(.center)
                          .padding(.horizontal, 20)
                    
                    
                      Text("T I M E")
                         
                           .font(.system(size: 70))
                          .foregroundColor(.blue)
                          .fontWeight(.ultraLight)
                          .multilineTextAlignment(.center)
                          .padding(.horizontal, 20)
                    
                    
            
                    
                      

                    VStack {
                       Spacer()
                           .frame(height: 10)
                        
                        Text("Safety Tip:")
                            .foregroundColor(.gray)
                            .font(.system(size: 30, weight: .bold))
                        
                        Spacer()
                        .frame(height: 10)
                        
                        Text("Talking before you're \n ready may make \nmatters worse.")
                            .font(.body)
                            .italic()
                            .foregroundColor(.white)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 20)
                         
                        Spacer()
                        .frame(height: 20)
                       
                        Text("When ready try Step 1")
                                .font(.system(size: 30))
                              .italic()
                              .foregroundColor(.blue)
                            .fontWeight(.ultraLight)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 20)
                        
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


























