//
//  EverybodyOk.swift
//  BestFriends
//
//  Created by Social Tech on 7/31/22.
//

import Foundation
import SwiftUI
import AVKit


struct EverybodyOk: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    
    
    var body: some View {
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()

//            AdPlayerView(name: "FieldFlowers")
//                .ignoresSafeArea()
            
//            ColorManager.purple7
//                .ignoresSafeArea()
//                .onAppear()
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            VStack {
                
                Text("S U C C E S S")
                    .font(.system(size: 40))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple3)
               
                Text("for the less")
                    .font(.system(size: 30))
                    .italic()
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple3)
            
                Spacer()
                .frame(height: 15)
                
                
                Text("D I S I P L I N E D")
                    .font(.system(size: 40))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple3)
                
             
                

//
                VStack {
                
                Spacer()
                .frame(height: 35)
            
                
                Text("These poems help you supplement the much needed talent of disciplined (see 'neuroscience') with the emotion of 'passion' to power your dreams.")
                    .font(.system(size: 17))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(.white)
                   .foregroundColor(ColorManager.grey2)
                   .padding()
                    
                    
                    
                    
                    Link(destination: URL(string: "https://socialtechlabs.com/neuroscience/")!) {
                        
                        Text("Neuroscience - Strengths")
                            .fontWeight(.thin)
                            .frame(width: 310, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 23))
                            .background(ColorManager.pmbc_green)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    }
                      
                    
                    
                
                Text("As the voice inside you becomes louders and ours softer, in realizing your dream you will become unstoppable, yet before its over, humbled.")
                    .font(.system(size: 17))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(.white)
                   .foregroundColor(ColorManager.grey2)
                   .padding()
                     
                     
                     
        VStack {
           
                    
                    Spacer()
                    .frame(height: 35)
              }
                
                Text("Don't wait until life")
                    .font(.system(size: 25))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple3)
                
                Text("isn't hard to begin living")
                    .font(.system(size: 25))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple3)
                
                Spacer()
                .frame(height: 15)
                
                Text("Your Dream")
                    .font(.system(size: 40))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(.white)
                   .foregroundColor(ColorManager.purple3)
          
   
                Spacer()
                .frame(height: 75)
                

           
               
            }
        }
        
    }
}
}




