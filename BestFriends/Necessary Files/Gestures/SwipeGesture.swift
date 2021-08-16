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
            Text("Drag me")
                .frame(width:200, height: 100)
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
