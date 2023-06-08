//
//  DreamMap.swift
//  BestFriends
//
//  Created by Social Tech on 9/15/22.
//
//


import Foundation
import SwiftUI
import AVKit


struct DreamMap: View {
    
    @State var audioPlayer: AVAudioPlayer!
   
    var body: some View {
        
        ZStack {
           
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
          
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
            //                    .scaledToFill()
                .blendMode(.screen)

            VStack {
        
                
               
                VStack {
                
                
                        Text("Mostly blind, but with ears up, wandering.")
                            .font(.system(size: 20))
                            .italic()
                            .foregroundColor(ColorManager.purple2)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                
                        Text("Floating here in the deep dark \naway from the Sun - \nyet unknowingly so close to our greatness.")
                            .font(.system(size: 20))
                            .italic()
                            .foregroundColor(ColorManager.purple2)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                
                        Spacer()
                            .frame(height: 15)
                
                        Text("Listening loudly to it all now.  \nThey're now convinced we're crazy, \nwondering how much longer we'll \nventure out here \nwasting their patience.")
                            .font(.system(size: 20))
                            .italic()
                            .foregroundColor(ColorManager.purple2)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                
                        Spacer()
                            .frame(height: 15)
                
                        Text("Damn, we're thinking of turning \nheading home, \nbut still not wanting to return \ngiving up on our journey.")
                            .font(.system(size: 20))
                            .italic()
                            .foregroundColor(ColorManager.purple2)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                
                        Spacer()
                            .frame(height: 15)
                
                        Text("Here and now is where losers are marked, \nand the winners are born.")
                            .font(.system(size: 20))
                            .italic()
                            .foregroundColor(ColorManager.purple2)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                


  
                    VStack {
                     
        
            
            VStack {
                    
           
                    Spacer()
                    .frame(height: 15)
              }
                
//            VStack {
//            
//                    Text("Listen").font(.system(size: 20))
//                    .foregroundColor(Color.blue)
//                    .fontWeight(.light)
////                    .font(.largeTitle)
//                
//                HStack {
//                    Spacer()
//                    Button(action: {
//                        self.audioPlayer.play()
//                    }) {
//                        Image(systemName: "play.circle.fill").resizable()
//                            .frame(width: 40, height: 40)
//                            .aspectRatio(contentMode: .fit)
//                    }
//                    Spacer()
//                    Button(action: {
//                        self.audioPlayer.pause()
//                    }) {
//                        Image(systemName: "pause.circle.fill").resizable()
//                            .frame(width: 40, height: 40)
//                            .aspectRatio(contentMode: .fit)
//                    }
//                    Spacer()
//                    
//                }
//            }
//        .onAppear {
//            let sound = Bundle.main.path(forResource: "Emilia2", ofType: "m4a")
//            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
//        }
                        
                        Spacer()
                        .frame(height: 105)
                        
                        
    }
}
    
}
    }
}
}
