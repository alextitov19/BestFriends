//
//  RR32.swift
//  BestFriends
//
//  Created by Robert Roe on 10/2/23.
//

import Foundation

import Combine
import SwiftUI
import ConfettiSwiftUI
import AVKit


struct RR32: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    
    
    //    let user: User
    //    let atmosphere: Atmosphere
    //    let friends: [User]
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
   
        VStack {
           
            
            Text("My Day")
                .font(.system(size: 25))
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.white)
            
//            Text("CareHearts")
//                .font(.system(size: 25))
//                .fontWeight(.regular)
//                .multilineTextAlignment(.center)
//                .foregroundColor(Color.white)
  
        }
    }
    
    
//    ********************** My Exciting News *****************
    
    HStack {
        ZStack {
            
            Image(systemName: "circle")
                .resizable()
                .scaledToFit()
                .frame(width: 75, height: 75)
                .foregroundColor(Color .green)
                .glow(color: Color.green, radius: 10)
                .shadow(color: Color.green, radius: 3, x: 3, y: 3)
            
            
            Button(action: {
                mood = 7
            }) {
                
                Text("exciting \nnews")
                    .font(.system(size: 15))
                    .foregroundColor(Color.black)
            }
            .frame(width: 75, height: 75, alignment: .center)
            .background(mood == 7 ? Color.green : ColorManager .grey1)
            .cornerRadius(40)
            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
        }
        Spacer()
            .frame(width: 15)
        
//        ************************************
        

        ZStack {
            
            
            Image("comicBubble")
                .resizable()
                .foregroundColor(Color.cyan)
                .frame(width: 210, height: 90)
                .shadow(color: Color.green, radius: 3, x: 3, y: 3)
                .opacity(0.95)
            
            VStack {
//
//                Text("Yep. You've got")
//                    .font(.system(size: 17))
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(Color.white)

                Text("Alert friends")
                    .font(.system(size: 17))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                 
                
            }
        }
    }

    
    
//    ******************************************************
        VStack {
                        
                HStack {
                    
                    ZStack {
                        ZStack {
                            
                            Image(systemName: "circle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 75, height: 75)
                                .foregroundColor(Color .orange)
                                .glow(color: Color.orange, radius: 10)
                                .shadow(color: Color.orange, radius: 3, x: 3, y: 3)

                            
                            
                        }
                        Button(action: {
                            mood = 8
                            //                                    showingAlert = true
                        }) {
                            
                            Text("something \nbig")
                                .font(.system(size: 15))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 75, height: 75, alignment: .center)
                        .background(mood == 8 ? Color.orange : Color.white)
                        .cornerRadius(50)
                     
                    }
//   ************************************************
                    Spacer ()
                        .frame(width: 15)

    //               ************************************************
                    ZStack {
                        
                        //                    Image(systemName: "cube.fill")
                        Image("comicBubble")
                            .resizable()
                            .foregroundColor(Color.purple)
                            .frame(width: 225, height: 100)
                            .shadow(color: Color.orange, radius: 3, x: 3, y: 3)
                            .opacity(0.95)
//                            .blinking(duration: 3.0)
                        
                        VStack {
                        
                            
                            Text("Wish me Luck")
                                .font(.system(size: 17))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.white)
//
//                            Text("something big")
//                                .font(.system(size: 17))
//                                .fontWeight(.light)
//                                .multilineTextAlignment(.center)
//                                .foregroundColor(Color.white)

                        }
                    }
                }

            Spacer()
                .frame(height: 15)
            
    //               ************************************************
        
            //                ************************************************
 
                
            HStack {
                Spacer ()
                    .frame(width: 30)
            
                ZStack {
                   
                    Image(systemName: "circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 75, height: 75)
                        .foregroundColor(Color .cyan)
                        .glow(color: Color.cyan, radius: 10)
                        .shadow(color: Color.cyan, radius: 3, x: 3, y: 3)
                    
                    
                    Button(action: {
                        mood = 1
                        //                    showingAlert = true
                    }) {
                        Text("bad day")
                            .font(.system(size: 15))
                            .foregroundColor(Color.black)
                    }
                    .frame(width: 70, height: 70, alignment: .center)
                    .background(mood == 7 ? Color.cyan : ColorManager .grey1)
                    .cornerRadius(40)
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                }
            
//***************************************
           
                Spacer ()
                    .frame(width: 15)

//                ********************************************
                    
                    
                    ZStack {
                        
                        //                    Image(systemName: "cube.fill")
                        Image("comicBubble")
                            .resizable()
                            .foregroundColor(Color.cyan)
                            .frame(width: 220, height: 100)
                            .shadow(color: Color.cyan, radius: 3, x: 3, y: 3)
                            .opacity(0.95)
//                            .blinking(duration: 5.0)
                        
                        VStack {
                            
                        
                            
                            Text("Ask friends")
                                .font(.system(size: 17))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.white)
                            
                            Text("for CareHearts")
                                .font(.system(size: 17))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.white)
                            
                        }
                    }
                }

//               ************************************************
            //                ************************************************
            
        HStack {
            Spacer ()
                .frame(width: 30)
        
            ZStack {
               
                Image(systemName: "circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 75, height: 75)
                    .foregroundColor(Color .cyan)
                    .glow(color: Color.purple, radius: 10)
                    .shadow(color: Color.purple, radius: 3, x: 3, y: 3)
                
                
                Button(action: {
                    mood = 6
                    //                    showingAlert = true
                }) {
                    Text("what's \nup?")
                        .font(.system(size: 15))
                        .foregroundColor(Color.black)
                }
                .frame(width: 70, height: 70, alignment: .center)
                .background(mood == 7 ? Color.purple : ColorManager .grey1)
                .cornerRadius(40)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
            }
        
//***************************************
       
            Spacer ()
                .frame(width: 15)

//                ********************************************
                
                
                ZStack {
                    
                    //                    Image(systemName: "cube.fill")
                    Image("comicBubble")
                        .resizable()
                        .foregroundColor(Color.cyan)
                        .frame(width: 240, height: 80)
                        .shadow(color: Color.cyan, radius: 3, x: 3, y: 3)
                        .opacity(0.95)
//                            .blinking(duration: 5.0)
                    
                    VStack {
                        
                    
                        
                        Text("ask for PhotoPOP")
                            .font(.system(size: 17))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.white)
                        
//                        Text("for CareHearts")
//                            .font(.system(size: 17))
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(Color.white)
                        
                    }
                }
            }
            
      
      
            //                ************************************************
                        VStack {
                            
                            VStack {
                                Text("(Planet atmosphere color matches your vibe)")
                                    .font(.system(size: 13))
                                    .italic()
                                    .fontWeight(.regular)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color.white)
                                
                                Text("(alert friends)")
                                    .font(.system(size: 15))
                                    .italic()
                                    .fontWeight(.light)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color.white)
                           
                                HStack {
                                    
                                    //                            Text("select >")
                                    //                                .fontWeight(.thin)
                                    //                                .frame(width: 100, height: 30)
                                    //                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    //                                .font(.system(size: 20))
                                    //                                .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
                                    //                                .cornerRadius(25)
                                    //                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                    
                                    if friends.count > 0 {
                                        RectView(user: user, friend: friends[0], color: colors[0])
                                            .onTapGesture(perform: {
                                                if selectedFriends.contains(friends[0].id) {
                                                    selectedFriends = selectedFriends.filter { $0 != friends[0].id }
                                                    colors[0] = ColorManager.purple3
                                                } else {
                                                    selectedFriends.append(friends[0].id)
                                                    colors[0] = ColorManager.purple5
                                                }
                                                print(selectedFriends)
                                            })
                                        
                                    }
                                    
                                    if friends.count > 1 {
                                        RectView(user: user, friend: friends[1], color: colors[1])
                                            .onTapGesture(perform: {
                                                if selectedFriends.contains(friends[1].id) {
                                                    selectedFriends = selectedFriends.filter { $0 != friends[1].id }
                                                    colors[1] = ColorManager.purple3
                                                } else {
                                                    selectedFriends.append(friends[1].id)
                                                    colors[1] = ColorManager.purple5
                                                }
                                                print(selectedFriends)
                                            })
                                        
                                    }
                                }
                                
                                //                        Spacer()
                                //                            .frame(height: 15)
                                
                                HStack {
                                    if friends.count > 2 {
                                        RectView(user: user, friend: friends[2], color: colors[2])
                                            .onTapGesture(perform: {
                                                if selectedFriends.contains(friends[2].id) {
                                                    selectedFriends = selectedFriends.filter { $0 != friends[2].id }
                                                    colors[2] = ColorManager.purple3
                                                } else {
                                                    selectedFriends.append(friends[2].id)
                                                    colors[2] = ColorManager.purple5
                                                }
                                                print(selectedFriends)
                                            })
                                    }
                                    
                                    if friends.count > 3 {
                                        RectView(user: user, friend: friends[3], color: colors[3])
                                            .onTapGesture(perform: {
                                                if selectedFriends.contains(friends[3].id) {
                                                    selectedFriends = selectedFriends.filter { $0 != friends[3].id }
                                                    colors[3] = ColorManager.purple3
                                                } else {
                                                    selectedFriends.append(friends[3].id)
                                                    colors[3] = ColorManager.purple5
                                                }
                                                print(selectedFriends)
                                            })
                                        
                                    }
                                    
                                    if friends.count > 4 {
                                        RectView(user: user, friend: friends[4], color: colors[4])
                                            .onTapGesture(perform: {
                                                if selectedFriends.contains(friends[4].id) {
                                                    selectedFriends = selectedFriends.filter { $0 != friends[4].id }
                                                    colors[4] = ColorManager.purple3
                                                } else {
                                                    selectedFriends.append(friends[4].id)
                                                    colors[4] = ColorManager.purple5
                                                }
                                                print(selectedFriends)
                                            })
                                        
                                    }
                                }
                                
                                Spacer()
                                    .frame(height: 15)
                                
                                
                                Button(action: {
                                    counter += 1
                                    shareTapped = true
                                    shareButtonTapped()
                                },
                                    label: {
                                    Image("iconShare")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 80, height: 80)
                                        .rotationEffect(.degrees(20))
                                        .foregroundColor(ColorManager .purple5)
                                        .glow(color: Color.purple, radius: 2)
                                        .opacity(0.6)
                                        .blinking(duration: 3.0)
                                        .alert("We just sent this message; Your friend's vibe just changed! Check their 'Atmosphere-color' to help", isPresented: $showingAlert) {
                                            Button("OK", role: .cancel) { }
                                            
                                        
                                            
                                        }
                                    
                                })
                                    .confettiCannon(counter: $counter)
                                
                                
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
                                        
//                                    })
                                    
//                                    Spacer()
//                                        .frame(height: 30)
                                 
                                }
                            }
                        }
                       
                    }
                    
                }
                
            }
        }
        //    }
        
        func shareButtonTapped() {
            shareMood()
            
            if selectedFriends.count == 0 { return }
            for id in selectedFriends {
                for f in friends {
                    if f.id == id {
                        RestApi.instance.sendPushNotification(title: "BestFriends", body: " \(user.firstName) Vibe just changed! Check their 'Atmosphere-color' to help.", APNToken: f.APNToken)
                        
                        //MARK: The code below creates an in-app notification for your friend (f.id)
                        //MARK: DO NOT CHANGE THE TEXT OF THE NOTIFICATION, otherwise the code to take the user to a diffrent page will not work. Once you set it, do not change it.
                        RestApi.instance.createInAppNotification(ian: InAppNotification(user: f.id, sender: user.id, text: "Vibe just changed! Check their 'Atmosphere-color' to help.", createdOn: Int64(Date().timeIntervalSince1970))).then({ response in
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
                    .frame(width: 80, height: 80)
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
    
    
    
    //   *******************************************
    //                            HStack {
    
    //                                ZStack {
    //
    //                                    Image(systemName: "")
    //                                        .resizable()
    //                                        .foregroundColor(Color.cyan)
    //                                        .frame(width: 150, height: 110)
    //                                        .rotationEffect(.degrees(7))
    //                                        .shadow(color: Color .blue, radius: 10, x: 10, y: 10)
    //                                        .opacity(0.5)
    //                                    //                                        .blinking(duration: 2.0)
    //
    //
    //                                    NavigationLink(destination: RR31(user: user, friends: friends), label: {
    //
    //                                        Text("")
    //                                            .fontWeight(.thin)
    //                                            .foregroundColor(Color.white)
    //                                            .font(.system(size: 20))
    //                                            .multilineTextAlignment(.center)
    //                                            .rotationEffect(.degrees(7))
    //                                            .opacity(1.0)
    //                                        //                                            .blinking(duration: 2.0)
    //
    //
    //                                    }
    //                                    )}
    
    
    //
    //                                Spacer ()
    //                                    .frame(width: 70)
    //                   ******************************************************
    
    //
//                                    ZStack {
//
//                                        Image(systemName: "cube.fill")
//                                            .resizable()
//                                            .foregroundColor(Color.purple)
//                                            .frame(width: 225, height: 150)
//                                            .rotationEffect(.degrees(-20))
//                                            .shadow(color: ColorManager .purple3, radius: 65, x: 30, y: 50)
//                                            .opacity(0.5)
//                                            .blinking(duration: 4.0)
//
//                                        VStack {
//
//                                            Text("Bad day?")
//                                                .font(.system(size: 25))
//                                                .fontWeight(.light)
//                                                .multilineTextAlignment(.center)
//                                                .foregroundColor(Color.white)
//                                                .multilineTextAlignment(.center)
//                                                .rotationEffect(.degrees(-20))
//                                                .blinking(duration: 4.0)
//
//                                            Text("Even if not ready to")
//                                                .font(.system(size: 15))
//                                                .fontWeight(.light)
//                                                .multilineTextAlignment(.center)
//                                                .foregroundColor(Color.white)
//                                                .multilineTextAlignment(.center)
//                                                .rotationEffect(.degrees(-20))
//                                                .blinking(duration: 4.0)
//
//
//                                            Text("talk about it yet,")
//                                                .font(.system(size: 15))
//                                                .fontWeight(.light)
//                                                .multilineTextAlignment(.center)
//                                                .foregroundColor(Color.white)
//                                                .multilineTextAlignment(.center)
//                                                .rotationEffect(.degrees(-20))
//                                                .blinking(duration: 4.0)
//
//                                            Text("alert friends so they can")
//                                                .font(.system(size: 15))
//                                                .fontWeight(.light)
//                                                .multilineTextAlignment(.center)
//                                                .foregroundColor(Color.white)
//                                                .multilineTextAlignment(.center)
//                                                .rotationEffect(.degrees(-20))
//                                                .blinking(duration: 4.0)
//
//                                            Text("send emotional support")
//                                                .font(.system(size: 15))
//                                                .fontWeight(.light)
//                                                .multilineTextAlignment(.center)
//                                                .foregroundColor(Color.white)
//                                                .multilineTextAlignment(.center)
//                                                .rotationEffect(.degrees(-20))
//                                                .blinking(duration: 4.0)
//
//                                        }
//                                    }
//                                }
//
//
