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
                
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey2)
                
                
                ZStack {
                    
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(ColorManager .purple1)
                        .frame(width: 400, height: 400)
                        .shadow(color: ColorManager .purple7, radius: 65, x: 30, y: 50)
                        .opacity(0.95)
                    
                    
                    
                    VStack {
                        
                        
                        Spacer ()
                            .frame(height: 90)
                        
                        Text("It's NEW, it's different!")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey2)
                        
                        Spacer ()
                            .frame(height: 40)
                        
                        Text("Just shake your iPhone")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey2)
                        
                        Text("(while in app).")
                            .italic()
                            .font(.system(size: 10))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey2)
                        
                        
                        Spacer ()
                            .frame(height: 15)
                        
                        Text("Your friend's favorite image")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey2)
                        
                        
                        Text("POPs-UP full-screen")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey2)
                        
                        
                        VStack {
                            
                            Spacer ()
                                .frame(height: 60)
                            
                            Text("* We don't allow 'Likes' on these")
                                .italic()
                                .font(.system(size: 15))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color .black)
                            
                            Text("special images reducing social media's \ntoxic 'comparison' issues")
                                .italic()
                                .font(.system(size: 15))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color .black)
                            
                            Spacer ()
                                .frame(height: 100)
                            
                        }
                        
                    }
                }
            }
        }
    }
}

 
