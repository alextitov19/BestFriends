//
//  AffirmationMain.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 6/13/23.
//

import SwiftUI

struct AffirmationMain: View {
    
    let affirmationDictionary: [String: String] = [
        "Heart": "I am pretty",
        "Circle": "I look cute today",
        "Square": "I am smart in school",
        "Star": "I am always around when my friends are having a difficult day",
        "Hexagon": "It is important to me to be a supportive friend without judgement"
        // This should be read from backEnd
    ]

    @State private var currentShape: String = ""
    @State private var currentSentence: String = ""

    private func randomizeAffirmation() {
        let randomIndex = Int.random(in: 0..<affirmationDictionary.count)
        let randomShape = Array(affirmationDictionary.keys)[randomIndex]
        let randomSentence = Array(affirmationDictionary.values)[randomIndex]
        
        currentShape = randomShape
        currentSentence = randomSentence
    }
    
    private func startTimer() {
        Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { _ in
            randomizeAffirmation()
        }
    }

    var body: some View {
        ZStack{
            ColorManager.purple7
                .opacity(0.3)
                .ignoresSafeArea()
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
                .onAppear {
                    randomizeAffirmation()
                    startTimer()
                }
            
            VStack {
                switch currentShape {
                    case "Star":
                        Image(systemName: "star.fill")
                            .font(.system(size: 100))
                            .foregroundColor(.yellow)
                    case "Circle":
                        Circle()
                            .frame(width: 100, height: 100)
                            .foregroundColor(.blue)
                    case "Square":
                        Rectangle()
                            .frame(width: 100, height: 100)
                            .foregroundColor(.green)
                    case "Heart":
                        Image(systemName: "heart.fill")
                            .font(.system(size: 100))
                            .foregroundColor(.red)
                    case "Hexagon":
                        HexagonShape()
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(.blue)
                    default:
                        Text(currentShape)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                }
                
                Text(currentSentence)
                    .font(.title)
                    .foregroundColor(.white)
                
                NavigationLink(destination: AffirmationEdit(affirmationDictionary: affirmationDictionary)) {
                                       Text("Edit")
                                           .foregroundColor(.white)
                                           .padding()
                                           .background(Color.blue)
                                           .cornerRadius(10)
                                   }
                                   .padding(.bottom, 20)
                
            }
        }
    }
}

struct AffirmationMain_Previews: PreviewProvider {
    static var previews: some View {
        AffirmationMain()
    }
}

struct HexagonShape: Shape {
    func path(in rect: CGRect) -> Path {
        let width = rect.width
        let height = rect.height
        
        let sideLength = min(width, height)
        let centerX = rect.midX
        let centerY = rect.midY
        
        var path = Path()
        
        path.move(to: CGPoint(x: centerX + sideLength * cos(0), y: centerY + sideLength * sin(0)))
        
        for angle in stride(from: 0, to: CGFloat.pi * 2, by: CGFloat.pi / 3) {
            let x = centerX + sideLength * cos(angle)
            let y = centerY + sideLength * sin(angle)
            path.addLine(to: CGPoint(x: x, y: y))
        }
        
        path.closeSubpath()
        
        return path
    }
}
