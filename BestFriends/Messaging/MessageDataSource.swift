//
//  DataSource.swift
//  BestFriends
//
//  Created by Alex Titov on 4/17/21.
//

import Amplify
import Foundation

class MessageDataSource: ObservableObject {
  
    @Published var room: Room
    var subscription: GraphQLSubscriptionOperation<Room>?
    
    init(room: Room) {
        self.room = room
    }
    
    func sendMessage(message: Message) {
        room.messages.append(message)
        
        Amplify.API.mutate(request: .update(room)) { [weak self] mutationResult in
            switch mutationResult {
                case .success(let creationResult):

                    switch creationResult {
                    case .success:
                        print("Successfully sent a message", message)

                    case .failure(let error):
                        print("Message sending error: ", error)
                    }

                case .failure(let apiError):
                    print("Message sending api error: ", apiError)
                }
        }
    }
    
    func createSubscription() {
        subscription = Amplify.API.subscribe(request: .subscription(of: Room.self, type: .onUpdate), valueListener: { (subscriptionEvent) in
            switch subscriptionEvent {
            case .connection(let subscriptionConnectionState):
                print("Subscription connect state is \(subscriptionConnectionState)")
            case .data(let result):
                switch result {
                case .success(let updatedRoom):
                    print("Successfully got the updated room from subscription: \(updatedRoom)")
                    if updatedRoom.id == self.room.id {
                        self.room = updatedRoom
                        print("Updated room: ", self.room)
                    }
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            }
        }) { result in
            switch result {
            case .success:
                print("Subscription has been closed successfully")
            case .failure(let apiError):
                print("Subscription has terminated with \(apiError)")
            }
        }
    }
    
    func uploadImage(image: UIImage) {
        let data = image.pngData()!
        let key = "Image/" + randomString(length: 20)
        Amplify.Storage.uploadData(key: key, data: data,
            progressListener: { progress in
                print("Progress: \(progress)")
            }, resultListener: { (event) in
                switch event {
                case .success(let data):
                    print("Completed: \(data)")
                case .failure(let storageError):
                    print("Failed: \(storageError.errorDescription). \(storageError.recoverySuggestion)")
            }
        })
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







//    @Published var messages = [Message]()
//
//    func send(_ message: Message) {
//        Amplify.API.mutate(request: .create(message)) { [weak self] mutationResult in
//            switch mutationResult {
//
//            case .success(let creationResult):
//
//                switch creationResult {
//                case .success:
//                    print("Successfully created message")
//
//                case .failure(let error):
//                    print(error)
//                }
//
//            case .failure(let apiError):
//                print(apiError)
//            }
//        }
//    }
//
//    func getMessages() {
//        Amplify.API.query(request: .list(Message.self)) { [weak self] result in
//            do {
//                let messages = try result.get().get()
//
//                DispatchQueue.main.async {
//                    self?.messages = messages.sorted(by: { $0.creationDate < $1.creationDate})
//                }
//            } catch {
//                print("Error getting messages: ", error)
//            }
//        }
//    }
//
//
//    func delete(_ message: Message) {
//        Amplify.API.mutate(request: .delete(message)) { result in
//            print(result)
//        }
//    }
//
//
//    var subscription: GraphQLSubscriptionOperation<Message>?
//
//    func observeMessages() {
//        subscription = Amplify.API.subscribe(
//            request: .subscription(of: Message.self, type: .onCreate),
//
//            valueListener: { [weak self] subscriptionEvent in
//                switch subscriptionEvent {
//                case .connection(let connectionState):
//                    print("connection state:", connectionState)
//
//                case .data(let dataResult):
//                    do {
//                        let message = try dataResult.get()
//
//                        DispatchQueue.main.async {
//                            self?.messages.append(message)
//                        }
//                    } catch {
//                        print(error)
//                    }
//                }
//             },
//             completionListener: { completion in
//                print(completion)
//             }
//        )
//    }
//
//
