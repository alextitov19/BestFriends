//
//  AdViewFullScreen.swift
//  BestFriends
//
//  Created by Alex Titov on 5/26/21.
//

import SwiftUI
import Amplify
import AVKit

struct AdViewFullScreen: View {
    @Environment(\.presentationMode) var presentationMode
    
    var names: [String] = ["first"]
    
//    var timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {            
            AdPlayerView()
                .ignoresSafeArea()
            
            Text("Like button")
                .foregroundColor(.white)
        }
    }
    
    
    
//    Bundle.main.url(forResource: names[0], withExtension: "mp4")
    
//    private func cycleImages() {
//        if index == links.count {
//            presentationMode.wrappedValue.dismiss()
//        } else if index < links.count {
//            if !isPaused {
//                image = images[index]
//                index += 1
//            }
//        }
//    }
}
