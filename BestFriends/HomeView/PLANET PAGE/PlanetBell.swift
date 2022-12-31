//
//  PlanetBell.swift
//  BestFriends
//
//  Created by Social Tech on 12/31/22.
//



import Foundation
import SwiftUI
import AVKit

struct PlanetBell: View {
   
    let user: User
   
    @EnvironmentObject var sessionManager: SessionManager
    
    
    var body: some View {
        
        ZStack {
            
            ColorManager .purple1
                .ignoresSafeArea()
                .onAppear()
            
        
            
            
            VStack {
          
                
                
                Text("Received")
                    .font(.system(size: 35))
                    .italic()
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey2)
             
                
                Text("Push Notification")
                    .font(.system(size: 35))
                    .italic()
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey2)
             
                Text("from a Friend?")
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
                        .shadow(color: .purple, radius: 65, x: 30, y: 50)
                        .opacity(0.95)
                    
                    
                    
                    VStack {
                        
                        
                        Spacer ()
                            .frame(height: 80)
                        
                     
                                    Button(action: {
                                        sessionManager.showLogin()
                                    },
                                           label: {
                                        Text("On Home Page")
                                            .frame(width: 150, height: 30)
                                            .foregroundColor(.white)
                                            .font(.system(size: 20))
                                            .background(ColorManager.grey4)
                                            .cornerRadius(10)
                                            .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                                            .opacity(0.70)
                                        
                                    })
                                        
                        
                        Text("Tap friend's planet that sent notificaion")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey3)
                        
                        Spacer ()
                            .frame(height: 25)
                        
                        Text("Tap appropriate button \nin dropdown menu")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey3)
                        
//                        Text("and send brief reason.")
//                            .italic()
//                            .font(.system(size: 20))
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(ColorManager.purple4)
                        
                        Spacer ()
                            .frame(height: 25)
                        
                        Text("Re-tap friend's planet")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey3)
                 
                        Text("to hide dropdown menu")
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
                                           

