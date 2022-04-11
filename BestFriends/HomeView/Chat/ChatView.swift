//
//  ChatView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/7/22.
//

import SwiftUI
import SwiftWebSocket

struct ChatView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let group: Group
//    private let stream: WebSocketStream
    
    init(group: Group) {
        self.group = group
//        self.stream = WebSocketStream.init(url: "ws://localhost:8080/api/v1/services/messages/" + group.id)
        
        let ws = WebSocket("ws://localhost:8080/api/v1/services/messages/" + group.id)
        
        var messageNum = 0

        
        let send : ()->() = {
                messageNum += 1
                let msg = "\(messageNum): \(NSDate().description)"
                print("send: \(msg)")
                ws.send(msg)
            }
        
        ws.event.open = {
                print("opened")
                send()
            }
        ws.event.close = { code, reason, clean in
                print("close")
            }
            ws.event.error = { error in
                print("error \(error)")
            }
        
        ws.event.message = { message in
                if let text = message as? String {
                    print("recv: \(text)")
                    if messageNum == 10 {
                        ws.close()
                    } else {
                        send()
                    }
                }
            }
        
    }
    
    
    var body: some View {
        Text(group.name)
//            .task {
//                do {
//                    for try await message in stream {
//                        print("Got a message: ", message)
//                    }
//                } catch {
//                    debugPrint("Oops something didn't go right")
//                }
//            }
    }
}
