//
//  PhotoPopModels.swift
//  BestFriends
//
//  Created by Mr Producer on 7/5/22.
//

import Foundation

struct PhotoPop: Codable {
    let id: String
    let receiver: String
    let sender: String
    let senderName: String
    let createdOn: Int64
    let image: Data
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case receiver = "receiver"
        case sender = "sender"
        case senderName = "sender_name"
        case createdOn = "created_on"
        case image = "image"
    }
}

struct CreatePhotoPop: Codable {
    let receiver: String
    let image: Data
    enum CodingKeys: String, CodingKey {
        case receiver = "receiver"
        case image = "image"
    }
}
