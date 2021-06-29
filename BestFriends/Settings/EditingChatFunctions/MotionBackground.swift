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
    
    @State var selectedBackground: Int = 0
    
    var body: some View {
        
        ZStack {
            
            Image("")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                
                
                
                
                VStack {
                    
                    HStack {
                        
                        
                        VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "CityMopeds", withExtension: "mp4")!))
                            .frame(width: 100, height: 200)
                            .gesture(LongPressGesture(minimumDuration: 1)
                                        .onEnded { _ in
                                            selectedBackground = 101
                                            saveData()
                                        })
                        
                        
                        
                        Spacer()
                            .frame(width: 50)
                        
                        VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "FieldFlowers", withExtension: "mp4")!))
                            .frame(width: 100, height: 200)
                            .gesture(LongPressGesture(minimumDuration: 1)
                                        .onEnded { _ in
                                            selectedBackground = 102
                                            saveData()
                                        })
                        
                        
                    }
                    
                    Spacer()
                        .frame(height: 50)
                    
                    
                    HStack {
                        
                        
                        VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "first", withExtension: "mp4")!))
                            .frame(width: 100, height: 200)
                            .gesture(LongPressGesture(minimumDuration: 1)
                                        .onEnded { _ in
                                            selectedBackground = 103
                                            saveData()
                                        })
                        
                        Spacer()
                            .frame(width: 50)
                        
                        VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "Skateboard", withExtension: "mp4")!))
                            .frame(width: 100, height: 200)
                            .gesture(LongPressGesture(minimumDuration: 1)
                                        .onEnded { _ in
                                            selectedBackground = 104
                                            saveData()
                                        })
                        
                    }
                    Text("Longtap video to save your choice")
                        
                        .font(.system(size: 32))
                        .fontWeight(.regular)
                        .italic()
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 100, alignment: .center
                               
                        )
                    
                    
                }
            }
        }
    }
    
    private func saveData() {
        print("Saving new background as option #\(selectedBackground)")
        var user = UserDataSource().getCurrentUser()
        user.background = selectedBackground
        UserDataSource().updateUser(user: user)
    }
}

struct MotionBackground_Previews : PreviewProvider {
    static var previews: some View {
        MotionBackground()
    }
}


