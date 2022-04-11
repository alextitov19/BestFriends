//
//  testBreathIn.swift
//  BestFriends
//
//  Created by Social Tech on 4/11/22.
//


import Foundation
import SwiftUI

struct testBreathIn: View {
    let timer = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()
   
  @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    @State var count: Int = 10
    @State var finishedText: String? = nil
    
    var body: some View {
    ZStack {
//        Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
//            .ignoresSafeArea()
//
        Image("Star Page")
            .resizable()
            .ignoresSafeArea()
            .scaledToFill()
        
        Text(finishedText ?? "\(count)")
            .font(.system(size: 50))
            .foregroundColor(.white)
            .bold()
            .lineLimit(1)
                       }

        .onReceive(timer, perform: { _ in
    if count  <= 1 {
        finishedText = "Breath Out"
    } else {
        count -= 1
                }
            }
        )}
}
struct testBreathIn_Previews : PreviewProvider {
    static var previews: some View {
        testBreathIn()
    }
}
