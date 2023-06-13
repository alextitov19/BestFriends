//
//  AffirmationMain.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 6/13/23.
//

import SwiftUI

struct AffirmationMain: View {
    
    let affirmationDictionary: [String: String] = [
        "Star": "I am a star",
        "Circle": "I am a circle",
        "Square": "I am a square",
        "Heart": "I am a heart"
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
                            .foregroundColor(.white)
                    case "Heart":
                        Image(systemName: "heart.fill")
                            .font(.system(size: 100))
                            .foregroundColor(.red)
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
