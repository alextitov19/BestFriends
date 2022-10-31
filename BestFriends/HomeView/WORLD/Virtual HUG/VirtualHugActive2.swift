//
//  VirtualHugActive2.swift
//  BestFriends
//
//  Created by Social Tech on 9/29/22.
//
//
//import Foundation
//import CoreHaptics
//import SwiftUI
//
//struct VirtualHugActive2: View {
//    
//    @State private var engine: CHHapticEngine?
//   
//    var body: some View {
//        
////        ZStack {
////
////
////            Image("purpleBackground")
////                .resizable()
////                .ignoresSafeArea()
////                .scaledToFill()
////
////            AdPlayerView(name: "HugVideo")
////                .ignoresSafeArea()
////                .blendMode(.screen)
//    
//    VStack {
//        Text("Your friend sent you a HUG")
//            .font(.system(size: 30))
//            .fontWeight(.ultraLight)
//            .multilineTextAlignment(.center)
//            .foregroundColor(Color.black)
//        
//        Text("Tap Heart and hold phone")
//            .font(.system(size: 30))
//            .fontWeight(.ultraLight)
//            .multilineTextAlignment(.center)
//            .foregroundColor(Color.black)
//        
//        Text("to your HEART")
//            .font(.system(size: 30))
//            .fontWeight(.ultraLight)
//            .multilineTextAlignment(.center)
//            .foregroundColor(Color.black)
//        
//        
//     
//        ZStack {
//        Image(systemName: "heart.fill")
//            .resizable()
//            .foregroundColor(.purple)
//            .frame(width: 150, height: 150)
//            .shadow(color: .blue, radius: 65, x: 30, y: 50)
//            .opacity(0.7)
//        
//        
//        Text("HUG")
//            .font(.system(size: 35))
//            .fontWeight(.light)
//            .multilineTextAlignment(.center)
//            .foregroundColor(Color.white)
//            .padding()
////          .onAppear(perform: prepareHaptics)
////             .onTapGesture(perform: complexSuccess)
//
//        }
//        
//        
//        
//        Button(
//            "Play haptic",
//            action: playHaptic
//        )
//        .onAppear(perform: prepareHaptics)
//    }
//    func prepareHaptics() {
//        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else {
//            return
//        }
//        do {
//            engine = try CHHapticEngine()
//            try engine?.start()
//        } catch {
//            print("There was an error creating the engine: \(error.localizedDescription)")
//        }
//    }
//    func playHaptic() {
//        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics,
//        let path = Bundle.main.path(forResource: "haptic", ofType: "ahap") else {
//            return
//        }
//        do {
//            // Start the engine in case it's idle.
//            try engine?.start()
//            // Tell the engine to play a pattern.
//            try engine?.playPattern(from: URL(fileURLWithPath: path))
//        } catch {
//            print("Failed to play pattern: \(error.localizedDescription).")
//        }
//    }
//}
//    }
//
