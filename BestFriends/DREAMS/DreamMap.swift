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
        
                
                Text("Living your Dream")
                        .font(.system(size: 30))
                        .italic()
                        .foregroundColor(ColorManager.purple2)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                
                    Text("isn't a goal")
                        .font(.system(size: 30))
                        .italic()
                        .foregroundColor(ColorManager.purple2)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                
                    Text("it's a by-product!")
                        .font(.system(size: 45))
                        .italic()
                        .foregroundColor(ColorManager.purple2)
                        .fontWeight(.thin)
                        .multilineTextAlignment(.center)
                
                    Spacer()
                        .frame(height:30)
                VStack {
                
                
                        Text("Mostly blind, but with ears up, wandering.")
                            .font(.system(size: 20))
                            .italic()
                            .foregroundColor(ColorManager.purple2)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                
                        Text("Sitting here in the deep dark and tired - \nyet unknowingly so close to greatness.")
                            .font(.system(size: 20))
                            .italic()
                            .foregroundColor(ColorManager.purple2)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                
                        Spacer()
                            .frame(height: 15)
                
                        Text("Listening loudly to it all now.  \nThey're now convinced you're crazy, \nwondering how much longer you will \nwaste everyones time and patience.")
                            .font(.system(size: 20))
                            .italic()
                            .foregroundColor(ColorManager.purple2)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                
                        Spacer()
                            .frame(height: 15)
                
                        Text("Thinking of just going home, \nbut still not wanting to lose.")
                            .font(.system(size: 20))
                            .italic()
                            .foregroundColor(ColorManager.purple2)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                
                        Spacer()
                            .frame(height: 15)
                
                        Text("This then is where the losers are marked, \nand the winners are borne.")
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
                
            VStack {
            
                    Text("Listen").font(.system(size: 20)).font(.largeTitle)
                HStack {
                    Spacer()
                    Button(action: {
                        self.audioPlayer.play()
                    }) {
                        Image(systemName: "play.circle.fill").resizable()
                            .frame(width: 40, height: 40)
                            .aspectRatio(contentMode: .fit)
                    }
                    Spacer()
                    Button(action: {
                        self.audioPlayer.pause()
                    }) {
                        Image(systemName: "pause.circle.fill").resizable()
                            .frame(width: 40, height: 40)
                            .aspectRatio(contentMode: .fit)
                    }
                    Spacer()
                    
                }
            }
        .onAppear {
            let sound = Bundle.main.path(forResource: "Meena", ofType: "m4a")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
                        
                        Spacer()
                        .frame(height: 105)
                        
                        
    }
}
    
}
    }
}
}
