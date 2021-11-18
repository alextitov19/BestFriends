//
//  ButtonCustom.swift
//  ZetMap
//
//  Created by Alex Titov on 11/15/21.
//

import SwiftUI

struct CustomButtonInterior: View {
    
    let text: String
    let backgroundColor: Color
    let textColor: Color

    init(text: String, backgroundColor: Color, textColor: Color) {
        self.text = text
        self.backgroundColor = backgroundColor
        self.textColor = textColor
    }

    var body: some View {
            Text(text)
                .font(.system(size: 20, weight: .semibold))
                .foregroundColor(textColor)
                .frame(maxWidth: 200)
                .frame(height: 60)
                .background(backgroundColor)
                .cornerRadius(20)
                .padding(30)
        }
}
