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
        Text("tap")
            .padding()
            .onTapGesture(perform: simpleSuccess)
    }
    
        func simpleSuccess() {
                let generator = UINotificationFeedbackGenerator()
                generator.notificationOccurred(.success)
        }
    }
//
////MARK: the below lets you customize the vibration
//
//        func prepareHaptics() {
//            guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else { return }
//            do {
//                engine = try CHHapticEngine()
//                try engine?.start()
//            } catch {
////                print("There was an error creating the engine: \(error.localizedDescription"))
//            }
//        }
//
//  func complexSuccess() {
//            guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else { return }
//
//var events = [CHHapticEvent]()
//
////      MARK: no done here. See video at 7:25 timeline
//    }

    
//    
//    struct VirtualHug_Previews : PreviewProvider {
//        static var previews: some View {
//            VirtualHug()
//        }
//    }
//
// 
    
    
    
    
    
    
    
    
    
//            VStack {
//                Text("Then, hold phone to your")
//                    .font(.system(size: 35))
//                    .fontWeight(.ultraLight)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(Color.white)
//
//                Text("H E A R T")
//                    .font(.system(size: 80))
//                    .fontWeight(.ultraLight)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(Color.blue)
//
              
               
            
        
        
    












