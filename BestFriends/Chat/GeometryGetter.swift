//
//  ChatExtensions.swift
//  BestFriends
//
//  Created by Alex Titov on 5/19/21.
//

import SwiftUI
import Combine

struct GeometryGetter: View {
    @Binding var rect: CGRect

    var body: some View {
        GeometryReader { geometry in
            Group { () -> AnyView in
                DispatchQueue.main.async {
                    self.rect = geometry.frame(in: .global)
                }

                return AnyView(Color.clear)
            }
        }
    }
}
