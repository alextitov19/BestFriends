//
//  InfoSilence.swift
//  BestFriends
//
//  Created by Social Tech on 1/6/23.
//



import Foundation
import SwiftUI
import AVKit

struct InfoSilence: View {
   
    let user: User
   
    var body: some View {
        
        ZStack {
            
            ColorManager .purple1
                .ignoresSafeArea()
                .onAppear()
            
        
            
            
            VStack {
          
                
                
                Text("My Silence")
                    .font(.system(size: 35))
                    .italic()
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey2)
             
                
                ZStack {
                    
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(ColorManager .purple1)
                        .frame(width: 400, height: 400)
                        .shadow(color: .gray, radius: 65, x: 30, y: 50)
                        .opacity(0.95)
                    
                    
                    
                    VStack {
                        
                        
                        Spacer ()
                            .frame(height: 80)
                        
                        Text("Difficult day?")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey3)
                        
                        Text("Just want to be by yourself")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey3)
                        
                        Spacer ()
                            .frame(height: 25)
                        
                        Text("Safe in your room")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey3)
                        
                        Text("sitting on your bed")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey3)
                        
                        Spacer ()
                            .frame(height: 25)
                        
                        Text("Listening to your special songs")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey3)
                 
                        Text("Reading saved nice messages")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey3)
                        
                        
                           Spacer ()
                                .frame(height: 100)
                   
                    }
                }
            }
        }
    }
    
}
 
