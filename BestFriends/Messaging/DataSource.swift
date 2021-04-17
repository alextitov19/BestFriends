//
//  DataSource.swift
//  BestFriends
//
//  Created by Alex Titov on 4/17/21.
//

import Amplify
import Foundation

class DataSource: ObservableObject {
    @Published var messages = [Message]()
    
}
