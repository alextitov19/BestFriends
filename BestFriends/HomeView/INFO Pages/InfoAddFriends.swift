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
                
                
                Text("How Chat Works")
                    .font(.system(size: 35))
                    .italic()
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.pmbc_blue)
             
                
                ZStack {
                    
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(ColorManager .purple1)
                        .frame(width: 300, height: 300)
                        .shadow(color: .cyan, radius: 65, x: 30, y: 50)
                        .opacity(0.95)
                    
                    
                    
                    VStack {
                        
                        
                        Spacer ()
                            .frame(height: 55)
                        
                        Text("Long-tap messages to:")
                            .font(.system(size: 15))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color .blue)
                        
                        Text("-save 'Nice' message to SmileVault")
                            .font(.system(size: 15))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color .blue)
                    
                        
                        Text("-Report Abuse")
                            .font(.system(size: 15))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color .blue)
                        
                        Spacer ()
                            .frame(height: 15)
                        
                        Text("Tap [Remove Me] to be removed")
                            .font(.system(size: 15))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color .blue)
                        
                        Spacer ()
                            .frame(height: 15)
                        
                        Text("Tap [Lock] icon to:")
                            .font(.system(size: 15))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color .blue)
                        
                        VStack {
                        
                            Text("-hide Chat")
                                .font(.system(size: 15))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color .blue)
                            
                            Text("-enter 4 digit PIN un-hide")
                                .font(.system(size: 15))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color .blue)
                        
                            Spacer ()
                                .frame(height: 15)
                            
                            Text("*** Chat has MANUAL scroll ***")
                                .font(.system(size: 15))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color .blue)
                            Spacer ()
                                .frame(height: 100)
                            
                        }
                        
                    }
                }
            }
        }
    }
    
}
 
