//
//  RoomCell.swift
//  BestFriends
//
//  Created by Alex Titov on 4/25/21.
//

import SwiftUI

struct RoomRow: View {
    
    let room: Room
    
    var body: some View {
        HStack {
            Spacer().frame(width: 10)

            VStack(alignment: .leading) {
                Spacer()
                    .frame(height: 10)
                
                HStack {
                    Spacer().frame(width: 10)
                    
                    Text(room.name)
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                    
                    Spacer()
                }
                
                HStack {
                    Spacer().frame(width: 10)

                    Text(room.messages.last?.body ?? "")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                    
                    Spacer()
                }
                
                Spacer()
                    .frame(height: 10)
            }
            .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.white, lineWidth: 2)
                    )
            
            Spacer().frame(width: 10)
        }
    }
}

struct RoomsRow_Previews : PreviewProvider {
    static var previews: some View {
        RoomRow(room: Room(id: "", name: "Friends", members: ["", ""], messages: [Message(id: "", senderName: "", senderID: "", body: "Hello friends how are yall doing?", creationDate: Int(Date().timeIntervalSinceNow), attachmentPath: "")], blueMode: false))
    }
}
