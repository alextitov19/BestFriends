//
//  NotificationDataSource.swift
//  BestFriends
//
//  Created by Alex Titov on 5/13/21.
//

import Amplify
import Foundation

class NotificationDataSource: ObservableObject {

    func createNotification(notification: Notification) {
        Amplify.API.mutate(request: .create(notification)) { [weak self] mutationResult in
            switch mutationResult {

            case .success(let creationResult):

                switch creationResult {
                case .success:
                    print("Successfully created notification")

                case .failure(let error):
                    print(error)
                }

            case .failure(let apiError):
                print(apiError)
            }
        }
    }
}
