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

struct UpdatePasswordCred: Codable {
    let email: String
    let password: String
    let newPassword: String
    enum CodingKeys: String, CodingKey {
        case email = "email"
        case password = "password"
        case newPassword = "new_password"
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
