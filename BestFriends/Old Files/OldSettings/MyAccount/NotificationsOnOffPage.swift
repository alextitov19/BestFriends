//
//  Notifications.swift
//  BestFriends
//
//  Created by Social Tech on 5/23/21.
//


import Amplify
import SwiftUI

struct NotificationsOnOffPage: View {
    @State private var landingPageNotifications : Bool
    @State private var broadcastNotifications : Bool

    init() {
        let user = UserDataSource().getCurrentUser()
        landingPageNotifications = user.notificationsLP
        broadcastNotifications = user.notificationsBroadcast
    }
    
    var body: some View {
        
        ZStack {
            
            Color(#colorLiteral(red: 0.4874756932, green: 0.2377186716, blue: 0.9663465619, alpha: 0.9))
                .ignoresSafeArea()
            ZStack {
                Circle()
                    .frame(width: 400, height: 400)
                    .foregroundColor(Color(#colorLiteral(red: 0.4874756932, green: 0.2377186716, blue: 0.9663465619, alpha: 1)))
                    .offset(x: 200, y: -400)
                
                Circle()
                    .frame(width: 300, height: 300)
                    .foregroundColor(Color(#colorLiteral(red: 0.4874756932, green: 0.2377186716, blue: 0.9663465619, alpha: 1)))
                    .offset(x: -200, y: -100)
                
                Circle()
                    .frame(width: 200, height: 200)
                    .foregroundColor(Color(#colorLiteral(red: 0.4874756932, green: 0.2377186716, blue: 0.9663465619, alpha: 1)))
                    .offset(x: 150, y: 100)
            }
            
            VStack {
                Text("Manage Notifications")
                    .font(.system(size: 35))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                
                Spacer().frame(height: 50)
                
                
                Text("Hold Up! Here's the Dealio ... ")
                    .frame(width: 415, height: 30, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0, blue: 0.4185581803, alpha: 1)))
                    .cornerRadius(30)
                    .font(.system(size: 30)
                    .italic())
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                
                
                
                Spacer().frame(height: 20)
                
                Text("BestFriends is designed to help you track down your friends when you NEED them. If you turn off Notifications we can NOT find your friends in a timely manner.")
                    .frame(width: 375, height: 200, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .cornerRadius(25)
                    .font(.system(size: 27)
                    .italic())
                
               
                VStack {
                    
                    
                    Spacer()
                        .frame(height: 75)
                    
                    Toggle("Notifications", isOn: $landingPageNotifications)
                        .frame(width: 375, height: 50, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .cornerRadius(25)
                        .font(.system(size: 25, weight: .semibold))
                    
                    
                    Spacer()
                        .frame(height: 20)
                    
                    Toggle("Broadcast Notifications", isOn: $broadcastNotifications)
                        .frame(width: 375, height: 50, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .cornerRadius(25)
                        .font(.system(size: 25, weight: .semibold))
                    
                    
                    Spacer()
                        .frame(height: 30)
                    
                    Button(action: {
                        var user = UserDataSource().getCurrentUser()
                        user.notificationsBroadcast = broadcastNotifications
                        user.notificationsLP = landingPageNotifications
                        UserDataSource().updateUser(user: user)
                    }) {
                        Text("Save Changes")
                            .font(.title)
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .frame(width: 225, height: 50)
                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    }
                    
                    
                }
            }
        }
    }
}

struct Notifications_Previews : PreviewProvider {
    static var previews: some View {
        NotificationsOnOffPage()
    }
}


