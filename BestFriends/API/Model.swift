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

struct SignUpUserData: Codable {
    let firstName: String
    let lastName: String
    let credentials: Credentials
    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
        case credentials = "credentials"
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

//struct User: Codable {
//    let id: String
//    let name: String
//    let email: String
//    enum CodingKeys: String, CodingKey {
//        case id = "id"
//        case name = "name"
//        case email = "email"
//    }
//}

struct User: Codable {
    let id: String
    let firstName: String
    let lastName: String
    let APNToken: String?
    let friends: [String] = []
    let groups: [String] = []
    let atmosphere: String
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case firstName = "first_name"
        case lastName = "last_name"
        case APNToken = "apn_token"
        case friends = "friends"
        case groups = "groups"
        case atmosphere = "atmosphere"
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

struct Empty :Codable {
}
