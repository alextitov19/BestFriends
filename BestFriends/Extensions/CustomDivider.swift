//
//  CustomDivider.swift
//  BestFriends
//
//  Created by Alex Titov on 12/13/21.
//
import SwiftUI

struct CustomDivider: View {
    let color: Color
    var body: some View {
        Rectangle()
            .fill(color)
            .frame(height: 1)
            .edgesIgnoringSafeArea(.horizontal)
    }
}
