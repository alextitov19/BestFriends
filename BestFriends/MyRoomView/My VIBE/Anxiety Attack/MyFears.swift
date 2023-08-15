//
//  MyFears.swift
//  BestFriends
//
//  Created by Social Tech on 1/18/23.
//


import Foundation
import SwiftUI
import ConfettiSwiftUI
import AVKit

struct MyFears: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    
    @State private var selectedFriends: [String] = []
    @State private var colors: [Color] = [ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3]
    @State private var shareColor = ColorManager.purple5
    @State private var showingAlert = false
    
    @State private var counter = 0
    
    @State private var mood: Int = -1
    @State private var summary = ""
    @State private var sharedWith: [String] = []
    @State private var colorChangeTap: String = ""
    @State private var shareTapped: Bool = false


    
    var body: some View {
        
        ZStack {
          
//
//            if shareTapped {
//
//                ColorManager.purple2
//                    .ignoresSafeArea()
//                    .onAppear()
//
//
//
//                AdPlayerView(name: "dramaLights")
//                    .ignoresSafeArea()
//                    .blendMode(.screen)
//            } else {
//                AdPlayerView(name: "")
//                    .ignoresSafeArea()
//                    .blendMode(.screen)
//
//                ColorManager.purple1
//                    .ignoresSafeArea()
//            }
//
//
//
            Color.black
                .opacity(0.8)
                .ignoresSafeArea()
         
            AdPlayerView(name: "TreeLake2")
                .ignoresSafeArea()
                .blendMode(.screen)
                .opacity(0.99)
            
            
            
            VStack{
                
                HStack {
                    VStack {
                        
//                        Text("I feel my anxiety level")
//                            .font(.system(size: 30, weight: .ultraLight))
//                            .foregroundColor(ColorManager .grey2)
//
//
//                        Text("welling up inside")
//                            .font(.system(size: 30, weight: .ultraLight))
//                            .foregroundColor(ColorManager .grey1)
                    
                        Text("Some of us here at BF deal with")
                            .font(.system(size: 19, weight: .light))
                            .foregroundColor(ColorManager .grey1)
                            .multilineTextAlignment(.center)
                        
                        Text("anxiety panic attacks.")
                            .font(.system(size: 19, weight: .light))
                            .foregroundColor(ColorManager .grey1)
                            .multilineTextAlignment(.center)
                  
                        
                        Spacer()
                            .frame(height: 10)
                        
                        Text("So fragile - just taking about can")
                            .font(.system(size: 19, weight: .light))
                            .foregroundColor(ColorManager .grey1)
                            .multilineTextAlignment(.center)
                        Text("trigger an episode.")
                            .font(.system(size: 19, weight: .light))
                            .foregroundColor(ColorManager .grey1)
                            .multilineTextAlignment(.center)
                        
                
                        
                 
                        
                    }
                
               
                    
                    
                }
             
                Spacer()
                    .frame(height: 140)
                
                VStack {
                    
                    ZStack {
                        
                        Image(systemName: "heart.fill")
                            .resizable()
                            .foregroundColor(ColorManager .purple3)
                            .frame(width: 150, height: 125)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                            .opacity(0.95)
                        
                        Link(destination: URL(string: "https://cssnv.org/")!) {
                            
                            Text("Let's find you \nsome help")
                                .fontWeight(.light)
                                .frame(width: 150, height: 60)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 17))
//                                .background(ColorManager.pmbc_green)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        }
                        
                        
//                        NavigationLink(
//                            destination: ProfessionalHelp(user: user),
//                            label: {
//                                Text("Let's find you some help?")
//                                    .fontWeight(.light)
//                                    .frame(width: 100, height: 70)
//                                    .foregroundColor(ColorManager .grey4)
//                                    .font(.system(size: 17))
////                                    .background(ColorManager .purple1)
//                                    .cornerRadius(10)
//
//                            })
                    }
                    
                    
                    Text("(800) 273-8255")
                        .font(.system(size: 19, weight: .light))
                        .foregroundColor(ColorManager .grey1)
                        .multilineTextAlignment(.center)
                    
//                    Crisis Support Services (https://cssnv.org/) offers a hotline (1-800-273-8255) 24 hours a day, 7 days a week to aid in the event of a crisis, such as an anxiety attack or panic attack.
//
                    Spacer()
                        .frame(height: 230)
                    
             
                    
                    VStack {

                    
                        
//
//                        HStack {
//
////                            Text("select >")
////                                .fontWeight(.thin)
////                                .frame(width: 100, height: 30)
////                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
////                                .font(.system(size: 20))
////                                .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
////                                .cornerRadius(25)
////                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                            //                                })
//
//                            if friends.count > 0 {
//                                RectView(user: user, friend: friends[0], color: colors[0])
//                                    .onTapGesture(perform: {
//                                        if selectedFriends.contains(friends[0].id) {
//                                            selectedFriends = selectedFriends.filter { $0 != friends[0].id }
//                                            colors[0] = ColorManager.purple3
//                                        } else {
//                                            selectedFriends.append(friends[0].id)
//                                            colors[0] = ColorManager.purple5
//                                        }
//                                        print(selectedFriends)
//                                    })
//
//                            }
//
//                            if friends.count > 1 {
//                                RectView(user: user, friend: friends[1], color: colors[1])
//                                    .onTapGesture(perform: {
//                                        if selectedFriends.contains(friends[1].id) {
//                                            selectedFriends = selectedFriends.filter { $0 != friends[1].id }
//                                            colors[1] = ColorManager.purple3
//                                        } else {
//                                            selectedFriends.append(friends[1].id)
//                                            colors[1] = ColorManager.purple5
//                                        }
//                                        print(selectedFriends)
//                                    })
//
//                            }
//                        }
//
//                        Spacer()
//                            .frame(height: 15)
//                        HStack {
//                            if friends.count > 2 {
//                                RectView(user: user, friend: friends[2], color: colors[2])
//                                    .onTapGesture(perform: {
//                                        if selectedFriends.contains(friends[2].id) {
//                                            selectedFriends = selectedFriends.filter { $0 != friends[2].id }
//                                            colors[2] = ColorManager.purple3
//                                        } else {
//                                            selectedFriends.append(friends[2].id)
//                                            colors[2] = ColorManager.purple5
//                                        }
//                                        print(selectedFriends)
//                                    })
//                            }
//
//                            if friends.count > 3 {
//                                RectView(user: user, friend: friends[3], color: colors[3])
//                                    .onTapGesture(perform: {
//                                        if selectedFriends.contains(friends[3].id) {
//                                            selectedFriends = selectedFriends.filter { $0 != friends[3].id }
//                                            colors[3] = ColorManager.purple3
//                                        } else {
//                                            selectedFriends.append(friends[3].id)
//                                            colors[3] = ColorManager.purple5
//                                        }
//                                        print(selectedFriends)
//                                    })
//
//                            }
//
//                            if friends.count > 4 {
//                                RectView(user: user, friend: friends[4], color: colors[4])
//                                    .onTapGesture(perform: {
//                                        if selectedFriends.contains(friends[4].id) {
//                                            selectedFriends = selectedFriends.filter { $0 != friends[4].id }
//                                            colors[4] = ColorManager.purple3
//                                        } else {
//                                            selectedFriends.append(friends[4].id)
//                                            colors[4] = ColorManager.purple5
//                                        }
//                                        print(selectedFriends)
//                                    })
//
//                            }
//                        }
//
//
//
//                        Spacer()
//                            .frame(height: 20)
//
//
//                        Button(action: {
//                            counter += 1
//                            shareTapped = true
//                            shareButtonTapped()
//                        },
//                               label: {
//                            Text("SHARE")
//
//                                .fontWeight(.thin)
//                                .frame(width: 100, height: 30)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .font(.system(size: 25))
//                                .background(shareColor)
//                                .cornerRadius(25)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                                .alert("we love you guys \n\nwe're all here in thought and heart for you.", isPresented: $showingAlert) {
//                                    Button("OK", role: .cancel) { }
//                                }
//                        })
////                        .confettiCannon(counter: $counter)
//
//
//
                        }
//
//
                    Spacer()
                        .frame(height: 90)
                    
                }
                
            }
            
        }
        
    }
    
    
    func shareButtonTapped() {
        if selectedFriends.count == 0 { return }
        for id in selectedFriends {
            for f in friends {
                if f.id == id {
                    RestApi.instance.sendPushNotification(title: "BestFriends", body: "\(user.firstName) I feel an axniety attack coming. I'm scared, can you please help calm me down", APNToken: f.APNToken)
                }
            }
        }
        shareColor = ColorManager.darkGrey
        showingAlert = true
    }
    
    struct RectView: View {
        let user: User
        let friend: User
        let color: Color
        
        var body: some View {
            Text(friend.firstName + " " + String(friend.lastName.first!))
                .fontWeight(.bold)
                .frame(width: 90, height: 90)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .font(.system(size: 8))
                .background(color)
                .cornerRadius(75)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
        }
    }
    
    
    
}


//                Image("purpleBackground")
//                    .resizable()
//                    .ignoresSafeArea()
//                    .scaledToFill()
//                    .ignoresSafeArea()
