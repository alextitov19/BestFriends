//
//  ChatRoomsView.swift
//  BestFriends
//
//  Created by Alex Titov on 8/23/21.
//

import SwiftUI

struct ChatRoomsView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    @Binding var showingChatRooms: Bool
    
    let user: User
    let rooms: [Room]
    
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
                    Text("My Private Chat Rooms")
                        .font(.system(size: 30, weight: .bold))
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
                        showingChatRooms = false
                    }
                    .padding(10)
                    
                    Image("hideouts")
                    .resizable()
                    .frame(width: 50, height: 50)
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
