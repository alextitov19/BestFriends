//
//  Settings.swift
//  BestFriends
//
//  Created by Alex Titov on 3/29/22.
//

import Foundation

final class Defaults {
    
    private enum Keys: String {
        case user = "current_user"
    }
    
    static var currentUser: User? {
        get {
            guard let data = UserDefaults.standard.data(forKey: Keys.user.rawValue) else {
                return nil
            }
            return try? JSONDecoder().decode(User.self, from: data)
        }
        set {
            if let data = try? JSONEncoder().encode(newValue) {
                UserDefaults.standard.set(data, forKey: Keys.user.rawValue)
            } else {
                UserDefaults.standard.removeObject(forKey: Keys.user.rawValue)
            }
            UserDefaults.standard.synchronize()
        }
    }
    
}
