//
//  Models.swift
//  BestFriends
//
//  Created by Alex Titov on 3/29/22.
//

struct Credentials: Codable {
    let email: String
    let password: String
    enum CodingKeys: String, CodingKey {
        case email = "email"
        case password = "password"
    }
}

struct UserData: Codable {
    let name: String
    let username: String
    let password: String
    enum CodingKeys: String, CodingKey {
        case name = "first_name"
        case username = "username"
        case password = "password"
    }
}

struct SignUpResponse: Codable {
    let code: Int
    let data: String
    enum CodingKeys: String, CodingKey {
        case code = "code"
        case data = "data"
    }
}

struct User: Codable {
    let id: String
    let name: String
    let email: String
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case email = "email"
    }
}

struct UserLocation: Codable {
    let latitude: String
    let longitude: String
    let timestamp: Int64
    enum CodingKeys: String, CodingKey {
        case latitude = "latitude"
        case longitude = "longitude"
        case timestamp = "timestamp"
    }
}

struct MyLocation: Codable {
    let latitude: String
    let longitude: String
    enum CodingKeys: String, CodingKey {
        case latitude = "latitude"
        case longitude = "longitude"
    }
}

struct RestResponse :Codable {
    var status: Int
    var data : String
    enum CodingKeys: String, CodingKey {
        case status = "status"
        case data = "data"
    }
}

struct Group: Codable {
    let id: String
    let name: String
    let owner: String
    let memberIds: [String]?
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case owner = "owner"
        case memberIds = "member_ids"
    }
}

struct CreateGroup: Codable {
    let name: String
    enum CodingKeys: String, CodingKey {
        case name = "name"
    }
}

struct RenameGroup: Codable {
    let groupId: String
    let newName: String
    enum CodingKeys: String, CodingKey {
        case groupId = "group_id"
        case newName = "new_name"
    }
}

struct HomepageData: Codable {
    let user: User
    let group: Group?
    let members: [User]?
    enum CodingKeys: String, CodingKey {
        case user = "user"
        case group = "group"
        case members = "members"
    }
}

struct Invite: Codable {
    let email: String
    let groupId: String
    enum CodingKeys: String, CodingKey {
        case email = "email"
        case groupId = "group_id"
    }
}

struct InviteData: Codable {
    let invite: Invite
    let group: Group
    let owner: User
    enum CodingKeys: String, CodingKey {
        case invite = "invite"
        case group = "group"
        case owner = "owner"
    }
}


struct Empty :Codable {
}
