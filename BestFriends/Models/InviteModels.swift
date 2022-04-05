//
//  InviteModels.swift
//  BestFriends
//
//  Created by Alex Titov on 4/4/22.
//

import Foundation

struct Invite: Codable {
    let sender: String
    let recipient: String
    let name: String
    enum CodingKeys: String, CodingKey {
        case sender = "sender"
        case recipient = "recipient"
        case name = "name"
    }
}

struct CreateInvite: Codable {
    let recipient: String
    enum CodingKeys: String, CodingKey {
        case recipient = "recipient"
    }
}

// Same struct used for accepting or rejecting a friend invite
struct AcceptRejectInvite: Codable {
    let sender: String
    enum CodingKeys: String, CodingKey {
        case sender = "sender"
    }
}
