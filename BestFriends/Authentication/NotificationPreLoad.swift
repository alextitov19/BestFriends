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
                
//                Text("")
//                    .italic()
//                    .font(.system(size: 40))
//                    .fontWeight(.regular)
//                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                    .multilineTextAlignment(.center)
//                    .frame(width: 375, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Button(action: {
                    sessionManager.chat(room: RoomDataSource().getRoom(id: roomID))
                    setTimer(minutes: 0)
                }) {
                    
                    
                    Text("Chat now!")
                       
                        .font(.title)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .frame(width: 300, height: 75)
                        .background(Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)))
                        .cornerRadius(50)
                        
                        

                }
                .padding(30)
                
                Text("OR IN ...")
                    
                    .font(.system(size: 25))
                    .fontWeight(.regular)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(width: 375, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Spacer()
                    .frame(height: 30)
                
                Button(action: {
                    setTimer(minutes: 5)
                }) {
                    Text("5 min.")
                        .font(.title)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .frame(width: 200, height: 50)
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(25)
                        
                }
                .padding(20)
                
                Button(action: {
                    setTimer(minutes: 10)
                }) {
                    Text("10 min.")
                        .font(.title)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .frame(width: 200, height: 50)
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(25)
                }
                .padding(20)
                
//                Button(action: {
//                    setTimer(minutes: 15)
//                }) {
//                    Text("15 min.")
//                        .font(.title)
//                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
//                        .frame(width: 200, height: 50)
//                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
//                        .cornerRadius(25)
//                }
//                .padding(20)
                
                Button(action: {
                    setTimer(minutes: 30)
                }) {
                    Text("30 min.")
                        .font(.title)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .frame(width: 200, height: 50)
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(25)
                }
                .padding(20)
                
                Button(action: {
                    setTimer(minutes: 60)
                }) {
                    Text("1 hour")
                        .font(.title)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .frame(width: 200, height: 50)
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(25)
                }
                .padding(20)
                
                Button(action: {
                    setTimer(minutes: -1)
                }) {
                    Text("Can't talk now")
                        .font(.title)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .frame(width: 200, height: 50)
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(25)
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

