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
               

                Text("Don't wait until life")
                    .font(.system(size: 25))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple3)
                
                Text("isn't hard to begin")
                    .font(.system(size: 25))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple3)
                
                Spacer()
                .frame(height: 35)
                
                Text("Living")
                    .font(.system(size: 30))
                    
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(.white)
                   .foregroundColor(ColorManager.grey2)
                
                Text("Your Dream")
                    .font(.system(size: 40))
                    
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(.white)
                   .foregroundColor(ColorManager.grey2)
                
                Spacer()
                .frame(height: 35)
            
                
                Text("It's about picking you up and making it ok, then setting your down gently sending you on your way ...")
                    .font(.system(size: 17))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(.white)
                   .foregroundColor(ColorManager.grey2)
                   .padding()
                
                Text("As the voice inside you becomes louders and ours softer, in realizing your dream you become big and bold, yet before its over, humbled.")
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
                
            VStack {
 

                
                Spacer()
                .frame(height: 75)
                

           
               
            }
        }
        
    }
}
}




