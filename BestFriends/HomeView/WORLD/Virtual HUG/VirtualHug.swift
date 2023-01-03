//
//  VirtualHug.swift
//  BestFriends
//
//  Created by Social Tech on 6/4/22.
//


//import CoreHaptics
import SwiftUI

struct VirtualHug: View {
    
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
                .frame(height: 70)
            
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
                .onTapGesture(perform: {
                    let generator = UINotificationFeedbackGenerator()
                        generator.notificationOccurred(.success)
                })

           }
            
            Spacer()
                .frame(height: 400)
            
         
        }
              
        }
      
    }
    
}
    
