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
    
    private let stream = WebSocketStream(url: "ws://localhost:8080/api/v1/services/messages/123")

    
    var body: some View {
        Text(group.name)
            .task {
                            do {
                                for try await message in stream {
                                    print("Got chat message: ", message)
                                }
                            } catch {
                                debugPrint("Oops something didn't go right")
                            }
                        }
    }
}
