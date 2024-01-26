//
//  RRMissYou.swift
//  BestFriends
//
//  Created by Social Tech on 1/8/24.
//


import Foundation
import SwiftUI
import ConfettiSwiftUI
import AVKit

struct RRMissYou: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    
    @State private var selectedFriends: [String] = []
    @State private var colors: [Color] = [ColorManager.grey2, ColorManager.grey2, ColorManager.grey2, ColorManager.grey2, ColorManager.grey2]
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
            
            if shareTapped {
         
                AdPlayerView(name: "dramaLights")
                    .opacity(0.5)
                    .ignoresSafeArea()
                    .blendMode(.screen)
                
                AdPlayerView(name: "InnerStellar")
                              .ignoresSafeArea()
                              .blendMode(.screen)
                              .opacity(0.0)
                
            } else {
                
                
                ColorManager .purple3
                    .opacity(0.4)
                    .ignoresSafeArea()
                
                AdPlayerView(name: "sky2")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                    .opacity(0.5)
              
                
                AdPlayerView(name: "missingYou3")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                    .opacity(0.3)
                
                AdPlayerView(name: "InnerStellar3")
                              .ignoresSafeArea()
                              .blendMode(.screen)
                              .opacity(0.0)
                
            }
            
            
            
            VStack {
                
                
                VStack{
                    
                    HStack {
                        VStack {
                            
                            
                            ZStack {
                                
                                Image(systemName: "cube.fill")
                                    .resizable()
                                    .foregroundColor(Color.purple)
                                    .frame(width: 250, height: 200)
                                    .shadow(color: ColorManager .purple3, radius: 65, x: 30, y: 50)
                                    .opacity(0.5)
                                
                                VStack {
                                    
                                    Text("just wanted to say,")
                                        .font(.system(size: 23, weight: .light))
                                        .italic()
                                        .foregroundColor(ColorManager .grey1)
                                        .opacity(0.5)
                                    
                                    Text("I'm missing you")
                                        .font(.system(size: 33, weight: .light))
                                        .foregroundColor(ColorManager .grey1)
                                        .opacity(0.5)
                                    
                                    //                                    Text("light as butterfly wings")
                                    //                                        .font(.system(size: 20, weight: .light))
                                    //                                        .foregroundColor(ColorManager .grey1)
                                    //                                        .opacity(0.5)
                                }
                            }
                        }
                    }
                }
                
                
                VStack {
                    
                    HStack {
                        
                        
                        ZStack {
                            
                            Image(systemName: "heart.fill")
                                .resizable()
                                .foregroundColor(Color.purple)
                                .frame(width: 130, height: 85)
                                .shadow(color: ColorManager .purple3, radius: 65, x: 30, y: 50)
                                .opacity(0.5)
                            
                            NavigationLink(
                                destination:  PhotoPopView(user: user, friends: friends),
                                label: {
                                    
                                    Image("IconPhotoNew")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 70, height: 70)
//                                        .foregroundColor(Color.purple)
//                                        .glow(color: Color.white, radius: 0.3)
//                                        .shadow(color: .white, radius: 1, x: 3, y: -0.5)
                                        .opacity(0.95)
                                    
                                })
                            
                            Spacer ()
                                .frame(width: 100)
                            
                            Image(systemName: "heart.fill")
                                .resizable()
                                .foregroundColor(Color.purple)
                                .frame(width: 0, height: 0)
                                .shadow(color: ColorManager .purple3, radius: 65, x: 30, y: 50)
                                .opacity(0.0)
                            
                            
                            
                        }
                    }
                    
      
                  
                    Text("(say thanks)")
                                            .font(.system(size: 15))
                                            .italic()
                                            .foregroundColor(Color.white)
                                            .fontWeight(.light)
                                            .multilineTextAlignment(.center)
                    
                    Spacer()
                        .frame(height: 20)
                    
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
                                        colors[0] = ColorManager.grey2
                                    } else {
                                        selectedFriends.append(friends[0].id)
                                        colors[0] = ColorManager.grey3
                                    }
                                    print(selectedFriends)
                                })
                            
                        }
                        
                        if friends.count > 1 {
                            RectView(user: user, friend: friends[1], color: colors[1])
                                .onTapGesture(perform: {
                                    if selectedFriends.contains(friends[1].id) {
                                        selectedFriends = selectedFriends.filter { $0 != friends[1].id }
                                        colors[1] = ColorManager.grey2
                                    } else {
                                        selectedFriends.append(friends[1].id)
                                        colors[1] = ColorManager.grey3
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
                                        colors[2] = ColorManager.grey2
                                    } else {
                                        selectedFriends.append(friends[2].id)
                                        colors[2] = ColorManager.grey3
                                    }
                                    print(selectedFriends)
                                })
                        }
                        
                        if friends.count > 3 {
                            RectView(user: user, friend: friends[3], color: colors[3])
                                .onTapGesture(perform: {
                                    if selectedFriends.contains(friends[3].id) {
                                        selectedFriends = selectedFriends.filter { $0 != friends[3].id }
                                        colors[3] = ColorManager.grey2
                                    } else {
                                        selectedFriends.append(friends[3].id)
                                        colors[3] = ColorManager.grey3
                                    }
                                    print(selectedFriends)
                                })
                            
                        }
                        
                        if friends.count > 4 {
                            RectView(user: user, friend: friends[4], color: colors[4])
                                .onTapGesture(perform: {
                                    if selectedFriends.contains(friends[4].id) {
                                        selectedFriends = selectedFriends.filter { $0 != friends[4].id }
                                        colors[4] = ColorManager.grey2
                                    } else {
                                        selectedFriends.append(friends[4].id)
                                        colors[4] = ColorManager.grey3
                                    }
                                    print(selectedFriends)
                                })
                            
                        }
                    }
                    
                    
                    
                    Spacer()
                        .frame(height: 7)
                    
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
                            .alert("We let them know you're missing them.", isPresented: $showingAlert) {
                                Button("OK", role: .cancel) { }
                                
                            }
                    })
                    
                    VStack {
                        
                        Spacer()
                            .frame(height: 20)
                        
                        NavigationLink( destination:  NEWSFeedPergion(user: user, friends: friends),
                                        label: {
                            Text("Say it back")
                                .fontWeight(.bold)
                                .frame(width: 200, height: 30)
                                .foregroundColor(Color.black)
                                .font(.system(size: 16))
                                .background(Color.cyan)
                                .glow(color: ColorManager.purple1, radius: 1)
                                .shadow(color: .white, radius: 3, x: -4, y: 4)
                                .opacity(0.9)
                                .cornerRadius(15)
                                .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                        })
                    }
                        
                        
                    VStack {
                        
                        Spacer()
                            .frame(height: 30)
                        
                        Button(action: {
                            sessionManager.showLogin()
                        },
                               label: {
                            Image("home-alt2")
                                .frame(width: 50, height: 25)
                                .foregroundColor(.white)
                                .font(.system(size: 20))
                                .background(ColorManager .grey3)
                                .cornerRadius(15)
                                .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                                .opacity(0.70)
                            
                        })
                        
                        Spacer()
                            .frame(height: 50)
     
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
                    RestApi.instance.sendPushNotification(title: "BestFriends", body: "\(user.firstName) is missing you, too!", APNToken: f.APNToken)
                    
                    //MARK: The code below creates an in-app notification for your friend (f.id)
                    //MARK: DO NOT CHANGE THE TEXT OF THE NOTIFICATION, otherwise the code to take the user to a diffrent page will not work. Once you set it, do not change it.
                    RestApi.instance.createInAppNotification(ian: InAppNotification(user: f.id, sender: user.id, text: "is missing you!", createdOn: Int64(Date().timeIntervalSince1970))).then({ response in
                        print("Create a missing you notification response code: ", response)
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
                .frame(width: 80, height: 80)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .font(.system(size: 8))
                .background(color)
                .cornerRadius(75)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
        }
    }
}
        
        
    


