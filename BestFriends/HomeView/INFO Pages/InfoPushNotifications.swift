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
                
                Text("-Tap friend's planet that")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .foregroundColor(ColorManager.grey1)
                //                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                
                Text("sent notification")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .foregroundColor(ColorManager.grey1)
                //                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                
                Text("-Tap appropriate notification")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .foregroundColor(ColorManager.grey1)
                //                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                
                Text("from dropdown menu")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .foregroundColor(ColorManager.grey1)
                //                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                
                Text("-tap planet to 'hide' dropdown")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .foregroundColor(ColorManager.grey1)
                //                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                
                
                Spacer()
                    .frame(height: 100)
                
                
                
                
            }
        }
        
    }
}



