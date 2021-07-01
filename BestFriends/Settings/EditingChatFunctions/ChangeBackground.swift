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
            
            ScrollView {
                
                //Start of IMAGE BACKGROUNDS
                VStack {
                    Text("Static images")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .ultraLight))
                    
                    HStack {
                        VStack {
                            Image("purpleBackground")
                                .resizable()
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
                        
                        VStack {
                            Image("blueBackground")
                                .resizable()
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
                    }
                    
                    HStack {
                        VStack {
                            Image("blueGradient1")
                                .resizable()
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
                        
                        VStack {
                            Image("blueGradient2")
                                .resizable()
                                .frame(width: 150, height: 250)
                                //                                .cornerRadius(25)
                                .border(Color.white, width: 2)
                            
                            Button("Select", action: { saveData(index: 4) })
                                .frame(width: 110, height: 40)
                                .background(Color(#colorLiteral(red: 0.5280093551, green: 0.4946141839, blue: 1, alpha: 1)))
                                .foregroundColor(.white)
                                .cornerRadius(25)
                        }
                        .padding()
                    }
                    
                    //Start of VIDEO BACKGROUNDS
                    Text("Looping videos")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .ultraLight))
                    
                    HStack {
                        VStack {
                            VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "CityMopeds", withExtension: "mp4")!))
                                .frame(width: 150, height: 250)
                                //                                .cornerRadius(25)
                                .border(Color.white, width: 2)
                            
                            Button("Select", action: { saveData(index: 101) })
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
                            
                            Button("Select", action: { saveData(index: 102) })
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
                            
                            Button("Select", action: { saveData(index: 103) })
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
                            
                            Button("Select", action: { saveData(index: 104) })
                                .frame(width: 110, height: 40)
                                .background(Color(#colorLiteral(red: 0.5280093551, green: 0.4946141839, blue: 1, alpha: 1)))
                                .foregroundColor(.white)
                                .cornerRadius(25)
                        }
                        .padding()
                    }
                }
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
    
    private func saveData(index: Int) {
        print("Saving new static background as option #\(index)")
        var user = UserDataSource().getCurrentUser()
        user.background = index
        UserDataSource().updateUser(user: user)
    }
}

struct ChangeBackground_Previews : PreviewProvider {
    static var previews: some View {
        ChangeBackground()
    }
}

