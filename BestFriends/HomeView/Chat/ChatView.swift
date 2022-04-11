//
//  ChatView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/7/22.
//

import SwiftUI

struct ChatView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let group: Group
    private let stream: WebSocketStream
    init(group: Group) {
        self.group = group
        stream = WebSocketStream(groupId: group.id)
    }
    
    @State private var messageBody: String = ""
    
    var body: some View {
        VStack {
        Text(group.name)
            .task {
                // Listen for new messages
                do {
                    for try await message in stream {
                        print("Got chat message: ", message)
                    }
                } catch {
                    debugPrint("Oops something didn't go right")
                }
            }
            
            MainTextField(text: $messageBody, placeholder: "New Message")
            Button(action: sendMessage) {
                CustomButtonInterior(text: "Send", backgroundColor: .green, textColor: .white)
            }
        }
    }
    
    private func sendMessage() {
        if messageBody.count == 0 { return }
        stream.sendMessage(body: messageBody)
    }
}
