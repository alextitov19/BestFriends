//
//  VirtualHug.swift
//  BestFriends
//
//  Created by Social Tech on 6/4/22.
//


//import CoreHaptics
import SwiftUI

struct VirtualHug: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    private let timer = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()

    var body: some View {
        
        
        ZStack {
            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                .ignoresSafeArea()
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            AdPlayerView(name: "HugVideo")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            VStack {
                Text("tap,")
                    .font(.system(size: 30))
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
                
                Text("then hold iPhone to heart")
                    .font(.system(size: 30))
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
                
                
                Text("* (it will vibrate for a couple of seconds)")
                    .font(.system(size: 15))
                    .italic()
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager .grey3)
                
                Spacer()
                    .frame(height: 100)
                
                ZStack {
                    Image(systemName: "heart.fill")
                        .resizable()
                        .foregroundColor(.purple)
                        .frame(width: 150, height: 150)
                        .shadow(color: .blue, radius: 65, x: 30, y: 50)
                        .opacity(0.7)
                    
                    
                    Text("tap")
                        .font(.system(size: 35))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                        .padding()
                        .onReceive(timer) { _ in
                           vibrate()
                        }
                }
                
                Button(action: {
                    sessionManager.showLogin()
                },
                       label: {
                    Text("Send a Hug back")
                        .fontWeight(.thin)
                        .frame(width: 250, height: 30)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 30))
                        .background(ColorManager.purple1)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        .opacity(0.7)
                })
                
                Spacer()
                    .frame(height: 300)
            }
        }
    }
    
    private func vibrate() {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.success)
    }
    
}



