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
                
                Text("Science behind")
                    .font(.system(size: 30))
                    .italic()
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple3)
                
                Text("S U C C E S S F U L L Y")
                    .font(.system(size: 35))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple3)
                Spacer()
                .frame(height: 20)
                
               
                Text("living your Dreams")
                    .font(.system(size: 40))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple3)
            
                Spacer()
                .frame(height: 15)
                
          
                

//
                VStack {
                
                Spacer()
                .frame(height: 35)
            
                
                Text("Combining your Emotions with \nyour Innate Abilities & Strengths")
                    .font(.system(size: 17))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(.white)
                   .foregroundColor(ColorManager.grey2)
                   .padding()
                    
                    
                    
                    
                    Link(destination: URL(string: "https://socialtechlabs.com/neuroscience/")!) {
                        
                        Text("Neuroscience & Your Strengths")
                            .fontWeight(.thin)
                            .frame(width: 310, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 20))
                            .background(ColorManager.pmbc_green)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    }
                      
                    
                    
                
             
      
      
   
                Spacer()
                .frame(height: 75)
                

           
               
            }
        }
        
    }
}
}




