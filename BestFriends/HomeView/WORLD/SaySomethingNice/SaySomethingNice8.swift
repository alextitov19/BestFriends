//
//  SaySomethingNice8.swift
//  BestFriends
//
//  Created by Social Tech on 12/6/22.
//

import Foundation
import ConfettiSwiftUI
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
    @State private var colors: [Color] = [ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3]
    @State private var shareColor = ColorManager.purple5
    @State private var showingAlert = false
    
    @State private var counter = 0
 
    @State private var shareTapped: Bool = false
    
    
    
    
//    @State private var customMessage = "Custom Message"
//
//    @State private var noteTapped = false
//
  
    var body: some View {
        ZStack {
            
            
            if shareTapped {
                Image("purpleBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                AdPlayerView(name: "sky2")
                    .ignoresSafeArea()
                    .blendMode(.screen)
            } else {
                AdPlayerView(name: "")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                
                ColorManager.purple1
                    .ignoresSafeArea()
            }
            
//            ColorManager .purple1
//                .ignoresSafeArea()
//         
//            AdPlayerView(name: "sky2")
//                .ignoresSafeArea()
//                .blendMode(.screen)
            
            
            
            
            VStack {
                
                Text("Join people around the world")
                    .font(.system(size: 20))
                
                    .fontWeight(.ultraLight)
                    .foregroundColor(ColorManager .grey3)
                    .multilineTextAlignment(.center)
                
                HStack {
                    
                    
                    Text("Saying \nsomething \n'Nice'")
                        .font(.system(size: 30))
                        .fontWeight(.ultraLight)
                        .foregroundColor(ColorManager .grey3)
                        .multilineTextAlignment(.center)
                    
                    Image("girlwalking250")
                        .resizable()
                        .frame(width: 150, height: 150)
                    
                }
                
                
                
                VStack {
                    // MARK: End of feeling buttons
                    
                    Text("to a friend right NOW!")
                        .font(.system(size: 20))
                        .fontWeight(.ultraLight)
                        .foregroundColor(ColorManager .grey3)
                        .multilineTextAlignment(.center)
                    
                    HStack {
                        
                    }
                    
                    Spacer()
                        .frame(height: 25)
                    
                    ZStack {
                        Rectangle()
                            .frame(width:335, height: 50)
                            .cornerRadius(15)
                            .foregroundColor(ColorManager .grey3)
                            .opacity(0.5)
                        
                        TextField("Say it here (max 35 characters)", text: $summary)
                            .font(.system(size: 20))
                            .foregroundColor(ColorManager.purple4)
                            .padding(.horizontal, 50)
                            .onReceive(Just(summary)) { _ in limitText(80) }
                        
                    }
                    
                    
                    HStack {
                        
                    }
                    
                    
                    VStack {
                        
                        Spacer()
                            .frame(height: 10)
                        
                        //
                        HStack {
                            
                            //                                    Text("select >")
                            //                                        .fontWeight(.thin)
                            //                                        .frame(width: 100, height: 30)
                            //                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            //                                        .font(.system(size: 20))
                            //                                        .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
                            //                                        .cornerRadius(25)
                            //                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            //                                    //                                })
                            
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
                        
                        
                        
                        
                        
//                        Spacer()
//                            .frame(height: 20)
//
//
//                        Button(action: {
//
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
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                .alert("You just put a smile on your friend's face. \n\nYou're a special friend bringing positivity to life.", isPresented: $showingAlert) {
                                    Button("OK", role: .cancel) { }
//                                        .opacity(0.1)
                                }
                        })
                        
                        .confettiCannon(counter: $counter)
                        
                        
                        
                        Spacer()
                            .frame(height: 30)
                        
                        Text("Receiving a special message is like")
                            .font(.system(size: 17))
                        
                            .fontWeight(.ultraLight)
                            .foregroundColor(ColorManager .grey3)
                            .multilineTextAlignment(.center)
                        
                        Text("the look on a girl's face,")
                            .font(.system(size: 17))
                        
                            .fontWeight(.ultraLight)
                            .foregroundColor(ColorManager .grey3)
                            .multilineTextAlignment(.center)
                        
                        Text("holding unexpected flowers")
                            .font(.system(size: 17))
                        
                            .fontWeight(.ultraLight)
                            .foregroundColor(ColorManager .grey3)
                            .multilineTextAlignment(.center)
                    }
                    
                }
                
                Spacer()
                    .frame(height: 70)
                
            }
        }
    }
    
    func shareButtonTapped() {
        sendMessage()
        
        if selectedFriends.count == 0 { return }
        for id in selectedFriends {
            for f in friends {
                if f.id == id {
                    RestApi.instance.sendPushNotification(title: "BestFriends World FriendGroups", body: "\(user.firstName) sent you 'Nice' message. Take a moment and send one back! Tap friend's planet on Home pg, then tap [Friend said something 'Nice'] from dropdown.", APNToken: f.APNToken)
                }
            }
        }
        shareColor = ColorManager.darkGrey
        showingAlert = true
    }
    
    private func sendMessage() {
        for id in selectedFriends {
            for f in friends {
                if f.id == id {
                    RestApi.instance.createNiceMessage(message: summary, receiver: id).then({ code in
                        print("Send nice message status: ", code)
                    })
                }
            }
        }
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
                .frame(width: 90, height: 90)
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








