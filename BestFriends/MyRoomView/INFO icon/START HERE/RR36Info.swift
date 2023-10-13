//
//  RR36Info.swift
//  BestFriends
//
//  Created by Robert Roe on 10/9/23.
//

import Foundation

import Combine
import SwiftUI
import ConfettiSwiftUI
import AVKit


struct RR36Info: View {
    
    @EnvironmentObject var sessionManager: SessionManager
 
    let user: User
   let atmosphere: Atmosphere
    let friends: [User]
   let friendAtmospheres: [Atmosphere]
    let groups: [Group]
    
    @State private var mood: Int = -1
    @State private var summary = ""
    @State private var sharedWith: [String] = []
    @State private var colorChangeTap: String = ""
    @State private var shareTapped: Bool = false
    @State private var selectedFriends: [String] = []
    @State private var shareColor = ColorManager.purple5
    @State private var showingAlert = false
    @State private var colors: [Color] = [ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3]
    
    @State private var counter = 0
    
    var body: some View {
        ZStack {
            
            
            if shareTapped {
                
                
                
                Color.black
                    .ignoresSafeArea()
                    .onAppear()
                
                
                AdPlayerView(name: "dramaLights")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                
            } else {
                
                Color.black
                    .opacity(0.9)
                    .ignoresSafeArea()
                
                
                AdPlayerView(name: "Planet4")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                
                
            }
            
      
 
VStack {
    
    
    HStack {
        ZStack {
            
            Image(systemName: "circle")
                .resizable()
                .scaledToFit()
                .frame(width: 75, height: 75)
                .foregroundColor(Color .purple)
                .glow(color: ColorManager.purple4, radius: 3)
            //                    .blinking(duration: 2.0)
            
            NavigationLink( destination: RRdemoVideo(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                            label: {
                Text("tap")
                    .foregroundColor(Color.white)
                    .frame(width: 60, height: 60)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 16))
                //                                   .padding(10)
                    .background(Color.gray)
                    .cornerRadius(50)
                    .glow(color: Color.white, radius: 20)
                    .shadow(color: Color.white, radius: 2, x: 2, y: 2)
                //                        .blinking(duration: 2.0)
                //                                   .blinking(duration: 4.0)
                
            })
        }
        
        ZStack {
            
            
            Image("comicBubble")
                .resizable()
                .foregroundColor(Color.purple)
                .frame(width: 300, height: 200)
                .shadow(color: ColorManager .purple2, radius: 3, x: 3, y: 3)
                .rotationEffect(.degrees(-10))
                .opacity(0.95)
            
                VStack {
                    
                    Text("Demo Video")
                        .font(.system(size: 35))
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                        .rotationEffect(.degrees(-10))
      

                    Text("")
                        .font(.system(size: 21))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                        .rotationEffect(.degrees(-10))
             
                    
                }
            }
        }
    
    
//       ******************  How to Video ******************************

VStack {
    
    HStack {
        
        
        NavigationLink( destination: RRdemoVideo(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                        label: {
            Text("Walk-through")
                .fontWeight(.medium)
                .font(.system(size: 60))
                .foregroundColor(.white)
                .glow(color: ColorManager.purple4, radius: 3)
                .opacity(0.15)
            
        })
    }
            
            
//******************************************************************
        
        HStack {

                Image("")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70, height: 70)
                    .opacity(0.9)
//                    .blinking(duration: 2.0)
            
            Spacer()
                .frame(width: 40)
            
            ZStack {
                
                Image(systemName: "circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 75, height: 75)
                    .foregroundColor(Color .purple)
                    .glow(color: ColorManager.purple4, radius: 3)
//                    .blinking(duration: 2.0)
                
                NavigationLink( destination: InviteView(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                label: {
                    Text("tap")
                        .foregroundColor(Color.white)
                        .frame(width: 60, height: 60)
                        .multilineTextAlignment(.center)
                        .font(.system(size: 16))
                    //                                   .padding(10)
                        .background(Color.gray)
                        .cornerRadius(50)
                        .glow(color: Color.white, radius: 20)
                        .shadow(color: Color.white, radius: 2, x: 2, y: 2)
//                        .blinking(duration: 2.0)
                    //                                   .blinking(duration: 4.0)
                    
                })
            }
            
            ZStack {
                
                Image("comicBubble")
                    .resizable()
                    .foregroundColor(Color.purple)
                    .frame(width: 250, height: 110)
                    .shadow(color: ColorManager .purple2, radius: 3, x: 3, y: 3)
//                    .rotationEffect(.degrees(-10))
                    .opacity(0.95)
                
                VStack {
                    
                    Text("how to")
                        .font(.system(size: 15))
                        .italic()
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
//                        .rotationEffect(.degrees(-10))
                    
                    Text("Invite Friends")
                        .font(.system(size: 21))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
//                        .rotationEffect(.degrees(-10))

                    Text("")
                        .font(.system(size: 21))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
//                        .rotationEffect(.degrees(-10))
             
                    
                }
            }
        }
         
//                **************  Chat Setup **************************

     
        
        HStack {
            ZStack {
                
                Image(systemName: "circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 75, height: 75)
                    .foregroundColor(Color .purple)
                    .glow(color: ColorManager.purple4, radius: 3)
//                    .blinking(duration: 2.0)
                
                NavigationLink( destination: FH9(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                label: {
                    Text("tap")
                        .foregroundColor(Color.white)
                        .frame(width: 60, height: 60)
                        .multilineTextAlignment(.center)
                        .font(.system(size: 16))
                    //                                   .padding(10)
                        .background(Color.gray)
                        .cornerRadius(50)
                        .glow(color: Color.white, radius: 20)
                        .shadow(color: Color.white, radius: 2, x: 2, y: 2)
//                        .blinking(duration: 2.0)
                    //                                   .blinking(duration: 4.0)
                    
                })
            }

            ZStack {
                
                
                Image("comicBubble")
                    .resizable()
                    .foregroundColor(Color.purple)
                    .frame(width: 250, height: 170)
                    .shadow(color: ColorManager .purple2, radius: 3, x: 3, y: 3)
//                    .rotationEffect(.degrees(-10))
                    .opacity(0.95)
                
                VStack {
                    
                    Text("how to")
                        .font(.system(size: 15))
                        .italic()
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
//                        .rotationEffect(.degrees(-10))
                        .foregroundColor(Color.white)
                    
                    Text("Build & Access")
                        .font(.system(size: 21))
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
//                        .rotationEffect(.degrees(-10))
//                        .blinking(duration: 2.0)
                    
                    Text("Chat Rooms")
                        .font(.system(size: 21))
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
//                        .rotationEffect(.degrees(-10))
//                        .blinking(duration: 2.0)
                    
                    Text("")
                        .font(.system(size: 21))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                        .rotationEffect(.degrees(-10))

                    
                }
            }
        }
     
    NavigationLink(destination:  RR40Info2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                               label: {
                    Text("->")
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        .frame(width: 40, height: 40)
                        .font(.system(size: 30))
                        .background(ColorManager .grey2)
                        .opacity(0.95)
                        .cornerRadius(5)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    
                })

        VStack {
                                
            Spacer()
                .frame(height: 100)
          
                            }
                        }
                    }
                }
            }

   
        
        func shareButtonTapped() {
            shareMood()
            
            if selectedFriends.count == 0 { return }
            for id in selectedFriends {
                for f in friends {
                    if f.id == id {
                        RestApi.instance.sendPushNotification(title: "BestFriends", body: " \(user.firstName) day just changed! Check their atmosphere color in BFs to see what's up.", APNToken: f.APNToken)
                        
                        //MARK: The code below creates an in-app notification for your friend (f.id)
                        //MARK: DO NOT CHANGE THE TEXT OF THE NOTIFICATION, otherwise the code to take the user to a diffrent page will not work. Once you set it, do not change it.
                        RestApi.instance.createInAppNotification(ian: InAppNotification(user: f.id, sender: user.id, text: "day just changed! Check their atmosphere color in BFs to see what's up.", createdOn: Int64(Date().timeIntervalSince1970))).then({ response in
                            print("Create a Vibe notification response code: ", response)
                        })
                        RestApi.instance.createStreakLog(friendID: f.id)
                    }
                }
            }
            shareColor = ColorManager.darkGrey
            showingAlert = true
            
        }
        
        private func shareMood() {
            RestApi.instance.createMoodLog(mood: mood, summary: summary, friends: sharedWith).then({ moodLog in
                print("Got mood log: ", moodLog)
                var m = atmosphere.moodLogs ?? []
                m.append(moodLog.id)
                let atm = Atmosphere(id: atmosphere.id, planet: atmosphere.planet, mood: mood, moodLogs: m)
                RestApi.instance.updateAtmosphere(atmosphere: atm).then({ response in
                    if response == 200 {
                        print("Successfully updated atmosphere")
                        for i in sharedWith {
                            for f in friends {
                                if i == f.id {
                                    RestApi.instance.sendPushNotification(title: "BestFriends - 'Vibe'", body: "\(user.firstName): Your friend's day just changed! Please take a moment to check on them.", APNToken: f.APNToken )
                                }
                            }
                            mood = -1
                            summary = ""
                            sharedWith = []
                        }
                    } else {
                        print("Failed to update atmosphere")
                    }
                })
            })
        }
        
        private func limitText(_ upper: Int) {
            if summary.count > upper {
                summary = String(summary.prefix(upper))
            }
        }
        
        
        
        private struct RectView: View {
            let user: User
            let friend: User
            let color: Color
            
            var body: some View {
                Text(friend.firstName + " " + String(friend.lastName.first!))
                    .fontWeight(.bold)
                    .frame(width: 75, height: 57)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .font(.system(size: 8))
                    .background(color)
                    .cornerRadius(75)
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
            }
            
            
            
        }
        
        private func defaultMessageButtonTapped(defaultMessage: String) {
            self.colorChangeTap = defaultMessage
        }
    }
    
    
