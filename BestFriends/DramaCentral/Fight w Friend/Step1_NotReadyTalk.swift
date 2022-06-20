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
//        ScrollView {
            ZStack {
                Image("purpleBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
               AdPlayerView(name: "backgroundAnimation")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                
        ScrollView {
               
                    VStack {
                    
                    Text("I'm still too")
                            .font(.largeTitle)
                        .foregroundColor(.blue)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20)
                  
                        Text("U P S E T")
                            .font(.largeTitle)
                            .foregroundColor(.blue)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20)
                  
                    
                      Text("and need more")
                            .font(.largeTitle)
//                            .font(.system(size: 40))
                          .foregroundColor(.white)
                          .fontWeight(.ultraLight)
                          .multilineTextAlignment(.center)
                          .padding(.horizontal, 20)
                    
                    
                      Text("T I M E")
                            .font(.largeTitle)
//                            .font(.system(size: 50))
                          .foregroundColor(.white)
                          .fontWeight(.ultraLight)
                          .multilineTextAlignment(.center)
                          .padding(.horizontal, 20)
                    
                    
                    
                    Spacer()
//                        .frame(height: 50)
                    
                      

                    VStack {
                       Spacer()
//                            .frame(height: 50)
                        
                        Text("Safety Tip:")
                            .font(.largeTitle)
                            .font(.system(size: 40))
                            .foregroundColor(.white)
                            .fontWeight(.ultraLight)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 20)
                        
                        Spacer()
//                            .frame(height: 10)
                        
                        Text("Talking before you're \n ready may make \nmatters worse.")
                            .font(.body)
                            .italic()
                            .foregroundColor(.white)
                            .fontWeight(.light)
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


























