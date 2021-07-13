//
//  UserDataSource.swift
//  BestFriends
//
//  Created by Alex Titov on 4/19/21.
//

import Foundation
import Amplify

struct UserDataSource {
        
    func getUser(id: String) -> User {
        var finaluser = User(id: " ", firstName: " ", lastName: " ", email: " ", birthday: .now(), pronouns: " ", location: " ", adPreference: " ", deviceFCMToken: " ", isOnline: false, secretPin: "", friends: [], rooms: [], tokens: 0, background: 1, notificationsBM: true, notificationsLP: true)
        
        let group = DispatchGroup()
        group.enter()
        
        Amplify.API.query(request: .get(User.self, byId: id)) { event in
            switch event {
            case .success(let result):
                switch result {
                case .success(let user):
                    guard let user = user else {
                        print("Could not find user")
                        print("failed 0 for id: \(id) and my id is: \(Amplify.Auth.getCurrentUser()?.username)")
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
        var finaluser = User(id: " ", firstName: " ", lastName: " ", email: " ", birthday: .now(), pronouns: " ", location: " ", adPreference: " ", deviceFCMToken: " ", isOnline: false, secretPin: "", friends: [], rooms: [], tokens: 0, background: 1, notificationsBM: true, notificationsLP: true)
        
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
    
    func getAllUsernames() -> [String] {
        var usernames: [String] = []
        
        let group = DispatchGroup()
        group.enter()
        
        Amplify.API.query(request: .paginatedList(User.self)) { event in
            switch event {
            case .success(let result):
                switch result {
                case .success(let users):
                    print("Successfully retrieved list of users: \(users)")
                    for user in users {
                        usernames.append(user.id)
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
        
        return usernames
    }
    
    func updateUser(user: User) {
        Amplify.API.mutate(request: .update(user)) { event in  //update user
            switch event {
            case .success(let result):
                switch result {
                case .success(let user):
                    print("Successfully updated user: \(user)")
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
    }
    
    func addFriend(user: User) {
        //add myself as a friend of user
        guard let myID = Amplify.Auth.getCurrentUser()?.username else { return } // get my id
        if ((user.friends?.contains(myID)) == true) { return }
        var friendUser = user
        friendUser.friends?.append(myID) // append our id to user's friends list of ids
        print("Preparing to update FriendUser ----------------------------")
        updateUser(user: friendUser)
        
        var myUser = getUser(id: myID) //add user as a friend of mine
        myUser.friends?.append(user.id)         // appends other user's id to our own friend array of ids
        updateUser(user: myUser)
    }
    
    func addRoom(userID: String, roomID: String) {
        var user = getUser(id: userID)
        user.rooms?.append(roomID)
        if userID != Amplify.Auth.getCurrentUser()!.username {
            user.invitedRooms?.append(InvitedRoom(roomID: roomID))
        }
        updateUser(user: user)
    }
    
    func setOnlineStatus(isOnline: Bool) {
        var user = getCurrentUser()
        user.isOnline = isOnline
        updateUser(user: user)
    }
    
    func getAllEmails() -> [String] {
        var emails: [String] = []
        
        let group = DispatchGroup()
        group.enter()
        
        Amplify.API.query(request: .paginatedList(User.self)) { event in
            switch event {
            case .success(let result):
                switch result {
                case .success(let users):
                    print("Successfully retrieved list of users: \(users)")
                    for user in users {
                        emails.append(user.email)
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
        
        return emails
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
    
}
