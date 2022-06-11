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
            Text("Hold your phone to your")
                .font(.system(size: 30))
                .fontWeight(.ultraLight)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.black)
         
            ZStack {
            Image(systemName: "heart.fill")
                .resizable()
                .foregroundColor(.purple)
                .frame(width: 150, height: 150)
                .shadow(color: .blue, radius: 65, x: 30, y: 50)
                .opacity(0.7)
            
            
            Text("TAP")
                .font(.system(size: 35))
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.white)
                .padding()
                .onAppear(perform: prepareHaptics)
                .onTapGesture(perform: complexSuccess)
               
            }
            
            Spacer()
                .frame(height: 400)
            
          
            
            Text("Cancel Audio")
                .fontWeight(.thin)
                .frame(width: 175, height: 40)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .font(.system(size: 30))
                .background(ColorManager.purple3)
                .cornerRadius(15)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
     
            Spacer()
                .frame(height: 100)
            
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

      let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: 5)
      let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 5)
      let decayTime = CHHapticEventParameter(parameterID: .decayTime, value: 1)
      
      
      let event = CHHapticEvent(eventType: .hapticContinuous, parameters: [intensity, sharpness, decayTime], relativeTime: 1, duration: 4)

      do {
          let pattern = try CHHapticPattern(events: [event], parameters: [])
          let player = try engine?.makeAdvancedPlayer(with: pattern)
          try player?.start(atTime: 0)
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
    
    
    
    
    
    
    
    
    
         

              
               
            
        
        
    












