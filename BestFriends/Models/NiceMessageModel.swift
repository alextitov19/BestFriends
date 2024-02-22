//
//  NiceMessageModel.swift
//  BestFriends
//
//  Created by Alex Titov on 12/24/22.
//

import Foundation

struct NiceMessage: Codable {
    let id: String
    let message: String
    let sender: String
    let receiver: String
    let createdOn: Int64
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case message = "message"
        case sender = "sender"
        case receiver = "receiver"
        case createdOn = "created_on"
    }
}

struct CreateNiceMessage: Codable {
    let message: String
    let receiver: String
    enum CodingKeys: String, CodingKey {
        case message = "message"
        case receiver = "receiver"
    }
}
