//
//  SwipeGesture.swift
//  BestFriends
//
//  Created by Robert Roe on 5/15/21.
//

import SwiftUI

struct SwipeGesture: View {
    @State private var dragCompleted = false

    var body: some View {
        VStack {
            Image("Penguine Sticker 18")
                .gesture(
                    DragGesture(minimumDistance: 50)
                        .onEnded { _ in
                            dragCompleted = true
                        }
                )

            if dragCompleted {
                Text("Drag completed!")
            }
        }
    }
}
