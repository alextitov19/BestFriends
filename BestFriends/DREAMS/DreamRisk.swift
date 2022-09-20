//
//  DreamRisk.swift
//  BestFriends
//
//  Created by Social Tech on 9/18/22.
//


import Foundation
import SwiftUI
import AVKit


struct DreamRisk: View {
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
                
                

  
                    VStack {
                     
                        Text("If you want something")
                            .font(.system(size: 20))
                            .italic()
                            .foregroundColor(ColorManager.purple3)
                            .fontWeight(.ultraLight)
                            .multilineTextAlignment(.center)
                        Text("you have to take a risk")
                            .font(.system(size: 20))
                            .italic()
                            .foregroundColor(ColorManager.purple3)
                            .fontWeight(.ultraLight)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                            .frame(height:20)
                        
                        Text("If you 'Really' want something")
                            .font(.system(size: 25))
                            .italic()
                            .foregroundColor(ColorManager.purple3)
                            .fontWeight(.ultraLight)
                            .multilineTextAlignment(.center)
                           
                        Text("you have to be willing to")
                            .font(.system(size: 25))
                            .italic()
                            .foregroundColor(ColorManager.purple3)
                            .fontWeight(.ultraLight)
                            .multilineTextAlignment(.center)
                      
                        Text("risk everything")
                            .font(.system(size: 35))
                            .italic()
                            .foregroundColor(ColorManager.pmbc_pink)
//                            .foregroundColor(.red)
                            .fontWeight(.ultraLight)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                            .frame(height:50)
            
            VStack {
                    
           
                    Spacer()
                    .frame(height: 15)
              }
                
                        
                VStack {
                            Link(destination: URL(string: "https://socialtechlabs.com/fear-of-falling/")!) {
                                
                                Text("Little Yellow Bulldozer")
                                    .fontWeight(.thin)
                                    .frame(width: 310, height: 40)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 25))
                                    .background(ColorManager.pmbc_green)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            }
    //
                        
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
                        Spacer()
                        .frame(height: 105)
                        
                        
    }
}
    
}
    }
}
}
}
