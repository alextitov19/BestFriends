//
//  VirtualHug.swift
//  BestFriends
//
//  Created by Social Tech on 6/4/22.
//


import CoreHaptics
import SwiftUI

struct VirtualHug: View {
    @State private var engine: CHHapticEngine?
    
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
                
            Text("Hold phone to your")
                .font(.system(size: 35))
                .fontWeight(.ultraLight)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.black)
 
            Text("H E A R T")
                .font(.system(size: 80))
                .fontWeight(.ultraLight)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.pink)
            
            Spacer()
                .frame(height: 100)
            
            Text("[tap here]")
                .font(.system(size: 50))
                .fontWeight(.ultraLight)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.blue)
                .padding()
                .onAppear(perform: prepareHaptics)
                .onTapGesture(perform: complexSuccess)
            
//                .padding()
            
            Spacer()
                .frame(height: 400)
        }
              
        }
      
    }
    

    

    
    

//MARK: the below lets you customize the vibration

        func prepareHaptics() {
            guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else { return }
            do {
                engine = try CHHapticEngine()
                try engine?.start()
            } catch {
                print("There was an error creating the engine: \(error.localizedDescription)")
            }
        }

  func complexSuccess() {
      guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else { return }

      let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: 3)
      let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 1)
      let decayTime = CHHapticEventParameter(parameterID: .decayTime, value: 2)
      
      
      let event = CHHapticEvent(eventType: .hapticContinuous, parameters: [intensity, sharpness, decayTime], relativeTime: 0, duration: 4)

      do {
          let pattern = try CHHapticPattern(events: [event], parameters: [])
          let player = try engine?.makeAdvancedPlayer(with: pattern)
          try player?.start(atTime: 1.5)
      }
      catch {
          print("failed to play \(error.localizedDescription)")
          print("oh no")
      }
  }
        
    }

//      MARK: make sure this part works. See video at 7:25 timeline
    

    
//    
//    struct VirtualHug_Previews : PreviewProvider {
//        static var previews: some View {
//            VirtualHug()
//        }
//    }
//
// 
    
    
    
    
    
    
    
    
    
         

              
               
            
        
        
    












