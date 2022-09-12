//
//  UrgentChatInvite.swift
//  BestFriends
//
//  Created by Social Tech on 5/20/22.
//


import Foundation
import SwiftUI


struct UrgentChatInvite: View {
    
    @EnvironmentObject var sessionManager: SessionManager

    let user: User
    let owner: User
    let group: Group
    
    @State private var colorChangeTap: String = ""
    
    var body: some View {
        ZStack {
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                Text("When can you")
                    .font(.system(size: 40, weight: .ultraLight))
                    .foregroundColor(Color.white)
                
                Text("T A L K?")
                    .font(.system(size: 55, weight: .ultraLight))
                    .foregroundColor(Color.white)
                
                Button(action: {
                    sessionManager.showChat(user: user, group: group)
                }, label: {
                    Text("Chat now")
                        .fontWeight(.thin)
                        .frame(width: 240, height: 50)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 27))
                        .background(ColorManager.pmbc_green)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                })
                .padding()
                
                Button(action: {
                    defaultMessageButtonTapped(defaultMessage: "give me 5 minutes")
                    
                    RestApi.instance.sendPushNotification(title: user.firstName, body: "I can chat in 5 minutes", APNToken: owner.APNToken )
                }, label: {
                    Text("Give me 5 minutes")
                        .fontWeight(.thin)
                        .frame(width: 240, height: 50)
                       .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 27))
                        .background(colorChangeTap == "give me 5 minutes" ? ColorManager.grey3 : ColorManager.purple3)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                })
                .padding()
                
                Button(action: {
                    defaultMessageButtonTapped(defaultMessage: "give me 10 minutes")
                    
                    RestApi.instance.sendPushNotification(title: user.firstName, body: "I can chat in 10 minutes", APNToken: owner.APNToken )
                }, label: {
                    Text("Give me 10 minutes")
                        .fontWeight(.thin)
                        .frame(width: 240, height: 50)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 27))
                        .background(colorChangeTap == "give me 10 minutes" ? ColorManager.grey3 : ColorManager.purple3)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                })
                .padding()
                
                Button(action: {
                    defaultMessageButtonTapped(defaultMessage: "give me 30 minutes")
                    
                    RestApi.instance.sendPushNotification(title: user.firstName, body: "I can chat in 30 minutes", APNToken: owner.APNToken )
                }, label: {
                    Text("Give me 30 minutes")
                        .fontWeight(.thin)
                        .frame(width: 240, height: 50)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 27))
                        .background(colorChangeTap == "give me 30 minutes" ? ColorManager.grey3 : ColorManager.purple3)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                })
                .padding()
                
                Button(action: {
                    defaultMessageButtonTapped(defaultMessage: "give me 60 minutes")

                    RestApi.instance.sendPushNotification(title: user.firstName, body: "I can chat in an hour", APNToken: owner.APNToken )
                }, label: {
                    Text("Give me 1 hour")
                        .fontWeight(.thin)
                        .frame(width: 240, height: 50)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 27))
                        .background(colorChangeTap == "give me 60 minutes" ? ColorManager.grey3 : ColorManager.purple3)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                })
                .padding()
                
                Button(action: {
                    defaultMessageButtonTapped(defaultMessage: "Can't talk for a while")
                    
                    RestApi.instance.sendPushNotification(title: user.firstName, body: "Can't talk for a while", APNToken: owner.APNToken )
                }, label: {
                    Text("I'll text when I'm free!")
                        .fontWeight(.thin)
                        .frame(width: 240, height: 50)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 27))
                        .background(colorChangeTap == "Can't talk for a while" ? ColorManager.pmbc_blue : ColorManager.purple3)
//                        .background(ColorManager.purple3)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                })
                .padding()
                
           }
        }
    }
        
    private func defaultMessageButtonTapped(defaultMessage: String) {
        self.colorChangeTap = defaultMessage
    }
    
}
