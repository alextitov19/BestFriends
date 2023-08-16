//
//  testBreathIn.swift
//  BestFriends
//
//  Created by Social Tech on 4/11/22.
//


import Foundation
import SwiftUI
import AVKit
struct BreathInView: View {
    
    
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    private let timer = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()
    
    @State private var count: Int = 10
    @State private var finishedText: String = "10"
    @State private var isTimerRunning = true
    @State private var buttonText = "I'm Done"
//    @State private var buttonText = "Resume"
    
    var body: some View {
        
        
        ZStack {
              
 
            ColorManager.purple7
                .opacity(0.9)
                .ignoresSafeArea()
                
            AdPlayerView(name: "TreeLake2")
                .ignoresSafeArea()
                .blendMode(.screen)
           
       
            
            VStack {
                ZStack {
             
                Image(systemName: "heart.fill")
    
                         .resizable()
                         .frame(width: 135, height: 110, alignment: .leading)
   
                         .foregroundColor(ColorManager .grey2)
                   .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 3, x: 1, y: 3)
                   .glow(color: ColorManager.purple3, radius: 7)
                  .opacity(0.2)

                    
                 Text("Breathe in")
                         .font(.system(size: 20))
                         .foregroundColor(.white)
                         .fontWeight(.light)
                         .multilineTextAlignment(.center)

                   
                }
                
                
                HStack {
       
                    Spacer()
                        .frame(height: 40)
                }
                
                
                Text(finishedText)
                    .font(.system(size: 60))
                    .fontWeight(.thin)
                    .foregroundColor(.white)
                    .lineLimit(1)
                
                Button(action: buttonClicked, label: {
                    CustomButtonInterior(text: buttonText, backgroundColor: ColorManager.purple4, textColor: .white)
                })
                
                
                
            }
            
            .onReceive(timer) { _ in
               timerFunction()
                
            }
        }
        
    }
    private func buttonClicked() {
        isTimerRunning.toggle()
        if isTimerRunning == true {
            count = 11
            buttonText = "I'm Done"
        }else {
            buttonText = "Resume"
        }

    }
    private func timerFunction() {
        if isTimerRunning {
            withAnimation {
                if count  == 1 {
                    
                    finishedText = "E X H A L E"
                    count = 11
                        
                } else {
                    count -= 1
                    finishedText = String(count)
                    
                }
                
            }
        }
    }
}

