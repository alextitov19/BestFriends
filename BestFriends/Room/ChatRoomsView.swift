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

    @State private var filterText = ""
    
    let rooms: [Room]
    
    var body: some View {
        ZStack {
            Image("HomeBackground")
                .resizable()
                .rotationEffect(Angle(degrees: 180))
                .scaledToFill()
                .ignoresSafeArea()
            
            PlayerView()
                .ignoresSafeArea()
                .blendMode(.screen)
            
            VStack {
                HStack {
                    Text("Chat")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.leading, 20)

                    Spacer()
                    
                    Image("addFriend")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .scaledToFit()
                        .padding(.trailing, 20)
                }
                .padding(.top, 30)

                SearchBar(text: $filterText)
                    .padding(.vertical, 15)
                
                ScrollView {
                    VStack {
                        ForEach(rooms) { room in
                            RoomRow(room: room)
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
                    
                    Image("happy-face icon")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .scaledToFill()
                    .onTapGesture {
                        sessionManager.showSmileNotes()
                    }
                    .padding(10)
                }
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
