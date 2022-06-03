//
//  ArrayExt.swift
//  BestFriends
//
//  Created by Alex Titov on 5/20/22.
//

import Foundation

extension Array where Element: Comparable {
    func containsSameElements(as other: [Element]) -> Bool {
        return self.count == other.count && self.sorted() == other.sorted()
    }
}
