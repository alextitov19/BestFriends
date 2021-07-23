//
//  ChangeBackground.swift
//  BestFriends
//
//  Created by Social Tech on 5/28/21.
//


import Amplify
import SwiftUI
import AVKit

struct ChangeBackground: View {
    
    var body: some View {
        ZStack {
            Image("changeBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                Text("Looping videos")
                    .foregroundColor(.white)
                    .font(.system(size: 25, weight: .regular))
                
                Spacer()
            }
            .offset(y: -75)
            //Start of IMAGE BACKGROUNDS
            VStack {
                //Start of VIDEO BACKGROUNDS
                HStack {
                    VStack {
                        VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "CityMopeds", withExtension: "mp4")!))
                            .frame(width: 150, height: 250)
                            //                                .cornerRadius(25)
                            .border(Color.white, width: 2)
                        
                        Button("Select", action: { saveData(index: 0) })
                            .frame(width: 110, height: 40)
                            .background(Color(#colorLiteral(red: 0.5280093551, green: 0.4946141839, blue: 1, alpha: 1)))
                            .foregroundColor(.white)
                            .cornerRadius(25)
                    }
                    .padding()
                    
                    VStack {
                        VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "CityMopeds", withExtension: "mp4")!))
                            .frame(width: 150, height: 250)
                            //                                .cornerRadius(25)
                            .border(Color.white, width: 2)
                        
                        Button("Select", action: { saveData(index: 1) })
                            .frame(width: 110, height: 40)
                            .background(Color(#colorLiteral(red: 0.5280093551, green: 0.4946141839, blue: 1, alpha: 1)))
                            .foregroundColor(.white)
                            .cornerRadius(25)
                    }
                    .padding()
                }
                
                HStack {
                    VStack {
                        VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "CityMopeds", withExtension: "mp4")!))
                            .frame(width: 150, height: 250)
                            //                                .cornerRadius(25)
                            .border(Color.white, width: 2)
                        
                        Button("Select", action: { saveData(index: 2) })
                            .frame(width: 110, height: 40)
                            .background(Color(#colorLiteral(red: 0.5280093551, green: 0.4946141839, blue: 1, alpha: 1)))
                            .foregroundColor(.white)
                            .cornerRadius(25)
                    }
                    .padding()
                    
                    VStack {
                        VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "CityMopeds", withExtension: "mp4")!))
                            .frame(width: 150, height: 250)
                            //                                .cornerRadius(25)
                            .border(Color.white, width: 2)
                        
                        Button("Select", action: { saveData(index: 3) })
                            .frame(width: 110, height: 40)
                            .background(Color(#colorLiteral(red: 0.5280093551, green: 0.4946141839, blue: 1, alpha: 1)))
                            .foregroundColor(.white)
                            .cornerRadius(25)
                    }
                    .padding()
                }
                
                Button("Upload Gallery Image", action: { uploadCustom() })
                    .frame(width: 200, height: 40)
                    .background(Color(#colorLiteral(red: 0.5280093551, green: 0.4946141839, blue: 1, alpha: 1)))
                    .foregroundColor(.white)
                    .cornerRadius(25)
            }
            .offset(y: -40)
        }
    }
    
    private func saveData(index: Int) {
        print("Saving new static background as option #\(index)")
        var user = UserDataSource().getCurrentUser()
        user.background = index
        UserDataSource().updateUser(user: user)
    }
    
    private func uploadCustom() {
        
    }
}

struct ChangeBackground_Previews : PreviewProvider {
    static var previews: some View {
        ChangeBackground()
    }
}

