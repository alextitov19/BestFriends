//
//  UIColorExtension.swift
//  BestFriends
//
//  Created by Alex Titov on 7/15/21.
//

import SwiftUI

extension UIColor {
    static func random() -> UIColor {
        return UIColor(
           red:   .random(),
           green: .random(),
           blue:  .random(),
           alpha: 1.0
        )
    }
}
