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

struct InAppNotification: Codable {
    let user: String
    let sender: String
    let text: String
    let createdOn: Int64
    enum CodingKeys: String, CodingKey {
        case user = "user"
        case sender = "sender"
        case text = "text"
        case createdOn = "created_on"
    }
}
