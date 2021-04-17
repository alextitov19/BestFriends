//
//  MessagesView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/17/21.
//

import SwiftUI

struct MessagesView: View {
    
    @State var text: String = ""
    @ObservedObject var dataSource = DataSource()
    
    let currentUser = "Alex Titov"
    
    init() {
        dataSource.getMessages()
    }
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVStack {
                    ForEach(dataSource.messages) { message in
                        MessageRow(
                            message: message,
                            isCurrentUser: message.senderName == currentUser
                        )
                    }
                }
            }
            
            HStack {
                TextField("Enter message", text: $text)
                Button("Send", action: didTapSend)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.purple)
            }
        }
        .padding(.horizontal, 16)
    }
    
    
    func didTapSend() {
        print(text)
        
        let message = Message(
            id: "32973424",
            senderName: currentUser,
            senderID: "778432784239",
            body: text,
            creationDate: .now()
        )
        
        dataSource.send(message)
        
        text.removeAll()
    }
    
}




struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
