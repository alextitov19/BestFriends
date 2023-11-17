//
//  RR58.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 10/29/23.
//

import SwiftUI

struct RR58: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct RR58_Previews: PreviewProvider {
    static var previews: some View {
        RR58()
    }
}
//struct RR58: View {
//    @State private var hearts: [Heart] = []
//
//    var body: some View {
//        VStack {
//            Button("Show Hearts") {
//                hearts.append(Heart())
//            }
//            .padding()
//            
//            ZStack {
//                ForEach(hearts) { heart in
//                    heart.view
//                }
//            }
//        }
//    }
//}
//
//struct Heart {
//    var position: CGPoint {
//        CGPoint(x: CGFloat.random(in: 0...300), y: CGFloat.random(in: 0...300))
//    }
//    
//    var view: some View {
//        Image(systemName: "heart.fill")
//            .foregroundColor(.red)
//            .scaleEffect(1.0)
//            .position(position)
//            .animation(
//                Animation.easeInOut(duration: 1.5)
//                    .repeatForever(autoreverses: true)
//            )
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
