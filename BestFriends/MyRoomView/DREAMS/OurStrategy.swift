//
//  OurStrategy.swift
//  BestFriends
//
//  Created by Social Tech on 9/19/22.
//



import Foundation
import SwiftUI
import AVKit


struct OurStrategy: View {
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
                      
                
//
                   
            
            VStack {
                    
                Spacer()
                    .frame(height:50)
                
                
                
                Text("As the voice inside you becomes louders and ours softer, in realizing your dream you will become unstoppable, yet before its over, humbled.")
                    .font(.system(size: 17))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(.white)
                   .foregroundColor(ColorManager.grey2)
                   .padding()
              
              }
                
//            VStack {
//
//                    Text("Listen").font(.system(size: 20)).font(.largeTitle)
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
//            let sound = Bundle.main.path(forResource: "Meena", ofType: "m4a")
//            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
//        }
//
                 
                        
                        
    }
}
    
}
    }
}

