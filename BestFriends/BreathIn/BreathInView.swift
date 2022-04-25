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
    @State private var buttonText = "I'm Done"
//    @State private var buttonText = "Resume"
    
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
                ZStack {
               Text("R e l a x")
                    .font(.system(size: 100, weight: .ultraLight))
               
                   .offset(x: 10, y: 135)
                   .foregroundColor(.white)
               
                Image(systemName: "heart.fill")
     //            Rectangle()
                         .resizable()
                         .frame(width: 135, height: 110, alignment: .leading)
     //                .clipShape(Circle())
                     .foregroundColor(.pink)
                   .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 3, x: 1, y: 3)

                    
                 Text("you got this!")
                         .font(.system(size: 20))
                         .foregroundColor(.white)
                         .fontWeight(.medium)
                         .multilineTextAlignment(.center)
         
                }
                
                
                HStack {

                    Spacer()
                        .frame(height: 5)
                    
                    
                    Text("breath 'IN' slowly, \n'HOLD'")
                        .font(.system(size: 35))
                        .fontWeight(.thin)
                        .offset(x: 120, y: 50)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
               
                    
                    
                    Spacer()
                        .frame(height: 400)
                }
                
                
                Text(finishedText)
                    .font(.system(size: 50))
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


struct BreathInView_Previews : PreviewProvider {
static var previews: some View {
    BreathInView()
}
}
