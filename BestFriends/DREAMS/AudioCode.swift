//
//  AudioCode.swift
//  BestFriends
//
//  Created by Social Tech on 9/17/22.
//

import Foundation
import SwiftUI
import AVKit


struct AudioCode: View {
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
        
//                Text("Scared Stiff!")
//                    .font(.system(size: 22))
//                    .fontWeight(.thin)
//                    .multilineTextAlignment(.center)
////                    .foregroundColor(.white)
//                   .foregroundColor(ColorManager.grey2)
//           
//                Spacer()
//                .frame(height: 33)
                
                Text("As if undamaged in the struggle")
                    .font(.system(size: 17))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                   .foregroundColor(ColorManager.grey2)
                   
                     
                Text("for a dream somewhere out there we venture")
                    .font(.system(size: 17))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(.white)
                   .foregroundColor(ColorManager.grey2)
                
                Spacer()
                .frame(height: 33)
                     
                Text("Without a safety net")
                    .font(.system(size: 22))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(.white)
                   .foregroundColor(ColorManager.grey2)
           
        VStack {
                     
                Text("we unwrap our dreams after the moon-dives")
                    .font(.system(size: 17))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(.white)
                   .foregroundColor(ColorManager.grey2)
          
      
                Spacer()
                .frame(height: 33)
                
                Text("Yet standing here")
                    .font(.system(size: 22))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(.white)
                   .foregroundColor(ColorManager.grey2)
                   
                     
                Text("the next step looking like off the narrow edge")
                    .font(.system(size: 17))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(.white)
                   .foregroundColor(ColorManager.grey2)
                   
              

                
                Text("then letting go of the madness of making it all fit")
                    .font(.system(size: 17))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(.white)
                   .foregroundColor(ColorManager.grey2)
                   
                    
                    Spacer()
                    .frame(height: 33)
            
            VStack {
                    
                Text("We dare step into our forever")
                    .font(.system(size: 22))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(.white)
                   .foregroundColor(ColorManager.grey2)
                   
                Text("as they turn whispering underneath")
                    .font(.system(size: 17))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(.white)
                   .foregroundColor(ColorManager.grey2)
                   
               
                    Spacer()
                    .frame(height: 25)
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
//            let sound = Bundle.main.path(forResource: "Nadiah2", ofType: "m4a")
//            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
    }
}
    
}
    }
}


//struct AudioCode_Previews: PreviewProvider {
//    static var previews: some View {
//        AudioCode()
//    }
//}
