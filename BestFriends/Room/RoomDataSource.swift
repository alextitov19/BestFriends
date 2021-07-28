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
        Amplify.API.mutate(request: .create(room)) { mutationResult in
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
        let roomIDs: [String] = user.rooms 
        
        for roomID in roomIDs {
            self.rooms.append(getRoom(id: roomID))
        }
        
        sortRooms()
    }
    
    func sortRooms() {
        rooms = rooms.sorted(by: { $0.timeUpdated > $1.timeUpdated })
    }
    
    func getRoom(id: String) -> Room {
        var finalroom = Room(id: "", name: "", creatorID: " ", members: [], messages: [], timeUpdated: Int(Date().timeIntervalSince1970))
        
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
    
    func updateRoom(room: Room) {
        let group = DispatchGroup()
        group.enter()
        Amplify.API.mutate(request: .update(room)) { event in  //update room
            switch event {
            case .success(let result):
                switch result {
                case .success(let room):
                    print("Successfully updated room: \(room)")
                    group.leave()
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
        group.wait()
        return
    }
    
    func leaveChatRoom(room: Room) {
        let userDS = UserDataSource()
        var user = userDS.getCurrentUser()
        var theroom = room
        if let index = theroom.members.firstIndex(of: user.id) {
            theroom.members.remove(at: index)
            updateRoom(room: theroom)
            if let index = user.rooms.firstIndex(of: room.id) {
                user.rooms.remove(at: index)
                userDS.updateUser(user: user)
            }
        }
    }
    
    private func delete(room : Room) {
        let group = DispatchGroup()
        group.enter()
        Amplify.API.mutate(request: .delete(room)) { event in
                switch event {
                case .success(let result):
                    switch result {
                    case .success(let room):
                        print("Successfully deleted room: \(room)")
                        group.leave()
                    case .failure(let error):
                        print("Got failed result with \(error.errorDescription)")
                    }
                case .failure(let error):
                    print("Got failed event with error \(error)")
                }
            }
        group.wait()
        return
    }
    
    func deleteChatRoom(room: Room) {
        let userDS = UserDataSource()
        let memberIDs = room.members
        for id in memberIDs {
            var user = userDS.getUser(id: id)
            if let index = user.rooms.firstIndex(of: room.id) {
                user.rooms.remove(at: index)
                print("removed a room for user \(user.id)")
                userDS.updateUser(user: user)
            }
        }
        delete(room: room)
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
