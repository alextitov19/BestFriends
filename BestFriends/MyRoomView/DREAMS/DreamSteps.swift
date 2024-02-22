//
//  DreamSteps.swift
//  BestFriends
//
//  Created by Social Tech on 9/19/22.
//



import Foundation
import SwiftUI
import AVKit


struct DreamSteps: View {
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
                     
                        Text("The 'TWO' most important STEPS")
                            .font(.system(size: 25))
                            .italic()
                            .foregroundColor(ColorManager.purple1)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                      
                        Text("in realizing your Dreams")
                            .font(.system(size: 25))
                            .italic()
                            .foregroundColor(ColorManager.purple1)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                            .frame(height:20)
                        
                        Text("#1 ... START")
                            .font(.system(size: 40))
//                            .italic()
                            .foregroundColor(.green)
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                        
                        Text("Don't wait until life")
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.purple3)
                        
                        Text("isn't hard to begin living")
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.purple3)
                        
//                        Spacer()
//                        .frame(height: 5)
//
                        Text("Your Dream")
                            .font(.system(size: 30))
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
        //                    .foregroundColor(.white)
                            .foregroundColor(.green)
            
                        
                        
                VStack {
                    
                    Spacer()
                    .frame(height: 35)
                    
                        Text("#2 ... DON'T QUIT")
                            .font(.system(size: 40))
                            .foregroundColor(.green)
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                     
                        
              
                    Text("The poems and stories here")
                        .font(.system(size: 20))
                       
                        .foregroundColor(ColorManager.purple2)

                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                    
                    
                    Text("will help you with both")
                        .font(.system(size: 20))
                  
                        .foregroundColor(ColorManager.purple2)
//                            .foregroundColor(.red)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                    Spacer()
                        .frame(height:50)

                    Text("(new stories added \nevery couple weeks)")
                        .font(.system(size: 25))
                        
                        .foregroundColor(.green)
//                            .foregroundColor(.red)
                        .fontWeight(.thin)
                        .multilineTextAlignment(.center)
                 
              
                    
                  
              }
              
                        
                        Spacer()
                            .frame(height:50)
                        
                        
                        
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


