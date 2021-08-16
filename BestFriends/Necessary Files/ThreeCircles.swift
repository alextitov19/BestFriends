//
//  ThreeCircles.swift
//  BestFriends
//
//  Created by Alex Titov on 7/19/21.
//

import SwiftUI

struct ThreeCircles: View {
    
    let timer = Timer.publish(every: 1.6, on: .main, in: .common).autoconnect()
    @State var leftOffset: CGFloat = -100
    @State var rightOffset: CGFloat = 100
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.blue)
                .frame(width: 20, height: 20)
                .offset(x: leftOffset)
                .opacity(0.7)
                .animation(Animation.easeInOut(duration: 1))
            Circle()
                .fill(Color.blue)
                .frame(width: 20, height: 20)
                .offset(x: leftOffset)
                .opacity(0.7)
                .animation(Animation.easeInOut(duration: 1).delay(0.2))
            Circle()
                .fill(Color.blue)
                .frame(width: 20, height: 20)
                .offset(x: leftOffset)
                .opacity(0.7)
                .animation(Animation.easeInOut(duration: 1).delay(0.4))
        }
        .onReceive(timer) { (_) in
            swap(&self.leftOffset, &self.rightOffset)
        }
    }
    
}
