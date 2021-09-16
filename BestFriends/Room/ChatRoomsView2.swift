//
//  ChatRoomsView2.swift
//  BestFriends
//
//  Created by Alex Titov on 9/7/21.
//

import SwiftUI

struct ChatRoomsView2: View {
    
    @EnvironmentObject var sessionManager: SessionManager

    let user: User
    let rooms: [Room]
    
    init() {
        user = UserDataSource().getCurrentUser()
        var arr: [Room] = []
        for id in user.rooms {
            arr.append(RoomDataSource().getRoom(id: id))
        }
        rooms = arr
    }
    
    var body: some View {
        ZStack {
            Image("HomeBackground")
                .resizable()
                .rotationEffect(Angle(degrees: 180))
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                    .frame(height: 200)
                
                Color(hex: "322d52")
                    .ignoresSafeArea()
            }
            
            VStack {
                HStack {
                    Text("Chat")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.leading, 20)

                    Spacer()
                }
                .padding(.top, 30)
                
                ScrollView {
                    VStack {
                        ForEach(rooms) { room in
                            RoomRow(room: room)
                                .onTapGesture {
                                    sessionManager.chat(room: room)
                                }
                                .padding()
                            
                            Divider()
                        }
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(hex: "322d52"))
                .cornerRadius(25)
                HStack {
                    Image("home-alt2")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .scaledToFill()
                    .onTapGesture {
                        sessionManager.getCurrentAuthUser()
                    }
                    .padding(10)
                    
                    Image("hideouts")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .scaledToFill()
                    .onTapGesture {
                        sessionManager.showHideouts()
                    }
                    .padding(10)
                    
                    
                    
                    Image("settings icon")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .scaledToFill()
                    .onTapGesture {
                        sessionManager.showSettings()
                    }
                    .padding(10)
                }
                .padding(.bottom, 10)
            }
        }
    }
}
