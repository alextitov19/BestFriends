//
//  UserModel.swift
//  BestFriends
//
//  Created by Alex Titov on 6/17/22.
//

import Foundation

struct User: Codable {
    var id: String
    var firstName: String
    var lastName: String
    var APNToken: String
    var friends: [String]?
    var groups: [String]?
    var hiddenGroups: [String]?
    var atmosphere: String
    var chatPin: String
    var chatBackground: String
    var smileNotes: [String]?
    var photoPop: [String]?

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case firstName = "first_name"
        case lastName = "last_name"
        case APNToken = "apn_token"
        case friends = "friends"
        case groups = "groups"
        case hiddenGroups = "hidden_groups"
        case atmosphere = "atmosphere"
        case chatPin = "chat_pin"
        case chatBackground = "chat_background"
        case smileNotes = "smile_notes"
        case photoPop = "photo_pop"
    }
}
