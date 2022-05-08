//
//  NotificationModels.swift
//  BestFriends
//
//  Created by Alex Titov on 5/8/22.
//

import Foundation

struct CreateNotification: Codable {
    let title: String
    let body: String
    let APNToken: String
    enum CodingKeys: String, CodingKey {
        case title = "title"
        case body = "body"
        case APNToken = "apn_token"
    }
}
