//
//  Registration.swift
//  BestFriends
//
//  Created by Alex Titov on 4/17/21.
//

import Foundation
import Amplify

class UserManager: ObservableObject {
    
    func create(_ user: User) {
        Amplify.API.mutate(request: .create(user)) { [weak self] mutationResult in
            switch mutationResult {

            case .success(let creationResult):
                
                switch creationResult {
                case .success:
                    print("Successfully created user")
                    
                case .failure(let error):
                    print(error)
                }
                
            case .failure(let apiError):
                print(apiError)
            }
        }
    }
    
}
