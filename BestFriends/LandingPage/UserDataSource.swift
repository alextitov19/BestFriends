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
        var finaluser = User(id: " ", firstName: " ", lastName: " ", birthday: .now(), pronouns: " ", location: " ", adPreference: " ", friends: [], rooms: [])

        let group = DispatchGroup()
        group.enter()
        
            Amplify.API.query(request: .get(User.self, byId: id)) { event in
                switch event {
                case .success(let result):
                    switch result {
                    case .success(let user):
                        guard let user = user else {
                            print("Could not find user")
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
    
    func addFriend(user: User) {
        //add myself as a friend of user
        guard let myID = Amplify.Auth.getCurrentUser()?.username else { return } // get my id
        if ((user.friends?.contains(myID)) == true) { //if that user already contains my id in their list of friend ids we abort
            return
        }
        
        var updatedUser = user
        
        updatedUser.friends?.append(myID) // append our id to user's friends list of ids
        
        print("Preparing to update 1 ----------------------------")

            Amplify.API.mutate(request: .update(updatedUser)) { event in  //update user
                    switch event {
                    case .success(let result):
                        switch result {
                        case .success(let updatedUser):
                            print("Successfully updated user: \(updatedUser)")
                        case .failure(let error):
                            print("Got failed result with \(error.errorDescription)")
                        }
                    case .failure(let error):
                        print("Got failed event with error \(error)")
                    }
                }
        
        
        var myUser = getUser(id: myID) //add user as a friend of mine

        myUser.friends?.append(user.id)         // appends other user's id to our own friend array of ids



            Amplify.API.mutate(request: .update(myUser)) { event in  //update my user
                    switch event {
                    case .success(let result):
                        switch result {
                        case .success(let myUser):
                            print("Successfully updated my user: \(myUser)")
                        case .failure(let error):
                            print("Got failed result with \(error.errorDescription)")
                        }
                    case .failure(let error):
                        print("Got failed event with error \(error)")
                    }
                }
        
        

    }
    
    
}
