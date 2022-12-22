//
//  InfoCreateChatRm.swift
//  BestFriends
//
//  Created by Social Tech on 10/25/22.
//


import Foundation
import SwiftUI
import AVKit

struct InfoCreateChatRm: View {
   
    let user: User
   
    var body: some View {
        
        ZStack {
            
            ColorManager .purple1
                .ignoresSafeArea()
                .onAppear()
            
        
            
            
            VStack {
          
                
                
                Text("Set my 'Vibe'")
                    .font(.system(size: 35))
                    .italic()
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.pmbc_blue)
             
                
                ZStack {
                    
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(ColorManager .purple1)
                        .frame(width: 400, height: 400)
                        .shadow(color: .cyan, radius: 65, x: 30, y: 50)
                        .opacity(0.95)
                    
                    
                    
                    VStack {
                        
                        
                        Spacer ()
                            .frame(height: 60)
                        
                        Text("Let your friends know")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.purple4)
                        Text("something happen changing your day.")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.purple4)
                        
                        Spacer ()
                            .frame(height: 15)
                        
                        Text("Select your new 'Vibe'")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.purple4)
                        
//                        Text("and send brief reason.")
//                            .italic()
//                            .font(.system(size: 20))
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(ColorManager.purple4)
                        
                        Spacer ()
                            .frame(height: 15)
                        
                        Text("Alert friend(s) via push notification.")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.purple4)
//
//
//                        Spacer ()
//                            .frame(height: 20)
//                        Text("Tap image to see next friend's image.")
//                            .italic()
//                            .font(.system(size: 20))
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(ColorManager.purple4)
//
//
                        
                        
                           Spacer ()
                                .frame(height: 100)
                   
                    }
                }
            }
        }
    }
    
}
 

