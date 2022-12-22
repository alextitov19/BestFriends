//
//  InfoInsideChat.swift
//  BestFriends
//
//  Created by Social Tech on 10/25/22.
//



import Foundation
import SwiftUI
import AVKit

struct InfoInsideChat: View {
   
    let user: User
   
    var body: some View {
        
        ZStack {
            
            ColorManager .purple1
                .ignoresSafeArea()
                .onAppear()
            
        
            
            
            VStack {
                
                
                
                Text("Friend Need a HUG?")
                    .font(.system(size: 35))
                    .italic()
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.pmbc_blue)
             
                
                ZStack {
                    
                    
                    Image(systemName: "heart.fill")
                        .resizable()
                        .foregroundColor(Color .pink)
                        .frame(width: 400, height: 400)
                        .shadow(color: .cyan, radius: 65, x: 30, y: 50)
                        .opacity(0.5)
                    
                    
                    
                    VStack {
                        
                        
                        Spacer ()
                            .frame(height: 60)
                        
                        Text("If friend having a bad day")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color .white)
                     
                        Text("holds thier phone to their heart,")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.purple4)
                        
                        Spacer ()
                            .frame(height: 15)
                        
                        Text("it vibrates for a few seconds.")
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
                        
                        Text("Send HUG via push notification.")
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
 
