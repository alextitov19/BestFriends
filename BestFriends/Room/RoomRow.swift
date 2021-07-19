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
            RoundedRectangle(cornerRadius: 20)
                .stroke(room.blueMode == true ? Color.blue : Color.white, lineWidth: 2)
            
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
        .background(Color(#colorLiteral(red: 0.5590314269, green: 0.3508415222, blue: 0.8826860785, alpha: 0.01)))
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
        RoomRow(room: Room(id: "", name: "Friends", creatorID: " ", members: ["", ""], messages: [Message(id: "", senderName: "", senderID: "", body: "Hello friends how are yall doing?", creationDate: Int(Date().timeIntervalSinceNow), attachmentPath: "")], blueMode: false))
    }
}
