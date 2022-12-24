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
                    .foregroundColor(ColorManager.grey2)
             
                
                ZStack {
                    
                    
                    Image(systemName: "heart.fill")
                        .resizable()
                        .foregroundColor(Color .pink)
                        .frame(width: 400, height: 400)
                        .shadow(color: .red, radius: 65, x: 30, y: 50)
                        .opacity(0.8)
                    
                    
                    
                    VStack {
                        
                        
                        Spacer ()
                            .frame(height: 60)
                        
                        Text("If your friend is having a bad day")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color .white)
                        
                        Text("ask them to hold their iPnone")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color .white)
                     
                        Text("to their heart")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color .white)
                        
                        Spacer ()
                            .frame(height: 20)

                        Text("It will vibrate for a few seconds")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color .white)
                        

                  
                        
                           Spacer ()
                                .frame(height: 100)
                   
                    }
                }
            }
        }
    }
    
}
 
