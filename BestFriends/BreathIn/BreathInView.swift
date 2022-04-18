//
//  testBreathIn.swift
//  BestFriends
//
//  Created by Social Tech on 4/11/22.
//


import Foundation
import SwiftUI

struct BreathInView: View {
    
    
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    private let timer = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()
    
    @State private var count: Int = 10
    @State private var finishedText: String = "10"
    @State private var isTimerRunning = true
    @State private var buttonText = "Stop"
    
    var body: some View {
        
        
        ZStack {
            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                .ignoresSafeArea()
            
            Image("Star Page")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            Image("settingsBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            
            VStack {
                
               Text("R e l a x")
                    .font(.system(size: 100, weight: .ultraLight))
               
                   .offset(x: 10, y: 135)
                   .foregroundColor(.white)
               
                HStack {
//                    Button(action: {
//                        self.presentationMode.wrappedValue.dismiss()
//                    }) {
//                        Image("arrowRight")
//                            .resizable()
//                            .frame(width: 25, height: 25)
//                            .scaledToFit()
//                            .colorInvert()
//                            .rotationEffect(Angle(degrees: 180))
//                    }
                    
                    Spacer()
                    
                    
                    Text("Breath 'in' Slowly, \n HOLD")
                        .font(.system(size: 35))
                        .fontWeight(.light)
                        .offset(x: 120, y: 50)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
               
                    
                    
                    Spacer()
                        .frame(height: 460)
                }
                
                
                Text(finishedText)
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .bold()
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


struct BreathInView_Previews : PreviewProvider {
static var previews: some View {
    BreathInView()
}
}
