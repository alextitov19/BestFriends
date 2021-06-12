//
//  StaticBackground.swift
//  BestFriends
//
//  Created by Social Tech on 5/30/21.
//

import Amplify
import SwiftUI
import AVKit

struct StaticBackground: View {
    
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
                        
                        Image("purpleBackground")
                            .resizable()
                            .frame(width: 100, height: 200)
                            .scaledToFill()
                            .frame(width: 100, height: 200)
                            .gesture(LongPressGesture(minimumDuration: 1)
                            .onEnded { _ in
                                selectedBackground = 101
                                saveData()
                            })
                           
                       
                        
                        Spacer()
                            .frame(width: 50)
                        

                        Image("blueBackground")
                            .resizable()
                            .frame(width: 100, height: 200)
                            .scaledToFill()
                            .frame(width: 100, height: 200)
                            .gesture(LongPressGesture(minimumDuration: 1)
                            .onEnded { _ in
                                selectedBackground = 102
                                saveData()
                            })
                           
                            
                    }
                  
                    Spacer()
                        .frame(height: 100)
                    
                    
                    HStack {
                        

                        Image("redBackground")
                            .resizable()
                            .frame(width: 100, height: 200)
                            .scaledToFill()
                        .frame(width: 100, height: 200)
                            .gesture(LongPressGesture(minimumDuration: 1)
                            .onEnded { _ in
                                selectedBackground = 103
                                saveData()
                            })
                           
                        Spacer()
                            .frame(width: 50)
                        

                        Image("Transition")
                            .resizable()
                            .frame(width: 100, height: 200)
                            .scaledToFill()
                            .frame(width: 100, height: 200)
                            .gesture(LongPressGesture(minimumDuration: 1)
                            .onEnded { _ in
                                selectedBackground = 104
                                saveData()
                            })
                           
                        
                   
                    }
               
                    
                    
                    Text("Long-tap image to save your choice")
                       
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
        print("Saving new static background as option #\(selectedBackground)")
        var user = UserDataSource().getCurrentUser()
        user.background = selectedBackground
        UserDataSource().updateUser(user: user)
    }
}

struct StaticBackground_Previews : PreviewProvider {
    static var previews: some View {
        StaticBackground()
    }
}


