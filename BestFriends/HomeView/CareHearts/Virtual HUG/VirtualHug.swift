//
//  VirtualHug.swift
//  BestFriends
//
//  Created by Social Tech on 6/4/22.
//


import Foundation
import SwiftUI
import ConfettiSwiftUI
import AVKit
//import AudioToolbox

struct VirtualHug: View {
    
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
    
    @State private var showingHeart = true;
    
    
    
    var body: some View {
        
        ZStack {
            
            
            if shareTapped {
                
                
                
                ColorManager.purple5
                    .ignoresSafeArea()
                    .onAppear()
                
                
                AdPlayerView(name: "dramaLights")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                
            } else {
                
                ColorManager.purple7
                    .opacity(0.8)
                    .ignoresSafeArea()
                    .onAppear()
                
                AdPlayerView(name: "sky2")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                
                
            }
            
            
            VStack{
                
                Spacer ()
                .frame(height: 10)
                
                NavigationLink( destination:  CH2(user: user, friends: friends),
                            label: {
                Text("Say Thank you and send one back")
                    .fontWeight(.thin)
                    .frame(width: 310, height: 50)
                    .foregroundColor(ColorManager .grey1)
                    .font(.system(size: 20))
                    .background(ColorManager .pmbc_green)
                    .opacity(0.9)
                    .cornerRadius(15)
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
            })
                
                Text("tap heart,")
                    .font(.system(size: 30))
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager .grey1)
                
                Text("hold iPhone to your heart")
                    .font(.system(size: 30))
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager .grey1)
                
                
                
                Spacer()
                    .frame(height: 20)
                
                
                if (showingHeart) {
                    ZStack {
                        Image(systemName: "heart.fill")
                            .resizable()
                            .foregroundColor(.purple)
                            .frame(width: 150, height: 150)
                            .shadow(color: .blue, radius: 65, x: 30, y: 50)
                            .opacity(0.7)
                        
                        
                        Text("tap")
                            .font(.system(size: 35))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.white)
                            .padding()
                            .onTapGesture {
                                showingHeart = false
                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                    AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {
                                        AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {
                                            AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {
                                                AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {
                                                    AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {
                                                        showingHeart = true
                                                    }
                                                }
                                            }
                                        }
                                            
                             
                                            
                                            
                                            
                                            VStack {
                                                
                                                Spacer()
                                                    .frame(height: 25)
                                                
                                                
                                                HStack {
                                                    
                                                    //                            Text("select >")
                                                    //                                .fontWeight(.thin)
                                                    //                                .frame(width: 100, height: 30)
                                                    //                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                                    //                                .font(.system(size: 20))
                                                    //                                .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
                                                    //                                .cornerRadius(25)
                                                    //                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
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
                                                
                                                Spacer()
                                                    .frame(height: 15)
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
                                                    
                                                    
                                                    
                                                    
                                                    //                        Button(action: {
                                                    //                            counter += 1
                                                    //                            shareButtonTapped()
                                                    //                        },
                                                    //                               label: {
                                                    //                            Text("SHARE")
                                                    
                                                    
                                                    Spacer()
                                                        .frame(height: 20)
                                                    
                                                    
                                                    Button(action: {
                                                        counter += 1
                                                        shareTapped = true
                                                        shareButtonTapped()
                                                    },
                                                           label: {
                                                        Text("SHARE")
                                                        
                                                            .fontWeight(.thin)
                                                            .frame(width: 100, height: 30)
                                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                                            .font(.system(size: 25))
                                                            .background(shareColor)
                                                            .cornerRadius(25)
                                                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                                            .alert("Sometimes there's more power in a simple hug than a thousand words.", isPresented: $showingAlert) {
                                                                Button("OK", role: .cancel) { }
                                                            }
                                                    })
                                                    .confettiCannon(counter: $counter)
                                                    
                                                    
                                                    VStack {
                                                        
                                                        
                                                        Button(action: {
                                                            sessionManager.showLogin()
                                                        },
                                                               label: {
                                                            Image("home-alt2")
                                                                .frame(width: 50, height: 25)
                                                                .foregroundColor(.white)
                                                                .font(.system(size: 20))
                                                                .background(Color .black)
                                                                .cornerRadius(15)
                                                                .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                                                                .opacity(0.70)
                                                            
                                                        })
                                                        
                                                    }
                                                }
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                
                                
                                
                                func shareButtonTapped() {
                                    if selectedFriends.count == 0 { return }
                                    for id in selectedFriends {
                                        for f in friends {
                                            if f.id == id {
                                                RestApi.instance.sendPushNotification(title: "BestFriends", body: "Awww! ...  \(user.firstName) sent you a hug. Tap in-app notification (star on Homepg) to activate your hug.", APNToken: f.APNToken)
                                                
                                                //MARK: The code below creates an in-app notification for your friend (f.id)
                                                //MARK: DO NOT CHANGE THE TEXT OF THE NOTIFICATION, otherwise the code to take the user to a diffrent page will not work. Once you set it, do not change it.
                                                RestApi.instance.createInAppNotification(ian: InAppNotification(user: f.id, sender: user.id, text: "Awww! ... you got a new hug", createdOn: Int64(Date().timeIntervalSince1970))).then({ response in
                                                    print("Create a hug notification response code: ", response)
                                                })
                                                RestApi.instance.createStreakLog(friendID: f.id)
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
                        //                    }
                        //                }
                        //            }
                        
                        //
                        //***************************************************** *************************
                        ////import CoreHaptics
                        //import SwiftUI
                        ////import CoreHaptics
                        //import AudioToolbox
                        //
                        //struct VirtualHug: View {
                        //    //    @State private var engine: CHHapticEngine?
                        //
                        //    @EnvironmentObject var sessionManager: SessionManager
                        //
                        //    @State private var showingHeart = true;
                        //
                        //    var body: some View {
                        //
                        //
                        //        ZStack {
                        //            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                        //                .ignoresSafeArea()
                        //            //                .onAppear(perform: prepareHaptics)
                        //
                        //            Image("purpleBackground")
                        //                .resizable()
                        //                .ignoresSafeArea()
                        //                .scaledToFill()
                        //
                        //            AdPlayerView(name: "")
                        //                .ignoresSafeArea()
                        //                .blendMode(.screen)
                        //
                        //            VStack {
                        //
                        //                Button(action: {
                        //                    sessionManager.showLogin()
                        //                },
                        //                    label: {
                        //                    Image("home-alt2")
                        //                        .frame(width: 50, height: 25)
                        //                        .foregroundColor(.white)
                        //                        .font(.system(size: 20))
                        //                        .background(Color .gray)
                        //                        .cornerRadius(15)
                        //                        .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                        //                        .opacity(0.70)
                        //
                        //                })
                        //
                        //                Spacer()
                        //                    .frame(height: 17)
                        //
                        //                Text("tap heart,")
                        //                    .font(.system(size: 30))
                        //                    .fontWeight(.ultraLight)
                        //                    .multilineTextAlignment(.center)
                        //                    .foregroundColor(Color.black)
                        //
                        //                Text("hold iPhone to your heart")
                        //                    .font(.system(size: 30))
                        //                    .fontWeight(.ultraLight)
                        //                    .multilineTextAlignment(.center)
                        //                    .foregroundColor(Color.black)
                        //
                        //
                        //
                        //                Spacer()
                        //                    .frame(height: 20)
                        //
                        //                if (showingHeart) {
                        //                    ZStack {
                        //                        Image(systemName: "heart.fill")
                        //                            .resizable()
                        //                            .foregroundColor(.purple)
                        //                            .frame(width: 150, height: 150)
                        //                            .shadow(color: .blue, radius: 65, x: 30, y: 50)
                        //                            .opacity(0.7)
                        //
                        //
                        //                        Text("tap")
                        //                            .font(.system(size: 35))
                        //                            .fontWeight(.light)
                        //                            .multilineTextAlignment(.center)
                        //                            .foregroundColor(Color.white)
                        //                            .padding()
                        //                            .onTapGesture {
                        //                                showingHeart = false
                        //                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        //                                    AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {
                        //                                        AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {
                        //                                            AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {
                        //                                                AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {
                        //                                                    AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {
                        //                                                        showingHeart = true
                        //                                                    }
                        //                                                }
                        //                                            }
                        //                                        }
                        //                                    }
                        //                                }
                        //                            }
                        //
                        //                        //                            complexSuccess()
                        //
                        //                    }
                        //                }
                        //
                        //                //                Button(action: {
                        //                //                    sessionManager.showLogin()
                        //                //                },
                        //                //                       label: {
                        //                //                    Text("Send a Hug back")
                        //                //                        .fontWeight(.thin)
                        //                //                        .frame(width: 250, height: 30)
                        //                //                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        //                //                        .font(.system(size: 30))
                        //                //                        .background(ColorManager.purple1)
                        //                //                        .cornerRadius(15)
                        //                //                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        //                //                        .opacity(0.7)
                        //                //                })
                        //
                        //                Spacer()
                        //                    .frame(height: 300)
                        //            }
                        //        }
                        //    }
                        //
                        //
                        //}
                        //
                        //
                        //
                        //        }
                        //    }
                        //}
                        
                        
                    }
                }
            }
                    }
                }
            }
