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
    let createdOn: Int64
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case members = "members"
        case owner = "owner"
        case messages = "messages"
        case createdOn = "created_on"
    }
}

struct CreateGroup: Codable {
    let name: String
    let members: [String]
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case members = "members"
    }
}

struct Message: Codable {
    let id: String
    let senderId: String
    let senderName: String
    let body: String
    let image: String?
    let createdOn: Int64
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case senderId = "sender_id"
        case senderName = "sender_name"
        case body = "body"
        case image = "image"
        case createdOn = "created_on"
    }
}

struct CreateMessage: Codable {
    let body: String
    enum CodingKeys: String, CodingKey {
        case body = "body"
    }
}

struct CreateMessageWithImage: Codable {
    let groupId: String
    let body: String
    let image: Data
    enum CodingKeys: String, CodingKey {
        case groupId = "group_id"
        case body = "body"
        case image = "image"
    }
}

struct ImageData: Codable {
    let image: Data
    enum CodingKeys: String, CodingKey {
        case image = "image"
    }
}



