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
        ZStack {
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
                            .foregroundColor(.white)
                        
                        Spacer()
                    }
                    
                    HStack {
                        Spacer().frame(width: 10)
                        
                        Text(messageBody)
                            .font(.system(size: 16, weight: .light))
                            .foregroundColor(.white)
                        
                        Spacer()
                    }
                    
                    Spacer()
                        .frame(height: 10)
                }
                
                Spacer().frame(width: 10)
            }
        }
        .background(Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)))
        .cornerRadius(20)
        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)

    }
    
    private func getBody() {
        messageBody = room.messages.last?.body ?? ""
        if UserDataSource().getCurrentUser().hiddenRooms != nil {
            if UserDataSource().getCurrentUser().hiddenRooms!.contains(room.id) {
                messageBody = "*Hidden*"
            }
        }
    }
}

struct RoomsRow_Previews : PreviewProvider {
    static var previews: some View {
        RoomRow(room: Room(id: "", name: "Friends", creatorID: " ", members: ["", ""], messages: [Message(id: "", senderName: "", senderID: "", body: "Hello friends how are yall doing?", creationDate: Int(Date().timeIntervalSinceNow), attachmentPath: "")], timeUpdated: 0))
    }
}
