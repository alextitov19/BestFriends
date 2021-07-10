//
//  RoomDataSource.swift
//  BestFriends
//
//  Created by Alex Titov on 4/25/21.
//

import Amplify
import Foundation

class RoomDataSource: ObservableObject {
    @Published var rooms = [Room]()
    
    func createRoom(room: Room) {
        Amplify.API.mutate(request: .create(room)) { [weak self] mutationResult in
            switch mutationResult {
            
            case .success(let creationResult):
                
                switch creationResult {
                case .success:
                    print("Successfully created room")
                    
                case .failure(let error):
                    print(error)
                }
                
            case .failure(let apiError):
                print(apiError)
            }
        }
    }
    
    func getRooms() {
        guard let currentID = Amplify.Auth.getCurrentUser()?.username else {return}
        let user = UserDataSource().getUser(id: currentID)
        guard let roomIDs: [String] = user.rooms else {return}
        
        for roomID in roomIDs {
            self.rooms.append(getRoom(id: roomID))
        }
    }
    
    func getRoom(id: String) -> Room {
        var finalroom = Room(id: "", name: "", creatorID: " ", members: [], messages: [], blueMode: false, lastSeenByMember1: 0, lastSeenByMember2: 0)
        
        let group = DispatchGroup()
        group.enter()
        
        Amplify.API.query(request: .get(Room.self, byId: id)) { event in
            switch event {
            case .success(let result):
                switch result {
                case .success(let room):
                    guard let room = room else {
                        print("Could not find room")
                        return
                    }
                    print("Successfully retrieved room: \(room)")
                    finalroom = room
                    group.leave()
                    
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
        
        group.wait()
        
        return finalroom
    }
    
    func updateRoomName(room: Room, name: String) {
        var newroom = room
        newroom.name = name
        Amplify.API.mutate(request: .update(newroom)) { event in  //update room
            switch event {
            case .success(let result):
                switch result {
                case .success(let room):
                    print("Successfully updated room: \(newroom)")
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
    }
    
    func updateRoomTime(room: Room, isMember1: Bool) {
        var newroom = room
        if isMember1 {
            newroom.lastSeenByMember1 = Int(Date().timeIntervalSince1970)
        } else {
            newroom.lastSeenByMember2 = Int(Date().timeIntervalSince1970)
        }
        
        Amplify.API.mutate(request: .update(newroom)) { event in  //update room
            switch event {
            case .success(let result):
                switch result {
                case .success(let newroom):
                    print("Successfully updated room: \(newroom)")
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
    }
    
    
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
    
    
}
