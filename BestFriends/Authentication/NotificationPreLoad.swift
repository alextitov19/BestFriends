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
                    
                    
                    Button(action: {
                        sessionManager.chat(room: RoomDataSource().getRoom(id: roomID))
                    }) {
                        Text("Chat now")
                            .foregroundColor(.green)
                            .font(.system(size: 60))
                            .bold()
                    }
                    .padding(20)
                    
                    Button(action: {
                        var user = userDataSource.getCurrentUser()
                        for i in 0..<user.invitedRooms!.count {
                            if user.invitedRooms![i].roomID == roomID {
                                user.invitedRooms![i].timer = 5
                                userDataSource.updateUser(user: user)
                            }
                        }
                    }) {
                        Text("Give me 5 minutes")
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0.6852545142, blue: 1, alpha: 1)))
                            .font(.system(size: 27))
                            .bold()
                    }
                    .padding(20)
                    
                    Button(action: {
                        var user = userDataSource.getCurrentUser()
                        for i in 0..<user.invitedRooms!.count {
                            if user.invitedRooms![i].roomID == roomID {
                                user.invitedRooms![i].timer = 10
                                userDataSource.updateUser(user: user)
                            }
                        }
                    }) {
                        Text("Give me 10 minutes")
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0.6852545142, blue: 1, alpha: 1)))
                            .font(.system(size: 27))
                            .bold()
                    }
                    .padding(20)
                    
                    Button(action: {
                        var user = userDataSource.getCurrentUser()
                        for i in 0..<user.invitedRooms!.count {
                            if user.invitedRooms![i].roomID == roomID {
                                user.invitedRooms![i].timer = 15
                                userDataSource.updateUser(user: user)
                            }
                        }
                    }) {
                        Text("Give me 15 minutes")
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0.6852545142, blue: 1, alpha: 1)))
                            .font(.system(size: 27))
                            .bold()
                    }
                    .padding(20)
                    
                    Button(action: {
                        var user = userDataSource.getCurrentUser()
                        for i in 0..<user.invitedRooms!.count {
                            if user.invitedRooms![i].roomID == roomID {
                                user.invitedRooms![i].timer = 30
                                userDataSource.updateUser(user: user)
                            }
                        }
                    }) {
                        Text("Give me 30 minutes")
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0.6852545142, blue: 1, alpha: 1)))
                            .font(.system(size: 27))
                            .bold()
                    }
                    .padding(20)
                    
                    Button(action: {
                        var user = userDataSource.getCurrentUser()
                        for i in 0..<user.invitedRooms!.count {
                            if user.invitedRooms![i].roomID == roomID {
                                user.invitedRooms![i].timer = 60
                                userDataSource.updateUser(user: user)
                            }
                        }
                    }) {
                        Text("Give me an hour")
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0.6852545142, blue: 1, alpha: 1)))
                            .font(.system(size: 27))
                            .bold()
                    }
                    .padding(20)
                    
                    Button(action: {
                        var user = userDataSource.getCurrentUser()
                        for i in 0..<user.invitedRooms!.count {
                            if user.invitedRooms![i].roomID == roomID {
                                user.invitedRooms![i].timer = -1
                                userDataSource.updateUser(user: user)
                            }
                        }
                    }) {
                        Text("Can't chat for a while")
                            .foregroundColor(.red)
                            .font(.system(size: 30))
                            .bold()
                    }
                    .padding(20)
                }
        }
    }
}




struct NotificationPreLoad_Previews : PreviewProvider {
    static var previews: some View {
        NotificationPreLoad(roomID: "")
    }
}

