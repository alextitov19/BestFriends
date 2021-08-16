//
//  UserSubscriptionService.swift
//  BestFriends
//
//  Created by Alex Titov on 7/20/21.
//

import Amplify
import Foundation

class UserSubscriptionService: ObservableObject {
    
    @Published var user: User
    var subscription: GraphQLSubscriptionOperation<User>?
    
    init(user: User) {
        self.user = user
    }
    
    func createSubscription() {
        subscription = Amplify.API.subscribe(request: .subscription(of: User.self, type: .onUpdate), valueListener: { (subscriptionEvent) in
            switch subscriptionEvent {
            case .connection(let subscriptionConnectionState):
                print("Subscription connect state is \(subscriptionConnectionState)")
            case .data(let result):
                switch result {
                case .success(let updatedUser):
                    print("Successfully got the updated user from subscription: \(updatedUser)")
                    if updatedUser.id == self.user.id {
                        self.user = updatedUser
                        print("Updated user: ", self.user)
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

}
