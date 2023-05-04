//
//  VirtualHug.swift
//  BestFriends
//
//  Created by Social Tech on 6/4/22.
//


//import CoreHaptics
import SwiftUI
//import CoreHaptics
import AudioToolbox

struct VirtualHug: View {
//    @State private var engine: CHHapticEngine?

    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        
        
        ZStack {
            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                .ignoresSafeArea()
//                .onAppear(perform: prepareHaptics)
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            AdPlayerView(name: "HugVideo")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            VStack {
                Text("tap heart,")
                    .font(.system(size: 30))
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
                
                Text("for a love tap")
                    .font(.system(size: 30))
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
                
                
                Text("*coming soon: hold phone to heart,")
                    .font(.system(size: 19))
                    .italic()
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager .grey4)
                
                
                Text("it will vibrate for 3 seconds")
                    .font(.system(size: 19))
                    .italic()
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager .grey4)
                
                
                Spacer()
                    .frame(height: 170)
                
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
                        .onTapGesture {
                            AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {   }
//                            complexSuccess()

                        }
                }
                
//                Button(action: {
//                    sessionManager.showLogin()
//                },
//                       label: {
//                    Text("Send a Hug back")
//                        .fontWeight(.thin)
//                        .frame(width: 250, height: 30)
//                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                        .font(.system(size: 30))
//                        .background(ColorManager.purple1)
//                        .cornerRadius(15)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                        .opacity(0.7)
//                })
                
                Spacer()
                    .frame(height: 300)
            }
        }
    }
    
//    func prepareHaptics() {
//        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else { return }
//
//        do {
//            engine = try CHHapticEngine()
//            try engine?.start()
//        } catch {
//            print("There was an error creating the engine: \(error.localizedDescription)")
//        }
//    }
//
//    func complexSuccess() {
//        // make sure that the device supports haptics
//        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else { return }
//        var events = [CHHapticEvent]()
//
//        // create one intense, sharp tap
//        let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: 1)
//        let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 1)
//        let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: 0)
//        events.append(event)
//
//        // convert those events into a pattern and play it immediately
//        do {
//            let pattern = try CHHapticPattern(events: events, parameters: [])
//            let player = try engine?.makePlayer(with: pattern)
//            try player?.start(atTime: 0)
//            print("Vibration done")
//        } catch {
//            print("Failed to play pattern: \(error.localizedDescription).")
//        }
//    }
}



