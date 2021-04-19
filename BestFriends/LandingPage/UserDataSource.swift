//
//  UserDataSource.swift
//  BestFriends
//
//  Created by Alex Titov on 4/19/21.
//

import Foundation
import Amplify

struct UserDataSource {
    
    func getUser(id: String) {
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
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
    }
    
    func addFriend(user: User) {
        
    }
    
    
}
