//
//  NotificationPreLoad.swift
//  BestFriends
//
//  Created by Social Tech on 6/10/21.
//

import Amplify
import SwiftUI

struct NotificationPreLoad: View {

    @EnvironmentObject var sessionManager: SessionManager
    @State private var selectedMinutes: Int = -1
    @State private var hidden = false
    var roomID: String
    var members: [String] = []
    var userDataSource = UserDataSource()
    
    init(roomID: String) {
        self.roomID = roomID
    }
    
    var body: some View {
            ZStack {
                
                Image("purpleBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
                    
                    Text("What's up? I can ...")
                        .italic()
                        .font(.system(size: 40))
                        .fontWeight(.regular)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 375, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Button(action: {
                        sessionManager.chat(room: RoomDataSource().getRoom(id: roomID))
                        setTimer(minutes: 0)
                    }) {
                        Text("Chat now")
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0.9338757992, blue: 0, alpha: 1)))
                            .font(.system(size: 60))
                            .bold()
                    }
                    .padding(20)
                    
                    Spacer()
                        .frame(height: 35)
                    
                    Button(action: {
                        setTimer(minutes: 5)
                    }) {
                        Text("Give me 5 minutes")
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0.6852545142, blue: 1, alpha: 1)))
                            .font(.system(size: 27))
                            .bold()
                    }
                    .padding(20)
                    
                    Button(action: {
                        setTimer(minutes: 10)
                    }) {
                        Text("10 minutes")
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0.6852545142, blue: 1, alpha: 1)))
                            .font(.system(size: 27))
                            .bold()
                    }
                    .padding(20)
                    
                    Button(action: {
                        setTimer(minutes: 15)
                    }) {
                        Text("15 minutes")
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0.6852545142, blue: 1, alpha: 1)))
                            .font(.system(size: 27))
                            .bold()
                    }
                    .padding(20)
                    
                    Button(action: {
                        setTimer(minutes: 30)
                    }) {
                        Text("30 minutes")
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0.6852545142, blue: 1, alpha: 1)))
                            .font(.system(size: 27))
                            .bold()
                    }
                    .padding(20)
                    
                    Button(action: {
                        setTimer(minutes: 60)
                    }) {
                        Text("Give me an hour")
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0.6852545142, blue: 1, alpha: 1)))
                            .font(.system(size: 27))
                            .bold()
                    }
                    .padding(20)
                    
                    Button(action: {
                        setTimer(minutes: -1)
                    }) {
                        Text("Sorry, I'm tied up for a while")
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 0, blue: 0.5167014003, alpha: 1)))
                            .font(.system(size: 30))
                            .bold()
                    }
                    .padding(20)
                }
        }
            .isHidden(hidden)
    }
    
    private func setTimer(minutes: Int) {
        var user = userDataSource.getCurrentUser()
        for i in 0..<user.invitedRooms!.count {
            if user.invitedRooms![i].roomID == roomID {
                user.invitedRooms![i].timer = minutes
                userDataSource.updateUser(user: user)
                hidden = true
                var body = ""
                switch minutes {
                case 0:
                    body = "\(user.firstName) is ready to chat now!"
                case -1:
                    body = "\(user.firstName) can't chat for a while."
                default:
                    body = "\(user.firstName) will be ready to chat in \(minutes) minutes."
                }
                let token = userDataSource.getUser(id: RoomDataSource().getRoom(id: roomID).creatorID).deviceFCMToken
                PushNotificationSender().sendPushNotification(token: token, title: "\(userDataSource.getCurrentUser().firstName)", body: body)
            }
        }
    }
}




struct NotificationPreLoad_Previews : PreviewProvider {
    static var previews: some View {
        NotificationPreLoad(roomID: "")
    }
}

