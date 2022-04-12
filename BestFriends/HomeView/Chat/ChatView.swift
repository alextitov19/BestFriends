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
    private var stream: WebSocketStream
    
    @State private var messages: [Message] = []
    
    init(group: Group) {
        self.group = group
        stream = WebSocketStream(groupId: group.id)
    }
    
    @State private var messageBody: String = ""
    
    var body: some View {
        VStack {
            // MARK: Header
        Text(group.name)
            .task {
                await listenForMessages()
            }
            
            // MARK: Main scroll view
            ScrollView(.vertical) {
                ForEach(messages, id: \.id) { message in
                    Text(message.body)
                }
            }
            
            TextField(" Send a chat", text: $messageBody)
                .padding()
                .submitLabel(.send)
                .onSubmit { sendMessage() }
            
        }
    }
    
    private func sendMessage() {
        if messageBody.count == 0 { return }
        stream.sendMessage(body: messageBody)
    }
    
    private func listenForMessages() async {
        let decoder = JSONDecoder()
        do {
            for try await message in stream {
                switch message {
                        case .string(let s):
                    let jsonData = Data(s.utf8)
                    do {
                        let msg = try decoder.decode(Message.self, from: jsonData)
                        self.messages.append(msg)
                        print("Added a new message from json to messages array")
                    } catch {
                        print(error.localizedDescription)
                    }

                        case .data(let data):
                            print("Received binary message: \(data)")
                }
            }
        } catch {
            debugPrint("Oops something didn't go right")
        }
    }
}
