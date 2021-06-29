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
    @State private var blueChatNotifications : Bool
    
    init() {
        let user = UserDataSource().getCurrentUser()
        landingPageNotifications = user.notificationsLP
        blueChatNotifications = user.notificationsBM
    }
    
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
                
                Spacer().frame(height: 50)
                
                
                Text("Hold Up! Here's the Dealio ... ")
                    .frame(width: 415, height: 30, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                    .cornerRadius(25)
                    .font(.system(size: 25).italic())
                
                Text("BestFriends is designed to help you track down your friends when you NEED them. If you turn off 'Homepage Notifications' we can NOT find your friends in a timely manner.")
                    .frame(width: 415, height: 200, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                    .cornerRadius(25)
                    .font(.system(size: 25).italic())
                
                
                
                
                
                
                
                VStack {
                    
                    
                    Spacer()
                        .frame(height: 75)
                    
                    Toggle("Notifications", isOn: $landingPageNotifications)
                        .frame(width: 375, height: 50, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .cornerRadius(25)
                        .font(.system(size: 25, weight: .semibold))
                    
                    
                    Spacer()
                        .frame(height: 50)
                    
                    
                    Toggle("BlueMode Notifications", isOn: $blueChatNotifications)
                        .frame(width: 375, height: 50, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .cornerRadius(25)
                        .font(.system(size: 25, weight: .semibold))
                    
                    
                    
                    
                    Spacer()
                        .frame(height: 100)
                    
                    Button(action: {
                        var user = UserDataSource().getCurrentUser()
                        user.notificationsBM = blueChatNotifications
                        user.notificationsLP = landingPageNotifications
                        UserDataSource().updateUser(user: user)
                    }) {
                        Text("Save Changes")
                            .frame(width: 415, height: 200, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)))
                            .cornerRadius(25)
                    }
                    .background(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                    
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


