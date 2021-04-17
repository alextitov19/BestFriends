//
//  DataSource.swift
//  BestFriends
//
//  Created by Alex Titov on 4/17/21.
//

import Amplify
import Foundation

class DataSource: ObservableObject {
    @Published var messages = [Message]()
    
    func send(_ message: Message) {
        Amplify.API.mutate(request: .create(message)) { [weak self] mutationResult in
            switch mutationResult {

            case .success(let creationResult):
                
                switch creationResult {
                case .success:
                    print("Successfully created message")
                    
                case .failure(let error):
                    print(error)
                }
                
            case .failure(let apiError):
                print(apiError)
            }
        }
    }
    
    func getMessages() {
        Amplify.API.query(request: .list(Message.self)) { [weak self] result in
            do {
                let messages = try result.get().get()
                
                DispatchQueue.main.async {
                    self?.messages = messages
                }
            } catch {
                print("Error getting messages: ", error)
            }
        }
    }
}
