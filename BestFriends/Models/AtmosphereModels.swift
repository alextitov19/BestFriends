//
//  AtmosphereModels.swift
//  BestFriends
//
//  Created by Alex Titov on 3/31/22.
//

import Foundation

struct Atmosphere: Codable {
    let id: String
    let planet: Int
    let mood: Int
    let moodLogs: [String] = []
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case planet = "planet"
        case mood = "mood"
        case moodLogs = "mood_logs"
    }
}

struct MoodLog: Codable {
    let id: String
    let mood: Int
    let summary: String
    let createdOn: Int64
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case mood = "mood"
        case summary = "summary"
        case createdOn = "created_on"
    }
}

struct CreateMoodLog: Codable {
    let mood: Int
    let summary: String
    enum CodingKeys: String, CodingKey {
        case mood = "mood"
        case summary = "summary"
    }
}
