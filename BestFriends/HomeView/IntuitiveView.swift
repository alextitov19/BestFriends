//
//  IntuitiveView.swift
//  BestFriends
//
//  Created by Social Tech on 7/29/22.
//

import Foundation
import SwiftUI


struct IntuitiveView: View {
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
            
            ColorManager.grey4
                .ignoresSafeArea()
                .onAppear()
            
            VStack {
               

                Text("BestFriends")
                    .font(.system(size: 55))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.blue)
                
                Text("bringing you home")
                    .font(.system(size: 25))
                    .italic()
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.blue)
                
                Spacer()
                .frame(height: 35)

        
                VStack {
                  
                   
                    Text("My Aura")
                        .font(.system(size: 35))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.purple3)

                    Text("Sharing LIFE with FRIENDS")
                        .font(.system(size: 17))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.grey1)

                
                   
                    
                    Spacer()
                    .frame(height: 35)
                    
                    Text("My Room")
                        .font(.system(size: 35))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.purple3)
                    
                Text("SAFE on BAD days")
                    .font(.system(size: 17))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey1)

                }
                
            VStack {
                
                Spacer()
                .frame(height: 35)
                
          
           Text("Drama & Fights")
               .font(.system(size: 35))
               .fontWeight(.light)
               .multilineTextAlignment(.center)
               .foregroundColor(ColorManager.purple3)
           
           Text("getting back to BEING FRIENDS")
               .font(.system(size: 17))
               .fontWeight(.light)
               .multilineTextAlignment(.center)
               .foregroundColor(ColorManager.grey1)
            
   
                Spacer()
                     .frame(height: 35)
                 
                
                Text("My Horizons")
                    .font(.system(size: 35))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple3)

                Text("building DREAMS together")
                    .font(.system(size: 17))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey1)
                }
                
            VStack {
 
//
             
              
                Spacer()
                .frame(height: 25)
                
                NavigationLink(
                    destination: InfoViewPlanet(user: user),
                    label: {
                        Text("Getting STARTED")
                            .fontWeight(.thin)
                            .frame(width: 200, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 25))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                  
                    })
                
                NavigationLink(
                    destination: ContentView(),
                    label: {
                        Text("Get PREMIUM")
                            .fontWeight(.thin)
                            .frame(width: 150, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 25))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                  
                    })
                

                
                Spacer()
                .frame(height: 75)
                

           
               
            }
        }
        
    }
}
}




