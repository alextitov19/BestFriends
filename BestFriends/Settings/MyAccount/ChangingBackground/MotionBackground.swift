//
//  MotionBackground.swift
//  BestFriends
//
//  Created by Social Tech on 5/30/21.
//

import Amplify
import SwiftUI
import AVKit

struct MotionBackground: View {

    var body: some View {
        
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                
                Spacer().frame(height: 50)
                
                Text("Select Motion Background")
                    .foregroundColor(.white)
                    .font(.title)
            
                Spacer().frame(height: 50)
                
                
                VStack {
                
                    HStack {
                        
                       
                        VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "CityMopeds", withExtension: "mp4")!))
                            .frame(width: 100, height: 200)
                            .onTapGesture {
                                
                            }
                        Spacer()
                            .frame(width: 50)
                        
                        VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "FieldFlowers", withExtension: "mp4")!))
                            .frame(width: 100, height: 200)
                            .onTapGesture { }
                            
                    }
                  
                    Spacer()
                        .frame(height: 50)
                    
                    
                    HStack {
                        
                       
                        VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "citycars", withExtension: "mp4")!))
                            .frame(width: 100, height: 200)
                            .onTapGesture {
                                
                            }
                        Spacer()
                            .frame(width: 50)
                        
                        VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "Skateboard", withExtension: "mp4")!))
                            .frame(width: 100, height: 200)
                            .onTapGesture { }
                        
                        
                        
                        
                    }
                    
            
                    
                    Spacer()
                        .frame(height: 100)
                
                    }
                }
            }
        }
    }

struct MotionBackground_Previews : PreviewProvider {
    static var previews: some View {
        MotionBackground()
    }
}


