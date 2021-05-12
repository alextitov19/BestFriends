//
//  LT3.swift
//  BestFriends
//
//  Created by Robert Roe on 5/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("On long press")
                .contextMenu {
                    menuItems
                }
            Menu("On tap") {
                menuItems
            }
        }
    }
    
    var menuItems: some View {
        Group {
            Button("Action 1", action: {})
            Button("Action 2", action: {})
            Button("Action 3", action: {})
        }
    }
}


