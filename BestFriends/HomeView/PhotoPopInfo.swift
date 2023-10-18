//
//  PhotoPopInfo.swift
//  BestFriends
//
//  Created by Social Tech on 10/10/22.
//

import Foundation

import Combine
import SwiftUI
import ConfettiSwiftUI
import AVKit


struct PhotoPopInfo: View {
    
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
                
                
                AdPlayerView(name: "sky2")
                    .ignoresSafeArea()
                    .blendMode(.screen)
               
            }
   
VStack {
    Text("From your friends at")
        .fontWeight(.medium)
        .font(.system(size: 40))
        .foregroundColor(.white)
        .glow(color: ColorManager.purple4, radius: 3)
        .opacity(0.15)
    
    Text("BestFriends")
        .fontWeight(.medium)
        .font(.system(size: 40))
        .foregroundColor(.white)
        .glow(color: ColorManager.purple4, radius: 3)
        .opacity(0.15)
    
    

    VStack {
        
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
                
                Image("comicBubble")
                    .resizable()
                    .foregroundColor(Color.purple)
                    .frame(width: 250, height: 110)
                    .shadow(color: ColorManager .purple2, radius: 3, x: 3, y: 3)
                //                    .rotationEffect(.degrees(-10))
                    .opacity(0.95)
                
                VStack {
                    
                    NavigationLink( destination: RR14(user: user, friend: user, friends: friends, groups: groups),
                                    label: {
                        VStack {
                            Text("Nice. You've got")
                                .font(.system(size: 17))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.white)
                            
                            Text("Exciting NEWS!")
                                .font(.system(size: 20))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.cyan)
                        }
                    }
                    )}
            }
        }
    }

//******************************************************************

VStack {
    
    HStack {
        
     
      
        ZStack {
            
            Image("comicBubble")
                .resizable()
                .foregroundColor(Color.purple)
                .frame(width: 300, height: 110)
                .shadow(color: ColorManager .purple2, radius: 3, x: 3, y: 3)
            //                    .rotationEffect(.degrees(-10))
                .opacity(0.95)
            
            VStack {
                
                NavigationLink( destination: RR29(user: user, friends: friends),
                                label: {
                    VStack {
                        Text("Working on")
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.white)
                        
                        Text("Something Big!")
                            .font(.system(size: 20))
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.white)
                    }
                }
            )}
        }
            Image("")
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 70)
                .opacity(0.9)
    }
        
//                **************  Chat Setup **************************
    
    VStack {
        
        HStack {
            
            Image("CoolGuy")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .opacity(0.9)
            //                    .blinking(duration: 2.0)
            
            Spacer()
                .frame(width: 0)
            
            
            
            ZStack {
                
                Image("comicBubble")
                    .resizable()
                    .foregroundColor(Color.purple)
                    .frame(width: 200, height: 100)
                    .shadow(color: ColorManager .purple2, radius: 3, x: 3, y: 3)
                //                    .rotationEffect(.degrees(-10))
                    .opacity(0.95)
                
                VStack {
                    
                    NavigationLink( destination: VirtualHug(user: user, friends: friends),
                                    label: {
                        VStack {
                            Text("My day")
                                .font(.system(size: 20))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.white)
                            
                            Text("sucks!")
                                .font(.system(size: 21))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.white)
                        }
                    }
                    )}
            }
        }
        
        // ********************************** Smile Vault **********************
        
        VStack {
            
            HStack {
                
                
                
                ZStack {
                    
                    Image("comicBubble")
                        .resizable()
                        .foregroundColor(Color.purple)
                        .frame(width: 200, height: 100)
                        .shadow(color: ColorManager .purple2, radius: 3, x: 3, y: 3)
                    //                    .rotationEffect(.degrees(-10))
                        .opacity(0.95)
                    
                    VStack {
                        
                        NavigationLink( destination: BestFriendMessages(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres),
                                        label: {
                            VStack {
                                Text("Keepsake")
                                    .font(.system(size: 20))
                                    .fontWeight(.light)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color.white)
                                
                                Text("Messages")
                                    .font(.system(size: 20))
                                    .fontWeight(.regular)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color.white)
                            }
                        }
                        )}
                }
                Image("")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70, height: 70)
                    .opacity(0.9)
            }
        }
    }
        
//********************************************
    
    
    Spacer()
        .frame(height: 50)
     
    NavigationLink(destination:  EmptyView(),
                               label: {
                    Text("Talk to BestFriends AI  ->")
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        .frame(width: 280, height: 40)
                        .font(.system(size: 20))
                        .background(Color.cyan)
                        .opacity(0.95)
                        .cornerRadius(10)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    
                })

    Spacer()
        .frame(height: 20)
    
            VStack {
                               
                               Button(action: {
                                   sessionManager.showLogin()
                               },
                                      label: {
                                   Image("home-alt2")
                                       .frame(width: 60, height: 30)
                                       .foregroundColor(.black)
                                       .font(.system(size: 20))
                                       .background(ColorManager .grey3)
                                       .cornerRadius(15)
                                       .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                                       .opacity(0.70)
                                   
                               })
                           }
            
            
            
            Spacer()
                .frame(height: 100)
          
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
    
    

//            NavigationLink( destination: RRdemoVideo(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
//                            label: {
//                Text("tap")
//                    .foregroundColor(Color.white)
//                    .frame(width: 60, height: 60)
//                    .multilineTextAlignment(.center)
//                    .font(.system(size: 16))
//                //                                   .padding(10)
//                    .background(Color.gray)
//                    .cornerRadius(50)
//                    .glow(color: Color.white, radius: 20)
//                    .shadow(color: Color.white, radius: 2, x: 2, y: 2)
//                //                        .blinking(duration: 2.0)
//                //                                   .blinking(duration: 4.0)
//
//            })



//        ZStack {
//
//            Image(systemName: "circle")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 75, height: 75)
//                .foregroundColor(Color .purple)
//                .glow(color: ColorManager.purple4, radius: 3)
//            //                    .blinking(duration: 2.0)
//
//            NavigationLink( destination: InviteView(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
//                            label: {
//                Text("tap")
//                    .foregroundColor(Color.white)
//                    .frame(width: 60, height: 60)
//                    .multilineTextAlignment(.center)
//                    .font(.system(size: 16))
//                //                                   .padding(10)
//                    .background(Color.gray)
//                    .cornerRadius(50)
//                    .glow(color: Color.white, radius: 20)
//                    .shadow(color: Color.white, radius: 2, x: 2, y: 2)
//                //                        .blinking(duration: 2.0)
//                //                                   .blinking(duration: 4.0)
//
//            })
//        }