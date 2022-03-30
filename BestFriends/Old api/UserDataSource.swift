//
//  UserDataSource.swift
//  BestFriends
//
//  Created by Alex Titov on 4/19/21.
//

import SwiftUI
import Amplify

struct UserDataSource {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    
    func getUser(id: String) -> User {
        var finaluser = User(id: " ", firstName: " ", lastName: " ", email: " ", birthday: .now(), pronouns: " ", location: " ", adPreference: [1], deviceFCMToken: " ", isOnline: false, secretPin: "", friends: [], rooms: [], tokens: 0, background: 1, notificationsBroadcast: true, notificationsLP: true, chatFontSize: 16, needIntro: false)
        
        let group = DispatchGroup()
        group.enter()
        
        Amplify.API.query(request: .get(User.self, byId: id)) { event in
            switch event {
            case .success(let result):
                switch result {
                case .success(let user):
                    guard let user = user else {
                        print("Could not find user")
                        print("failed 0 for id: \(id) and my id is: \(Amplify.Auth.getCurrentUser()?.username ?? "No username")")
                        //                        SessionManager().showLogin()
                        return
                    }
                    print("Successfully retrieved user: \(user)")
                    //user found
                    finaluser = user
                    group.leave()
                    
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
        
        
        group.wait()
        
        return finaluser
    }
    
    func getCurrentUser() -> User {
        var finaluser = User(id: " ", firstName: " ", lastName: " ", email: " ", birthday: .now(), pronouns: " ", location: " ", adPreference: [1], deviceFCMToken: " ", isOnline: false, secretPin: "", friends: [], rooms: [], tokens: 0, background: 1, notificationsBroadcast: true, notificationsLP: true, chatFontSize: 16, needIntro: false)
        
        guard let id = Amplify.Auth.getCurrentUser()?.username else {
            //            SessionManager().showLogin()
            print("failed 1")
            return finaluser
        }
        
        let group = DispatchGroup()
        group.enter()
        
        Amplify.API.query(request: .get(User.self, byId: id)) { event in
            switch event {
            case .success(let result):
                switch result {
                case .success(let user):
                    guard let user = user else {
                        print("Could not find user")
                        print("failed 2")
                        //                        SessionManager().signOut()
                        return
                    }
                    print("Successfully retrieved user: \(user)")
                    //user found
                    finaluser = user
                    group.leave()
                    
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
        
        
        group.wait()
        
        return finaluser
    }
    
    func updateUser(user: User) {
        let group = DispatchGroup()
        group.enter()
        Amplify.API.mutate(request: .update(user)) { event in  //update user
            switch event {
            case .success(let result):
                switch result {
                case .success(let user):
                    print("Successfully updated user: \(user)")
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
    
    func addFriend(user: User) {
        //add myself as a friend of user
        guard let myID = Amplify.Auth.getCurrentUser()?.username else { return } // get my id
        if ((user.friends.contains(myID)) == true) { return }
        var friendUser = user
        friendUser.friends.append(myID) // append our id to user's friends list of ids
        print("Preparing to update FriendUser ----------------------------")
        updateUser(user: friendUser)
        
        var myUser = getUser(id: myID) //add user as a friend of mine
        myUser.friends.append(user.id)         // appends other user's id to our own friend array of ids
        updateUser(user: myUser)
    }
    
    func addRoom(room: Room) {
        let userDS = UserDataSource()
        for id in room.members {
            var user = userDS.getUser(id: id)
            user.rooms.append(room.id)
            if id != room.creatorID {
                user.invitedRooms.append(InvitedRoom(roomID: room.id))
            }
            userDS.updateUser(user: user)
        }
    }
    
    func setOnlineStatus(isOnline: Bool) {
        var user = getCurrentUser()
        user.isOnline = isOnline
        updateUser(user: user)
    }
    
    func getUsernameByEmail(email: String) -> String {
        var username = ""
        
        let group = DispatchGroup()
        group.enter()
        
        Amplify.API.query(request: .paginatedList(User.self)) { event in
            switch event {
            case .success(let result):
                switch result {
                case .success(let users):
                    print("Successfully retrieved list of users: \(users)")
                    for user in users {
                        if user.email == email {
                            username = user.id
                        }
                    }
                    group.leave()
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
        
        group.wait()
        
        return username
    }
    
    
    func doesMyUserExist() -> Bool {
        var finaluser = User(id: "DOESNOTEXIST", firstName: " ", lastName: " ", email: " ", birthday: .now(), pronouns: " ", location: " ", adPreference: [1], deviceFCMToken: " ", isOnline: false, secretPin: "", friends: [], rooms: [], tokens: 0, background: 1, notificationsBroadcast: true, notificationsLP: true, chatFontSize: 16, needIntro: false)
        let id = Amplify.Auth.getCurrentUser()?.username
        if id == nil {
            return false
        }
        let group = DispatchGroup()
        group.enter()
        
        Amplify.API.query(request: .get(User.self, byId: id!)) { event in
            switch event {
            case .success(let result):
                switch result {
                case .success(let user):
                    guard let user = user else {
                        print("Could not find user")
                        print("failed -1 for id: \(id ?? "DIDNOTGETID") and my id is: \(Amplify.Auth.getCurrentUser()?.username ?? "NOUSERNAME")")
                        group.leave()
                        return
                    }
                    print("Successfully retrieved user: \(user)")
                    //user found
                    finaluser = user
                    group.leave()
                    
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
        
        
        group.wait()
        
        if finaluser.id == "DOESNOTEXIST" {
            return false
        } else {
            return true
        }
        
    }
    
    func checkIfRoomExists(memberids: [String]) -> String? {
        let user = getCurrentUser()
        for id in user.rooms {
            let room = RoomDataSource().getRoom(id: id)
            if room.members.count == memberids.count && room.members.sorted() == memberids.sorted() {
                return room.id
            }
            
        }
        return nil
    }
    
    
}
