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
    var isSpinning = false
    @State var angle: Double = 0.0
    @State var isRotating = false
    @State var isAtMaxScale = false
    
    private var foreverAnimation: Animation {
        Animation.linear(duration: 4.0)
            .repeatForever(autoreverses: false)
    }
    
    private let animation = Animation.easeInOut(duration: 1).repeatForever(autoreverses: true)
    private let maxScale: CGFloat = 2
    
    var body: some View {
        VStack {
            Text(name)
                .font(.system(size: 16, weight: .light))
                .foregroundColor(.white)
                .offset(y: 10)
                .isHidden(hidingName)
            
            if isSpinning {
                image
                    .resizable()
                    .frame(width: 60, height: 60, alignment: .center)
                    .scaledToFill()
                    .blendMode(.screen)
                    .rotationEffect(Angle(degrees: self.isRotating ? 360.0 : 0.0))
                    .scaleEffect(isAtMaxScale ? maxScale : 1)
                    .onAppear {
                        withAnimation(self.foreverAnimation) {
                            self.isRotating.toggle()
                        }
                        withAnimation(self.animation, {
                            self.isAtMaxScale.toggle()
                        })
                    }
            } else {
                image
                    .resizable()
                    .frame(width: 60, height: 60, alignment: .center)
                    .scaledToFill()
                    .blendMode(.screen)
                    .scaleEffect(isAtMaxScale ? maxScale : 1)
                    .onAppear {
                        withAnimation(self.animation, {
                            self.isAtMaxScale.toggle()
                        })
                    }
            }
            
            
            
        }
        
    }
    
}
