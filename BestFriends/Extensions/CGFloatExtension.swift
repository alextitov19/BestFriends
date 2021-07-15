//
//  CGFloatExtension.swift
//  BestFriends
//
//  Created by Alex Titov on 7/15/21.
//
import SwiftUI

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}
