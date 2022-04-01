//
//  ViewExt.swift
//  ZetMap
//
//  Created by Alex Titov on 11/15/21.
//

import SwiftUI

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .center,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
    
        func multicolorGlow() -> some View {
            ZStack {
                ForEach(0..<2) { i in
                    Rectangle()
                        .fill(AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center))
                        .frame(width: 400, height: 300)
                        .mask(self.blur(radius: 20))
                        .overlay(self.blur(radius: 5 - CGFloat(i * 5)))
                }
            }
        }
    
    func glow(color: Color, radius: CGFloat = 20) -> some View {
            self
                .shadow(color: color, radius: radius / 3)
                .shadow(color: color, radius: radius / 3)
                .shadow(color: color, radius: radius / 3)
        }
}
