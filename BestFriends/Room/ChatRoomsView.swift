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
                .background(Color.white)
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
                    .frame(width: 60, height: 60)
                    .scaledToFill()
                    .onTapGesture {
                        showingChatRooms = false
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

//struct ChatRoomsViewPreview : PreviewProvider {
//    static var previews: some View {
//        ChatRoomsView(rooms: [], showingChatRooms: <#Binding<Bool>#>)
//            .environmentObject(SessionManager())
//    }
//}
