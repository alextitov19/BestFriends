//
//  DreamsWeDare.swift
//  BestFriends
//
//  Created by Social Tech on 9/18/22.
//

import Foundation

import Foundation
import SwiftUI
import AVKit


struct DreamsWeDare: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View {
        
        ZStack {
           
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
          
            AdPlayerView(name: "Dreams1")
                .ignoresSafeArea()
            //                    .scaledToFill()
                .blendMode(.screen)

            VStack {
                
                Text("chasing down")
                    .font(.system(size: 30))
                    .italic()
                    .foregroundColor(ColorManager.purple5)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    
                    Text("Our Dreams")
                        .font(.system(size: 50))
                        .foregroundColor(ColorManager.purple5)
                        .fontWeight(.thin)
                       .multilineTextAlignment(.center)
                    
                   
                    VStack {
                        Link(destination: URL(string: "https://socialtechlabs.com/dreams-we-dare-but-whisper/")!) {
                            
                            Text("Dreams we Dare but Whisper")
                                .fontWeight(.thin)
                                .frame(width: 310, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 25))
                                .background(ColorManager.pmbc_green)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        }
                        

                    Spacer()
                    .frame(height: 200)
              }
                
            VStack {
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
//            let sound = Bundle.main.path(forResource: "Meena1", ofType: "m4a")
//            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
      
            }

                        Spacer()
                        .frame(height: 105)
                        
                        
    }
}
    
}
    }


