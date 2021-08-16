//
//  SequenceExtension.swift
//  BestFriends
//
//  Created by Alex Titov on 8/11/21.
//

import SwiftUI

extension Sequence where Element: Hashable {
    func uniqued() -> [Element] {
        var set = Set<Element>()
        return filter { set.insert($0).inserted }
    }
}
