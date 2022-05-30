//
//  FG_BeAccountable.swift
//  BestFriends
//
//  Created by Social Tech on 5/30/22.
//


import Foundation

import SwiftUI
import AVKit

struct FG_BeAccountable: View {
    
    @EnvironmentObject var sessionManager: SessionManager

    var body: some View {
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
         
              
              VStack {
              
               
                    Text("If your Friend Group")
                        .font(.system(size: 40))
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                  
                  Text("is WACKED")
                      .font(.system(size: 60))
                      .foregroundColor(.white)
                      .fontWeight(.ultraLight)
                      .multilineTextAlignment(.center)
                        
                    Spacer()
                        .frame(height: 25)
                    
                    Text("it seems like everything")
                        .font(.system(size: 30))
                        .fontWeight(.light)
                        .foregroundColor(Color.blue)
                    
                    Text("SUCKS")
                        .font(.system(size: 30))
                        .fontWeight(.light)
                        .foregroundColor(Color.blue)
                   
                    Spacer()
                        .frame(height: 40)
              
                  VStack {
                  
                   
                        Text("Come together")
                            .font(.system(size: 50))
                            .foregroundColor(.white)
                            .fontWeight(.ultraLight)
                            .multilineTextAlignment(.center)
                      
                      Text("as a TEAM")
                          .font(.system(size: 60))
                          .foregroundColor(.white)
                          .fontWeight(.ultraLight)
                          .multilineTextAlignment(.center)
                            
                        Spacer()
                            .frame(height: 25)
                        
                        Text("and ")
                            .font(.system(size: 30))
                            .fontWeight(.light)
                            .foregroundColor(Color.blue)
                        
                        Text("SMILE")
                            .font(.system(size: 50))
                            .fontWeight(.light)
                            .foregroundColor(Color.blue)
                       
                        Spacer()
                            .frame(height: 40)
                      

                
            VStack {
                Spacer()
                    .frame(height: 70)
                    
                    NavigationLink(
                        destination: Step2FG_NewSolutions(),
                        label: {
                            Text("NEXT")
                                .fontWeight(.thin)
                                .frame(width: 100, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                      
                        })

            }
                Spacer()
                    .frame(height: 25)
                
                Text("")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                
        }
    }
}
}

}



struct FG_BeAccountable_Previews : PreviewProvider {
    static var previews: some View {
        FG_BeAccountable()
    }
}

