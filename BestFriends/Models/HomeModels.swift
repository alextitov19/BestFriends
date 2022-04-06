//
//  HomeModels.swift
//  BestFriends
//
//  Created by Alex Titov on 3/31/22.
//

import Foundation

struct HomeData: Codable {
    let user: User
    let atmosphere: Atmosphere
    let groups: [Group]
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    enum CodingKeys: String, CodingKey {
        case user = "user"
        case atmosphere = "atmosphere"
        case groups = "groups"
        case friends = "friends"
        case friendAtmospheres = "friend_atmospheres"
    }
}
