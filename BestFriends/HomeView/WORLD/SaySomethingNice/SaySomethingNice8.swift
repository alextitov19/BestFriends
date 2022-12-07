//
//  SaySomethingNice8.swift
//  BestFriends
//
//  Created by Social Tech on 12/6/22.
//

import Foundation

import Combine
import SwiftUI


struct SaySomethingNice8: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    
    @State private var mood: Int = -1
    @State private var summary = ""
    @State private var sharedWith: [String] = []
    @State private var colorChangeTap: String = ""
    
    @State private var selectedFriends: [String] = []
    @State private var shareColor = ColorManager.purple5
    @State private var showingAlert = false
    
    @State private var colors: [Color] = [ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3]
    
    
    var body: some View {
        ZStack {
            
            //            Image("blueBackground")
            //                .resizable()
            //                .ignoresSafeArea()
            //                .scaledToFill()
            
            
            ColorManager .pmbc_blue
                .ignoresSafeArea()
            
//            Image("FatGuy")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
//
//            AdPlayerView(name: "sky2")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//            Image("purpleBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
            
            
            
            Image("holding iphone")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                
                
                
                
                HStack {
                    
                    
                }
                
            
                
                Spacer()
                    .frame(height: 20)
                
                
                Text("Your 'Vibe' will show as")
                    .font(.system(size: 15))
                    .italic()
                    .foregroundColor(ColorManager.grey1)
                
                Text("atmospher around your planet")
                    .font(.system(size: 15))
                    .italic()
                    .foregroundColor(ColorManager.grey1)
                //
                //                Text("Your 'Vibe' will show \naround your planet")
                //                    .font(.system(size: 15))
                //                    .italic()
                //                    .foregroundColor(ColorManager.grey4)
                
                Text("Set my 'Vibe'")
                    .font(.system(size: 35))
                    .fontWeight(.medium)
                    .foregroundColor(ColorManager .grey1)
                
                
                
                
                
                //
                //                Text(".")
                //                    .font(.system(size: 2))
                //                    .fontWeight(.regular)
                //                    .foregroundColor(ColorManager.grey1)
                //                    .padding(.horizontal)
                
                HStack {
                    
                }
                //                .padding(.horizontal)
                
 
                        
                        
                        VStack {
                            // MARK: End of feeling buttons
                            
                            
                            HStack {
                                
                                
                                
                            }
                            
                            Spacer()
                                .frame(height: 25)
                            
                            ZStack {
                                Rectangle()
                                    .frame(width:335, height: 50)
                                    .cornerRadius(15)
                                    .foregroundColor(Color.gray)
                                    .opacity(0.95)
                                
                                TextField("What's going on?", text: $summary)
                                    .font(.system(size: 20))
                                    .foregroundColor(ColorManager.purple2)
                                    .padding(.horizontal, 20)
                                    .onReceive(Just(summary)) { _ in limitText(80) }
                                
                                
                            }
                            
                            
                            HStack {
                                
                            }
                            
                            
                            VStack {
                                
                                Spacer()
                                    .frame(height: 10)
                                
                                
                                HStack {
                                    
                                    Text("select >")
                                        .fontWeight(.thin)
                                        .frame(width: 100, height: 30)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 20))
                                        .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
                                        .cornerRadius(25)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    //                                })
                                    
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
                                    .frame(height: 20)
                                
                                
                                Button(action: {
                                    shareButtonTapped()
                                },
                                       label: {
                                    Text("SHARE")
                                        .fontWeight(.thin)
                                        .frame(width: 100, height: 40)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 30))
                                        .background(shareColor)
                                        .cornerRadius(15)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                        .alert("Your friends have been Alerted", isPresented: $showingAlert) {
                                            Button("OK", role: .cancel) { }
                                        }
                                })
                                
                                
                                NavigationLink(
                                    destination: AtmosphereInfo2(user: user, atmosphere: atmosphere, friends: friends),
                                    label: {
                                        Text("How feature works")
                                            .fontWeight(.thin)
                                            .foregroundColor(Color.white)
                                            .font(.system(size: 12))
                                            .italic()
                                            .frame(width: 50, height: 50)
                                            .background(ColorManager .purple3)
                                            .cornerRadius(15)
                                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    })
                                
                            }
                            
                        }
                        //
                        //                Spacer()
                        //                    .frame(height: 10)
                        
                    }
                }
            }
            
            func shareButtonTapped() {
                if selectedFriends.count == 0 { return }
                for id in selectedFriends {
                    for f in friends {
                        if f.id == id {
                            RestApi.instance.sendPushNotification(title: "BestFriends", body: "\(user.firstName) sent a song to match your Vibe", APNToken: f.APNToken)
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
                                        RestApi.instance.sendPushNotification(title: "BestFriends - Vibe", body: "\(user.firstName) Something just happened to change their Vibe!", APNToken: f.APNToken )
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
                        .frame(width: 100, height: 30)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 10))
                        .background(color)
                        .cornerRadius(25)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                }
                
                
                
            }
            
            private func defaultMessageButtonTapped(defaultMessage: String) {
                self.colorChangeTap = defaultMessage
            }
        }
        
        
    
    
    



