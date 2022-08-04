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
                    .font(.system(size: 50))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.blue)
                
            
                
                Text("PURPLE")
                    .font(.system(size: 60))
                
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.purple)
                
                Text("(a subscription for parents")
                    .font(.system(size: 25))
                    .italic()
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                
                
                Text("to help support their teens)")
                    .font(.system(size: 25))
                    .italic()
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                
                Spacer()
                .frame(height: 35)

        
                VStack {
                  
                   
                    Text("See More Smiles")
                        .font(.system(size: 35))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.purple3)
//
//                    Text("All parents want their \nteens to be happy")
//                        .font(.system(size: 17))
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager.grey1)

                
                   
                    
                    Spacer()
                    .frame(height: 35)
                    
                    Text("Less Fights")
                        .font(.system(size: 35))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.purple3)
                    
//                Text("Help resolve fights")
//                    .font(.system(size: 17))
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(ColorManager.grey1)

                }
                
            VStack {
                
                Spacer()
                .frame(height: 35)
                
          
           Text("More Supportive")
               .font(.system(size: 35))
               .fontWeight(.light)
               .multilineTextAlignment(.center)
               .foregroundColor(ColorManager.purple3)
                
                Text("Friends")
                    .font(.system(size: 35))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple3)
           
//           Text("Teens build stronger \nmore supportive friendships")
//               .font(.system(size: 17))
//               .fontWeight(.light)
//               .multilineTextAlignment(.center)
//               .foregroundColor(ColorManager.grey1)
//
   
                Spacer()
                     .frame(height: 30)
                 
//
//                Text("My Horizons")
//                    .font(.system(size: 35))
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(ColorManager.purple3)
//
//                Text("building DREAMS together")
//                    .font(.system(size: 17))
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(ColorManager.grey1)
                }
                
            VStack {
 
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
//
                NavigationLink(
                    destination: Subscriptions(),
                    label: {
                        Text("BestFriends PURPLE")
                            .fontWeight(.thin)
                            .frame(width: 250, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 25))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                  
                    })
                
                Text("Is your teen's happiness")
                    .font(.system(size: 25))
                    .italic()
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.blue)
                
                Text("worth $10 a year?")
                    .font(.system(size: 25))
                    .italic()
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.blue)
                
                Spacer()
                .frame(height: 75)
                

           
               
            }
        }
        
    }
}
}




