//
//  ButtonCustom.swift
//  ZetMap
//
//  Created by Alex Titov on 11/15/21.
//

import SwiftUI

struct CustomButtonInterior: View {
    
    let text: String
    let color: Color

    init(text: String, color: Color) {
        self.text = text
        self.color = color
    }

    var body: some View {
            Text(text)
                .font(.system(size: 20, weight: .semibold))
                .foregroundColor(ColorManager.grey)
                .frame(maxWidth: 200)
                .frame(height: 60)
                .background(color)
                .cornerRadius(20)
                .padding(30)
        }
}
