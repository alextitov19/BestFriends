//
//  ExtColor.swift
//  ZetMap
//
//  Created by Alex Titov on 11/14/21.
//

import SwiftUI

struct ColorManager {
    // create static variables for custom colors
    static let darkYellow = Color(hex: "#c78a44")
    static let lightYellow = Color(hex: "#d8b26e")
    static let grey = Color(hex: "#dad5d2")
    static let lightBlue = Color(hex: "#b4c1c5")
    static let darkBlue = Color(hex: "#5f7782")

}

extension Color {
    init(hex: String, alpha: Double = 1) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (r, g, b) = ((int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (r, g, b) = (int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (r, g, b) = (int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (r, g, b) = (1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: alpha
        )
    }
}
