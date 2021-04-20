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
                
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
        return finaluser
    }
    
    func addFriend(user: User) {
        //add myself as a friend of user
        guard let myusername = Amplify.Auth.getCurrentUser()?.username else { return }
        if ((user.friends?.contains(myusername)) == true) {
            return
        }
        
        var updatedUser = user
        
        updatedUser.friends?.append(myusername)
        
        Amplify.API.mutate(request: .update(updatedUser)) { event in
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
        
        
        //add user as a friend of mine
        
    }
    
    
}
