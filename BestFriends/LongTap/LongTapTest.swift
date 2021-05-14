//
//  LongTapTest.swift
//  BestFriends
//
//  Created by Robert Roe on 5/12/21.
//

import SwiftUI

       
                
struct LongTapTest: View {
    // 1.
    @State var circleColor = Color.yellow
    
    var body: some View {
        
        // 2.
        Circle()
        .foregroundColor(circleColor)
        .frame(width: 200, height: 200, alignment: .center)
        // 3.
        .gesture(LongPressGesture(minimumDuration: 2)
        .onEnded { _ in
            if self.circleColor == .yellow {
                self.circleColor = .red
            } else {
                self.circleColor = .yellow
            }
        })
    }
}
