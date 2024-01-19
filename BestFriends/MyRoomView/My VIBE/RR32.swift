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
                
                AdPlayerView(name: "Somebody7")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                    .opacity(0.0)

            }
            
   
        VStack {
             
           
//
    //    ******************************************************
                
    VStack {
        
      Spacer ()
            .frame(height: 30)
        
      
        HStack {
            HStack {
                VStack {
                    Text("I'm having a")
                        .font(.system(size: 27))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                        .rotationEffect(.degrees(-20))
                    //                .blinking(duration: 3.0)
                        .shadow(color: Color.white, radius: 6, x: 3, y: 5)
                        .opacity(0.35)
                    
                    Text("   bad day")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                        .rotationEffect(.degrees(-20))
                    //                .blinking(duration: 3.0)
                        .shadow(color: Color.white, radius: 6, x: 3, y: 5)
                        .opacity(0.35)
                    
                }
                
                VStack {
                    
                    Text("Friends helping via")
                        .font(.system(size: 15))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                        .rotationEffect(.degrees(-20))
                    
                    Text("  CareHearts")
                        .font(.system(size: 20))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.cyan)
                        .rotationEffect(.degrees(-20))
                }
          
                ZStack {
                    
                    Image(systemName: "circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 90, height: 90)
                        .foregroundColor(Color .cyan)
                        .glow(color: Color.cyan, radius: 10)
                        .shadow(color: Color.cyan, radius: 3, x: 3, y: 3)
                    
                    
                    Button(action: {
                        mood = 1
//                      showingAlert = true
                    }) {
                        
                        VStack {
                            Text("TAP")
                                .font(.system(size: 30))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.cyan)
                 
                            
                            Spacer ()
                                .frame(height: 7)
                            
                        }
                    }
                 
                    .frame(width: 70, height: 70, alignment: .center)
                    .background(mood == 1 ? Color.cyan : ColorManager .grey4)
                    .cornerRadius(100)
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    
                }
            }
        }
                        
    //               ************************************************
           
        Spacer()
            .frame(height: 25)
     
        Text("_______________________________")
            .font(.system(size: 10))
            .fontWeight(.light)
            .multilineTextAlignment(.center)
            .foregroundColor(Color.purple)
        
            Spacer()
                .frame(height: 25)
            
        
                        
                    HStack {

                        ZStack {
                            Image(systemName: "circle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 90, height: 90)
                                .foregroundColor(Color .purple)
                                .glow(color: Color.purple, radius: 10)
                                .shadow(color: Color.purple, radius: 3, x: 3, y: 3)
                            
                            
                            Button(action: {
                                mood = 6
                                //                    showingAlert = true
                            }) {

                                VStack {
                                    Text("TAP")
                                        .font(.system(size: 30))
                                        .fontWeight(.light)
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(Color.purple)
                                    
                             
                                    
                              
                                }
                            }
                            .frame(width: 70, height: 70, alignment: .center)
                            .background(mood == 6 ? Color.purple : ColorManager .grey4)
                            .cornerRadius(100)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        }
         
                        
                        Spacer ()
                            .frame(width: 30)
                        
                        VStack {
                            
                            Text("Important day")
                                .font(.system(size: 30))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.white)
                                .rotationEffect(.degrees(-20))
                                .shadow(color: Color.white, radius: 6, x: 3, y: 5)
                                .opacity(0.35)
                            
                            Text("    wish me luck")
                                .font(.system(size: 27))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.white)
                                .rotationEffect(.degrees(-20))
                                .shadow(color: Color.white, radius: 6, x: 3, y: 5)
                                .opacity(0.35)
                            
                      
                        }
                  
                    }
           
                    
                    
                    
                            //***************************************
        VStack {
            
            
            Spacer()
                .frame(height: 25)
            
            Text("_______________________________")
                .font(.system(size: 10))
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.purple)
            
            Spacer()
                .frame(height: 25)
        }
                            
        HStack {
            VStack {
                Text("I'm having a")
                    .font(.system(size: 27))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                    .rotationEffect(.degrees(-20))
                //                .blinking(duration: 3.0)
                    .shadow(color: Color.white, radius: 6, x: 3, y: 5)
                    .opacity(0.35)
                
                Text("  good day")
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                    .rotationEffect(.degrees(-20))
                //                .blinking(duration: 3.0)
                    .shadow(color: Color.white, radius: 6, x: 3, y: 5)
                    .opacity(0.35)
                
            }
            
        Spacer ()
                .frame(width: 30)
      
            ZStack {
                
                Image(systemName: "circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90, height: 90)
                    .foregroundColor(Color .green)
                    .glow(color: Color.green, radius: 10)
                    .shadow(color: Color.green, radius: 3, x: 3, y: 3)
                
                
                Button(action: {
                    mood = 4
//                      showingAlert = true
                }) {
                    
                    VStack {
                        Text("TAP")
                            .font(.system(size: 30))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.cyan)
             
                        
                        Spacer ()
                            .frame(height: 7)
                        
                    }
                }
             
                .frame(width: 70, height: 70, alignment: .center)
                .background(mood == 4 ? Color.green : ColorManager .grey4)
                .cornerRadius(100)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                
            }
        }
    
       
        
        
        
        
        
        
                            
                            //                ********************************************
                        //                ************************************************
        
        
        
                        VStack {
                            
                            VStack {
                                
                                Spacer ()
                                    .frame(height: 30)
                                
                                Text("Today's atmosphere")
                                    .font(.system(size: 20))
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color.white)
                    //                .rotationEffect(.degrees(-20))
                                //                .blinking(duration: 3.0)
                                    .shadow(color: Color.white, radius: 6, x: 3, y: 5)
                                    .opacity(0.35)
                                
                                Text("Your planet's atmosphere matches your 'VIBE'")
                                    .font(.system(size: 12))
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color.purple)
                    //                .rotationEffect(.degrees(-20))
                                
                     
                                
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
                                
                                ZStack {
                                    
                                    Text("")
                                        .fontWeight(.light)
                                        .frame(width: 330, height: 95)
                                        .font(.system(size: 25))
                                        .background(Color.black)
                                        .cornerRadius(15)
                                      
                                    
                                    
                                    

                                    Button(action: {
                                        //                                    counter += 1
                                        //                                    shareTapped = true
                                        shareButtonTapped()
                                    },
                                           label: {
                                        Image("iconShare")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 70, height: 70)
                                            .rotationEffect(.degrees(20))
                                            .foregroundColor(ColorManager .purple5)
                                            .glow(color: Color.purple, radius: 2)
                                            .opacity(0.6)
                                            .blinking(duration: 3.0)
                                            .alert("We shot out lighbeams to friends letting them know what's up", isPresented: $showingAlert) {
                                                Button("OK", role: .cancel) { }
                                                
                                            }
                                        
                                    })
                                }
                              
               
                                
                                
                                Spacer()
                                    .frame(height: 50)
                                
                                
                            }
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
                        RestApi.instance.sendPushNotification(title: "BestFriends", body: " \(user.firstName) just changed their Vibe. Tap to see what's up.", APNToken: f.APNToken)
                        
                        //MARK: The code below creates an in-app notification for your friend (f.id)
                        //MARK: DO NOT CHANGE THE TEXT OF THE NOTIFICATION, otherwise the code to take the user to a diffrent page will not work. Once you set it, do not change it.
                        RestApi.instance.createInAppNotification(ian: InAppNotification(user: f.id, sender: user.id, text: "changed their vibe. Could you check on them. Your true friendship is priceless.", createdOn: Int64(Date().timeIntervalSince1970))).then({ response in
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
                    .frame(width: 75, height: 75)
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

    
