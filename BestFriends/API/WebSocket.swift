//
//  WebSocket.swift
//  BestFriends
//
//  Created by Alex Titov on 4/10/22.
//

import Foundation

class WebSocketStream: AsyncSequence {

    typealias Element = URLSessionWebSocketTask.Message
    typealias AsyncIterator = AsyncThrowingStream<URLSessionWebSocketTask.Message, Error>.Iterator

    private var stream: AsyncThrowingStream<Element, Error>?
        private var continuation: AsyncThrowingStream<Element, Error>.Continuation?
        private let socket: URLSessionWebSocketTask
    
    init(groupId: String, session: URLSession = URLSession.shared) {
        let request = RestApi.instance.createChatWebSocketRequest(groupId: groupId)
            socket = session.webSocketTask(with: request)
            stream = AsyncThrowingStream { continuation in
                self.continuation = continuation
                self.continuation?.onTermination = { @Sendable [socket] _ in
                    socket.cancel()
                }
            }
        }
    
    func makeAsyncIterator() -> AsyncIterator {
        guard let stream = stream else {
            fatalError("stream was not initialized")
        }
        socket.resume()
        listenForMessages()
        return stream.makeAsyncIterator()
    }
    
    private func listenForMessages() {
        socket.receive { [unowned self] result in
            switch result {
            case .success(let message):
                // Got a message
                print("Got a websocket message: ", message)
                continuation?.yield(message)
                listenForMessages()
            case .failure(let error):
                continuation?.finish(throwing: error)
            }
        }
    }
    
    func sendMessage(body: String) {
        let message = CreateMessage(body: body)
            guard let json = try? JSONEncoder().encode(message),
                let jsonString = String(data: json, encoding: .utf8)
            else {
                return
            }
            socket.send(.string(jsonString)) { error in
                if let error = error {
                    print("Error sending message", error)
                }
            }
    }
}
