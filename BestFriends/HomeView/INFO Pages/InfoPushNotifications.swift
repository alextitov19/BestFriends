//
//  InfoPushNotifications.swift
//  BestFriends
//
//  Created by Social Tech on 10/25/22.
//


import Foundation
import SwiftUI


struct InfoPushNotifications: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        
        ZStack {
            
            ColorManager.grey4
                .ignoresSafeArea()
                .onAppear()
            
            
            VStack {
                
                Text("Push Notification")
                    .font(.system(size: 35))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple3)
                
                
                
                
                  
                  Text("-Tap friend's planet that sent Push Notification \n-Tap appropriate notification from \n      dropdown menu \n\nThen, just tap planet to 'hide' dropdown")
                      .font(.system(size: 17))
                      .fontWeight(.light)
                      .foregroundColor(Color .white)
                      .padding()
                
             
                Spacer()
                    .frame(height: 100)
                
                
                
                
            }
        }
        
    }
}



