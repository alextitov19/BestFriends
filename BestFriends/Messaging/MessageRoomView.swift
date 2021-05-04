//
//  MessageRoomView.swift
//  BestFriends
//
//  Created by Alex Titov on 5/3/21.
//

import SwiftUI
import Amplify


struct MessageRoomView: View {
    
    @ObservedObject var messageDataSource: MessageDataSource
    var user: User
    
    init(room: Room) {
        let id = Amplify.Auth.getCurrentUser()?.username ?? "Failed getting id"
        self.user = UserDataSource().getUser(id: id)
        self.messageDataSource  = MessageDataSource(room: room)
    }
    
    @State var currentBody: String = ""

    var body: some View {
        VStack {
            ScrollView {
                LazyVStack {
                    ForEach(messageDataSource.room.messages, id: \.id) { message in
                        Text(message.body)
                            .font(.headline)
                            .foregroundColor(.black)
                        
                        Spacer()
                            .frame(height: 20)
                    }
                }
            }
            
            Spacer()
            
            HStack {
                TextField("", text: $currentBody)
                    .foregroundColor(.black)
                    .frame(width: 200, height: 50)
                
                Spacer()
                    .frame(width: 30)
                
                Button("Send", action: {
                    
                    let message = Message(id: randomString(length: 20), senderName: user.firstName, senderID: user.id, body: currentBody, creationDate: Int(NSDate().timeIntervalSince1970))
                    
                    messageDataSource.sendMessage(message: message)
                })
            }
            
        }
        
    }
    
    func randomString(length: Int) -> String {

        let letters : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        let len = UInt32(letters.length)

        var randomString = ""

        for _ in 0 ..< length {
            let rand = arc4random_uniform(len)
            var nextChar = letters.character(at: Int(rand))
            randomString += NSString(characters: &nextChar, length: 1) as String
        }

        return randomString
    }
}
