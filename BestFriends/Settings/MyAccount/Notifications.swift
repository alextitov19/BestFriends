//
//  Notifications.swift
//  BestFriends
//
//  Created by Social Tech on 5/23/21.
//


import Amplify
import SwiftUI

struct Notifications: View {
    @State private var landingPageNotifications = true
    @State private var blueChatNotifications = true
   
    var body: some View {
        
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                Text("Manage Notifications")
                    .foregroundColor(.white)
                    .font(.title)
            
                Spacer().frame(height: 25)
               
                
                Text("Dont remove lp notifications")
                    .frame(width: 300, height: 50, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .cornerRadius(25)
                    .font(.system(size: 25).italic())
                    
                
                VStack {
                    
                    Spacer()
                        .frame(height: 75)
                   
                        Toggle("LandingPage Notifications", isOn: $landingPageNotifications)
                           
                            .frame(width: 375, height: 50, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .cornerRadius(25)
                            .font(.system(size: 25, weight: .semibold))
                           
                        
                    Spacer()
                        .frame(height: 50)
                   
                        
                    Toggle("Blue-Chat Notifications", isOn: $blueChatNotifications)
                       
                        .frame(width: 375, height: 50, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .cornerRadius(25)
                        .font(.system(size: 25, weight: .semibold))
                       
                    
              
                    
                    Spacer()
                        .frame(height: 100)
                
                    }
                }
            }
        }
    }

struct Notifications_Previews : PreviewProvider {
    static var previews: some View {
        Notifications()
    }
}


