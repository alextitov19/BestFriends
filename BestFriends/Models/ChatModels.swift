//
//  ChatModels.swift
//  BestFriends
//
//  Created by Alex Titov on 3/31/22.
//

import Foundation

struct Group: Codable {
    let id: String
    let name: String
    let members: [String]
    let owner: String
    let messages: [String] = []
    let createdOn: String
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case members = "members"
        case owner = "owner"
        case messages = "messages"
        case createdOn = "created_on"
    }
}

struct Message: Codable {
    let id: String
    let senderId: String
    let senderName: String
    let body: String
    let createdOn: String
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case senderId = "sender_id"
        case senderName = "sender_name"
        case body = "body"
        case createdOn = "created_on"
    }
}

