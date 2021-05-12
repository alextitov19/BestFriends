//
//  LT3.swift
//  BestFriends
//
//  Created by Robert Roe on 5/12/21.
//

import SwiftUI

struct LT3: View {
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
            Button("Swith to BlueMode", action: {})
            
            
            Button("Block Friend", action: {})
            
            
            Button("Delete Friend", action: {})
            
            
            
            
        }
    }
}
