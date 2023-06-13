//
//  JournalModels.swift
//  BestFriends
//
//  Created by Alex Titov on 6/8/23.
//

import Foundation

struct Journal: Codable {
    let id: String
    let creator: String
    let category: String
    let text: String
    let messages: [String]
    let images: [String]
    let mood: Double
    let weather: String
    let createdOn: Int64
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case creator = "creator"
        case category = "category"
        case text = "text"
        case messages = "messages"
        case images = "images"
        case mood = "mood"
        case weather = "weather"
        case createdOn = "created_on"
    }
}

struct CreateJournal: Codable {
    let category: String
    let text: String
    let messages: [String]
    let images: [Data]
    let mood: Double
    let weather: String
    enum CodingKeys: String, CodingKey {
        case category = "category"
        case text = "text"
        case messages = "messages"
        case images = "images"
        case mood = "mood"
        case weather = "weather"
    }
}
