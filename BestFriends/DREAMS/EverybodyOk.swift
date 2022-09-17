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
                
                Text("D R E A M S")
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
            
                
                Text("These poems help you supplement the much needed talent of disciplined (see 'the stuff inside') with the emotion of 'passion' to power your dreams.")
                    .font(.system(size: 17))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(.white)
                   .foregroundColor(ColorManager.grey2)
                   .padding()
                
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




