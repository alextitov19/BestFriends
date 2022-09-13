//
//  EverybodyOk.swift
//  BestFriends
//
//  Created by Social Tech on 7/31/22.
//

import Foundation
import SwiftUI


struct EverybodyOk: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    
    
    var body: some View {
        ZStack {
            
//            Image("purpleBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
//
//            AdPlayerView(name: "FieldFlowers")
//                .ignoresSafeArea()
            
            ColorManager.grey3
                .ignoresSafeArea()
                .onAppear()
            
            VStack {
               

                Text("Don't wait until life")
                    .font(.system(size: 35))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple3)
                
                Text("isn't hard to begin")
                    .font(.system(size: 35))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple3)
                
                Spacer()
                .frame(height: 35)
                
                Text("Living")
                    .font(.system(size: 50))
                    
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(.white)
                   .foregroundColor(ColorManager.grey2)
                
                Text("Your Dream")
                    .font(.system(size: 60))
                    
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(.white)
                   .foregroundColor(ColorManager.grey2)
                
                Spacer()
                .frame(height: 35)

        
                VStack {
                  
//
//                    Text("NO")
//                        .font(.system(size: 50))
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager.purple3)
//
//                    Text("To-Do-Lists")
//                        .font(.system(size: 25))
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager.grey1)
//
//
                   
                    
                    Spacer()
                    .frame(height: 35)
              }
                
            VStack {
 
//
             
//
//                Spacer()
//                .frame(height: 25)
//
//                NavigationLink(
//                    destination: InfoViewPlanet(user: user),
//                    label: {
//                        Text("Getting STARTED")
//                            .fontWeight(.thin)
//                            .frame(width: 200, height: 40)
//                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                            .font(.system(size: 25))
//                            .background(ColorManager.purple3)
//                            .cornerRadius(15)
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//                    })
                
                
                Spacer()
                .frame(height: 75)
                

           
               
            }
        }
        
    }
}
}




