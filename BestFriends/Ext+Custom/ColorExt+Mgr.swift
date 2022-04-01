//
//  ExtColor.swift
//  ZetMap
//
//  Created by Alex Titov on 11/14/21.
//

import SwiftUI

struct ColorManager {
    
    // Primary Color
    static let purple1 = Color(hex: "#f7f6fe")
    static let purple2 = Color(hex: "#cec8f5")
    static let purple3 = Color(hex: "#aea3ee")
    static let purple4 = Color(hex: "#8d7ee7")
    static let purple5 = Color(hex: "#5c46dd")
    static let purple7 = Color(hex: "#372a85")
    
    // Secondary Color
    static let orange1 = Color(hex: "#fef7ea")
    static let orange2 = Color(hex: "#fce7c0")
    static let orange3 = Color(hex: "#fbd796")
    static let orange4 = Color(hex: "#f9c66c")
    static let orange5 = Color(hex: "#f6ae2d")

    // Greyscale
    static let grey1 = Color(hex: "#e6e6e6")
    static let grey2 = Color(hex: "#b3b3b3")
    static let grey3 = Color(hex: "#808080")
    static let grey4 = Color(hex: "#333333")
    
    // Negative action/event/warning
    static let red = Color(hex: "#e02b2b")
    
    // Color for circles on SignUpViews
    // This is "purple5" + diffrent alpha
    static let signUpCircleColor = Color(hex: "#5c46dd", alpha: 0.3)
    
    // Colors for background of chats
    static let chatBubble0 = Color(hex: "#CE3145", alpha: 0.8)
    static let chatBubble1 = Color(hex: "#E3AD0E", alpha: 0.8)
    static let chatBubble2 = Color(hex: "#6C4000", alpha: 0.8)
    static let chatBubble3 = Color(hex: "#D26E0D", alpha: 0.8)
    
    //Planet menu circle background colors
    // PMBC = Planet menu Background Color
    static let pmbc_green = Color(hex: "#A1B57D")
    static let pmbc_blue = Color(hex: "#6998AB")
    static let pmbc_pink = Color(hex: "#C99797")

    
    //Planet glow colors
    
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
