//
//  RoomCell.swift
//  BestFriends
//
//  Created by Alex Titov on 4/25/21.
//

import SwiftUI

struct RoomRow: View {
    
    let room: Room
    
    @State var messageBody = ""
    
    var body: some View {
        HStack {
            Spacer().frame(width: 10)
                .onAppear {
                    getBody()
                }
            
            VStack(alignment: .leading) {
                Spacer()
                    .frame(height: 10)
                
                HStack {
                    Spacer().frame(width: 10)
                    
                    Text(room.name)
                        .font(.system(size: 20, weight: .light))
                        .foregroundColor(.black)
                    
                    Spacer()
                }
                
                HStack {
                    Spacer().frame(width: 10)
                    
                    Text(messageBody)
                        .font(.system(size: 16, weight: .light))
                        .foregroundColor(.black)
                    
                    Spacer()
                }
                
                Spacer()
                    .frame(height: 10)
            }
            
            Spacer().frame(width: 10)
        }
        
    }
    
    private func getBody() {
        messageBody = room.messages.last?.body ?? ""
        if UserDataSource().getCurrentUser().hiddenRooms.contains(room.id) {
            messageBody = "*Hidden*"
        }
    }
}

struct RoomsRow_Previews : PreviewProvider {
    static var previews: some View {
        RoomRow(room: Room(id: "", name: "Friends", creatorID: " ", members: ["", ""], messages: [Message(id: "", senderName: "", senderID: "", body: "Hello friends how are yall doing?", creationDate: Int(Date().timeIntervalSinceNow), attachmentPath: "", hasBeenLiked: false)], timeUpdated: 0))
    }
}
