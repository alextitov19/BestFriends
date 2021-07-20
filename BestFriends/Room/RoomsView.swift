//
//  RoomView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/25/21.
//

import SwiftUI
import Amplify


struct RoomsView: View {
    
    @ObservedObject var dataSource = RoomDataSource()
    @State private var showingActionSheet = false
    @EnvironmentObject var sessionManager: SessionManager
    
    
    init() {
        dataSource.getRooms()
        print("Rooms: ", dataSource.rooms)
    }
    
    var body: some View {
        ZStack {
            Image("SignUpPinBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                Spacer().frame(height: 20)
                
                Text("Chat Rooms")
                    .font(.system(size: 40).bold())
                    .foregroundColor(.white)
                    .padding()
                
                HStack {
                    Spacer().frame(width: 20)
                    
                    ScrollView {
                        LazyVStack {
                            ForEach(dataSource.rooms) { room in
                                if room.creatorID == UserDataSource().getCurrentUser().id {
                                    RoomRow(room: room)
                                        .onTapGesture { sessionManager.chat(room: room) }
                                        .onLongPressGesture(minimumDuration: 1) { showingActionSheet = true }
                                        .actionSheet(isPresented: $showingActionSheet) {
                                            ActionSheet(title: Text("Manage Chat Room"), message: Text("Conversation dried up? You can leave the chat room. Since you made it, you can also delete the chat room."), buttons: [
                                                .default(Text("Leave")) {
                                                    dataSource.leaveChatRoom(room: room)
                                                    sessionManager.reloadToPage(page: "rooms")
                                                },
                                                .default(Text("Delete")) {
                                                    dataSource.deleteChatRoom(room: room)
                                                    sessionManager.reloadToPage(page: "rooms")
                                                },
                                                .cancel()
                                            ])
                                        }
                                        .padding()
                                } else {
                                    RoomRow(room: room)
                                        .onTapGesture { sessionManager.chat(room: room) }
                                        .onLongPressGesture(minimumDuration: 1) { showingActionSheet = true }
                                        .actionSheet(isPresented: $showingActionSheet) {
                                            ActionSheet(title: Text("Manage Chat Room"), message: Text("Conversation dried up? You can leave the chat room."), buttons: [
                                                .default(Text("Leave")) {
                                                    dataSource.leaveChatRoom(room: room)
                                                    sessionManager.reloadToPage(page: "rooms")
                                                },
                                                .cancel()
                                            ])
                                        }
                                        .padding()
                                }
                            }
                        }
                    }
                    Spacer().frame(width: 20)
                }
                
                
                HStack {
                    Image("home-alt2")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .scaledToFill()
                        .onTapGesture {
                            sessionManager.getCurrentAuthUser()
                        }
                        .padding(20)
                    
                    Image("happy-face icon")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .scaledToFill()
                        .onTapGesture {
                            sessionManager.showSmileNotes()
                        }
                        .padding(20)
                    
                    Image("settings icon")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .scaledToFill()
                        .onTapGesture {
                            sessionManager.showSettings()
                        }
                        .padding(20)
                }
                .padding()
            }
        }
    }
}


struct RoomsView_Previews : PreviewProvider {
    static var previews: some View {
        RoomsView()
    }
}
