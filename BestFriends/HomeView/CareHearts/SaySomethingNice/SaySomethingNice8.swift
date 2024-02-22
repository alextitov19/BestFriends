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
                
                ColorManager.purple2
                    .ignoresSafeArea()
                    .onAppear()
                
//                Image("purpleBackground")
//                    .resizable()
//                    .ignoresSafeArea()
//                    .scaledToFill()
//                    .ignoresSafeArea()
                
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
                
              
                
                HStack {
                    
                    VStack {
//                    Text("Saying something")
//                        .font(.system(size: 30))
//                        .fontWeight(.ultraLight)
//                        .foregroundColor(ColorManager .grey3)
//                        .multilineTextAlignment(.center)
                        
                        Text("''Be gentle")
                            .font(.system(size: 30))
                            .fontWeight(.ultraLight)
                            .foregroundColor(ColorManager .grey3)
                            .multilineTextAlignment(.center)
                
                        Text("with each other''")
                            .font(.system(size: 30))
                            .fontWeight(.ultraLight)
                            .foregroundColor(ColorManager .grey3)
                            .multilineTextAlignment(.center)
                        
                        
                        Text("Ariana Grande")
                            .font(.system(size: 23))
                            .italic()
                            .fontWeight(.ultraLight)
                            .foregroundColor(ColorManager .grey3)
                            .multilineTextAlignment(.center)
                        
                    }
                    Image("girlwalking250")
                        .resizable()
                        .frame(width: 150, height: 150)
                    
                }
                
                Spacer()
                    .frame(height: 15)
                
                VStack {
                    // MARK: End of feeling buttons
                    Text("''I make music for ears, \nnot eyes''")
                        .font(.system(size: 29))
                        .fontWeight(.ultraLight)
                        .foregroundColor(ColorManager .grey3)
                        .multilineTextAlignment(.center)
                    
                    Text("''not eyes''")
                        .font(.system(size: 29))
                        .fontWeight(.ultraLight)
                        .foregroundColor(ColorManager .grey3)
                        .multilineTextAlignment(.center)
                    
                    Text("Adele")
                        .font(.system(size: 23))
                        .italic()
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
                            .foregroundColor(ColorManager .grey4)
                            .opacity(0.5)
                        
                        TextField("Say something nice to a friend!", text: $summary)
                            .font(.system(size: 20))
                            .foregroundColor(ColorManager.grey4)
                            .padding(.horizontal, 50)
                            .onReceive(Just(summary)) { _ in limitText(80) }
                        
                    }
                    
//                    Text("to a friend right NOW!")
//                        .font(.system(size: 20))
//                        .fontWeight(.ultraLight)
//                        .foregroundColor(ColorManager .grey3)
//                        .multilineTextAlignment(.center)
//
                    
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
                                .alert("You just put a smile on your friend's face. \n\nEveryone enjoys knowing their friends care about them. \n\nLike that feeling of seeing two famous artists singing a duet. \n\nIt so much more than just the words.", isPresented: $showingAlert) {
                                    Button("OK", role: .cancel) { }
//                                        .opacity(0.1)
                                }
                        })
                        
                        .confettiCannon(counter: $counter)
                        
                        
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
                    RestApi.instance.sendPushNotification(title: "BestFriends World FriendGroups", body: "\(user.firstName) sent you 'Nice' message. Take a moment and send one back!", APNToken: f.APNToken)
                    
                    //MARK: The code below creates an in-app notification for your friend (f.id)
                    //MARK: DO NOT CHANGE THE TEXT OF THE NOTIFICATION, otherwise the code to take the user to a diffrent page will not work. Once you set it, do not change it.
                    RestApi.instance.createInAppNotification(ian: InAppNotification(user: f.id, sender: user.id, text: "You just got a nice message.", createdOn: Int64(Date().timeIntervalSince1970))).then({ response in
                        print("Create a nice message notification response code: ", response)
                    })
                    
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








