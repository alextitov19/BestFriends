//
//  Star.swift
//  BestFriends
//
//  Created by Alex Titov on 4/21/21.
//

import SwiftUI

struct Star: View {
    var id: String
    var name: String
    var image = Image(uiImage: UIImage(named: "starPurple")!)
    var hidingName = true
//    var isSpinning = true
    @State var angle: Double = 0.0
        @State var isAnimating = false
        
        var foreverAnimation: Animation {
            Animation.linear(duration: 2.0)
                .repeatForever(autoreverses: false)
        }
    
    var body: some View {
        VStack {
            Text(name)
                .font(.system(size: 16, weight: .light))
                .foregroundColor(.white)
                .offset(y: 10)
                .isHidden(hidingName)
            
//            if isSpinning {
                image
                    .resizable()
                    .frame(width: 80, height: 80, alignment: .center)
                    .scaledToFill()
                    .blendMode(.screen)
                    .rotationEffect(Angle(degrees: self.isAnimating ? 360.0 : 0.0))
                                    .animation(self.foreverAnimation)
                                    .onAppear {
                                        self.isAnimating = true
                                }
//            } else {
//                image
//                    .resizable()
//                    .frame(width: 80, height: 80, alignment: .center)
//                    .scaledToFill()
//                    .blendMode(.screen)
//            }
            
            
            
        }
        
    }
    
}
