//
//  InfoAddFriends.swift
//  BestFriends
//
//  Created by Social Tech on 10/25/22.
//


import Foundation
import SwiftUI
import AVKit

struct InfoAddFriends: View {
   
    let user: User
   
    var body: some View {
        
        ZStack {
            
            ColorManager .purple1
                .ignoresSafeArea()
                .onAppear()
            
        
            
            
            VStack {
                
                
                Text("PhotoPOP")
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
                            .frame(height: 30)
                        
                        Text("It's cool.")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.purple4)
                        Text("Just shake your iPhone (while in app).")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.purple4)
                        
                        Spacer ()
                            .frame(height: 10)
                        Text("Your friend's image")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.purple4)
                        
                     
                        Text("POPs up full-screen.")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.purple4)


                        Spacer ()
                            .frame(height: 20)
                        Text("Tap image to see next friend's image.")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.purple4)
                           
                        
                        
                        
                           Spacer ()
                                .frame(height: 100)
                            
                        }
                        
                    }
                }
            }
        }
    }
    

 
