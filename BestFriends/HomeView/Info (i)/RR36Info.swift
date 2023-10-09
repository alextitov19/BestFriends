//
//  RR36Info.swift
//  BestFriends
//
//  Created by Robert Roe on 10/9/23.
//

import Foundation

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
            
     
     
        
    VStack {
        
        Text("SetUp &")
            .font(.system(size: 30))
            .fontWeight(.regular)
            .multilineTextAlignment(.center)
            .foregroundColor(Color.white)
        Text("Walk-Through")
            .font(.system(size: 30))
            .fontWeight(.regular)
            .multilineTextAlignment(.center)
            .foregroundColor(Color.white)
                        
HStack {
                    
    ZStack {
        
        //        ********************  cool guy  ***************************
        HStack {
          
//            Image("")
//                .resizable()
//                .foregroundColor(Color.blue)
//                .frame(width: 150, height: 150)
//                .shadow(color: Color.orange, radius: 3, x: 3, y: 3)
//                .opacity(0.9)
        ZStack {
            Image("comicBubble")
                .resizable()
                .foregroundColor(Color.purple)
                .frame(width: 325, height: 190)
                .shadow(color: ColorManager .purple2, radius: 3, x: 3, y: 3)
                .rotationEffect(.degrees(-20))
                .opacity(0.95)
            //                            .blinking(duration: 3.0)
            
     
            VStack {
                
                VStack {
                    
                    Text("Friends show as planets")
                        .font(.system(size: 16))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                        .rotationEffect(.degrees(-20))
//                        .blinking(duration: 2.0)
                    
                    Text("When active friend's")
                        .font(.system(size: 13))
                        .italic()
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .rotationEffect(.degrees(-20))
                        .foregroundColor(Color.white)
                    //                                .blinking(duration: 5.0)
                    
                    Text("planet show atmospere")
                        .font(.system(size: 13))
                        .italic()
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .rotationEffect(.degrees(-20))
                        .foregroundColor(Color.white)
                    //                                .blinking(duration: 5.0)
                    
                    Text("matching their vibe")
                        .font(.system(size: 13))
                        .italic()
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .rotationEffect(.degrees(-20))
                        .foregroundColor(Color.white)
                    //                                .blinking(duration: 5.0)
                    }
                }
            }
            
            Spacer()
                .frame(width: 80)
            
            
            Image("")
                .resizable()
                .foregroundColor(Color.blue)
                .frame(width: 150, height: 150)
                .shadow(color: Color.orange, radius: 3, x: 3, y: 3)
                .opacity(0.9)
            
        }    .opacity(0.9)
    }
}
        
 
//       ******************  Invite Friends ******************************
      
          
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
                    .frame(width: 65, height: 65)
                    .foregroundColor(Color .green)
                    .glow(color: ColorManager.purple4, radius: 3)
                    .blinking(duration: 2.0)
                
                NavigationLink( destination: InviteView(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                label: {
                    Text("?")
                        .foregroundColor(Color.white)
                        .frame(width: 40, height: 40)
                        .multilineTextAlignment(.center)
                        .font(.system(size: 32))
                    //                                   .padding(10)
                        .background(Color.gray)
                        .cornerRadius(50)
                        .glow(color: Color.white, radius: 20)
                        .shadow(color: Color.white, radius: 2, x: 2, y: 2)
                        .blinking(duration: 2.0)
                    //                                   .blinking(duration: 4.0)
                    
                })
            }
            
            ZStack {
                
                
                Image("comicBubble")
                    .resizable()
                    .foregroundColor(Color.purple)
                    .frame(width: 160, height: 110)
                    .shadow(color: ColorManager .purple3, radius: 3, x: 3, y: 3)
                    .opacity(0.5)
                
                VStack {
                    
                    Text("Invite")
                        .font(.system(size: 17))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)

                    Text("Friends")
                        .font(.system(size: 17))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                    
                }
            }
        }
         
//                **************  OPEN for something **************************

            
        HStack {

            Spacer()
                .frame(width: 40)
            
            ZStack {
                
                Image(systemName: "circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 65, height: 65)
                    .foregroundColor(Color .purple)
                    .glow(color: ColorManager.purple4, radius: 3)
                    .blinking(duration: 2.0)
                
                NavigationLink(destination: BuiltByTeensView(user: user, friends: friends),
                               label: {
                    Text("?")
                        .foregroundColor(Color.white)
                        .frame(width: 40, height: 40)
                        .multilineTextAlignment(.center)
                        .font(.system(size: 32))
                    //                                   .padding(10)
                        .background(Color.gray)
                        .cornerRadius(50)
                        .glow(color: Color.white, radius: 20)
                        .shadow(color: Color.white, radius: 2, x: 2, y: 2)
                        .blinking(duration: 2.0)
                })
            }
            
            ZStack {
                
                
                Image("comicBubble")
                    .resizable()
                    .foregroundColor(Color.purple)
                    .frame(width: 170, height: 120)
                    .shadow(color: ColorManager .purple3, radius: 3, x: 3, y: 3)
                    .opacity(0.5)
                
                VStack {
                    
                    Text("Our")
                        .font(.system(size: 17))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                    
                    Text("Story")
                        .font(.system(size: 17))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                    
                    }
                }
            }
        
            
           
//                ************ Chat Setup ***********************************

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
                    .frame(width: 65, height: 65)
                    .foregroundColor(Color .green)
                    .glow(color: ColorManager.purple4, radius: 3)
                    .blinking(duration: 2.0)
                
                NavigationLink( destination: InfoCreateChatRooms(user: user),
                                label: {
                    Text("?")
                        .foregroundColor(Color.white)
                        .frame(width: 40, height: 40)
                        .multilineTextAlignment(.center)
                        .font(.system(size: 32))
                        .background(Color.gray)
                        .cornerRadius(50)
                        .glow(color: Color.white, radius: 20)
                        .shadow(color: Color.white, radius: 2, x: 2, y: 2)
                        .blinking(duration: 2.0)
                    
                })
            }
            
            ZStack {
                
                
                Image("comicBubble")
                    .resizable()
                    .foregroundColor(Color.purple)
                    .frame(width: 160, height: 110)
                    .shadow(color: ColorManager .purple3, radius: 3, x: 3, y: 3)
                    .opacity(0.5)
                
                VStack {
                    
                    Text("SetUp")
                        .font(.system(size: 17))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)

                    Text("Chat")
                        .font(.system(size: 17))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                    
                }
            }
        }
     
      
//                ************************************************
                        VStack {
                            
            
                                Spacer()
                                    .frame(height: 20)
                                
                            VStack {
                                
                                //                                    Button(action: {
                                //                                        sessionManager.showLogin()
                                //                                    },
                                //                                           label: {
                                //                                        Image("home-alt2")
                                //                                            .frame(width: 60, height: 30)
                                //                                            .foregroundColor(.black)
                                //                                            .font(.system(size: 20))
                                //                                            .background(ColorManager .grey3)
                                //                                            .cornerRadius(15)
                                //                                            .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                                //                                            .opacity(0.70)
                                //
                                //                                    })
                                
                                NavigationLink(destination:  FH2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
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
                            
                                    
                                    Spacer()
                                        .frame(height: 30)
                                 
                                }
                            }
                        }
    
                        Spacer()
                            .frame(height: 15)
                        
                    }
                    
                }
                
            }
//        }
   
        
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
    
    
