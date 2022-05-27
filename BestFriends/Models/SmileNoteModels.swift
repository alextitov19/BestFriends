//
//  SmileNoteModels.swift
//  BestFriends
//
//  Created by Alex Titov on 5/27/22.
//

import Foundation

struct SmileNote: Codable {
    let id: String
    let messageId: String
    let messageBody: String
    let senderName: String
    let createdOn: Int64
    let favorite: Bool
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case messageId = "message_id"
        case messageBody = "message_body"
        case senderName = "sender_name"
        case createdOn = "created_on"
        case favorite = "favorite"
    }
}

struct CreateSmileNote: Codable {
    let messageId: String
    let messageBody: String
    let senderName: String
    enum CodingKeys: String, CodingKey {
        case messageId = "message_id"
        case messageBody = "message_body"
        case senderName = "sender_name"
    }
}
