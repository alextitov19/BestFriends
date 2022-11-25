//
//  HurtFeelings4.swift
//  BestFriends
//
//  Created by Social Tech on 7/9/22.
//


import Foundation
import Combine
import SwiftUI
import AVKit


struct HurtFeelings4: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    let groups: [Group]
    
    @State private var customMessage = "Custom Message"
    @State private var colorChangeTap: String = ""
    @State private var noteTapped = false
    @State private var selectedFriends: [String] = []
    @State private var colors: [Color] = [ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3]
    @State private var shareColor = ColorManager.purple5
    @State private var showingAlert = false
    
    
    var body: some View {
        ZStack {
            ColorManager.grey4
                .ignoresSafeArea()
                .onAppear()
            
            
            VStack {
                
                
                Text("Ok, your friend")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Text("hurt your feelings.")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 25)
                
                Text("Yep, it's been Bugging \nyou all week")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
           
                    
                    Spacer()
                        .frame(height: 25)
               
                         
                Text("Just a little nervious \nto say something")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 15)
                   
                HStack {
                        
                        //                MARK: The [All] button is not activated. When tap nothing comes up in the bottom output screen
                        if friends.count > 1 {
                            Button(action: {
                                
                            },
                                   label: {
                                Text("select >")
                                    .fontWeight(.thin)
                                //                                .fontWeight(.bold)
                                    .frame(width: 100, height: 30)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 20))
                                    .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
                                    .cornerRadius(25)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            })
                        }
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
                    
                    
                    
                    VStack {
                        
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
                                .alert("Push Notifications sent successfully", isPresented: $showingAlert) {
                                    Button("OK", role: .cancel) { }
                                }
                            
                        })
                       
                        
                        Spacer()
                            .frame(height: 15)
                        
                        Text("tap 'share' \nwe send notification saying")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                        
                        Text("'you hurt my feelings'")
                            .font(.system(size: 27))
                            .foregroundColor(.green)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                        
                        
                        Spacer ()
                            .frame(height: 100)
                        
//
//                        Text("")
//                            .font(.system(size: 27))
//                            .foregroundColor(.green)
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
                        
                        Button(action: {
                            sessionManager.showLogin()
                        },
                               label: {
                            Text("Chat")
                                .fontWeight(.thin)
                                .frame(width: 100, height: 30)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 25))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                        
                        
                        
                        
                        Text("You got this")
                            .font(.system(size: 30))
                            .fontWeight(.regular)
                            .foregroundColor(Color .white)
                        
                        
                        
                        
                        Spacer()
                            .frame(height: 100)
                    }
                 
                }
                
                
            }
            
            
        }
        
        func limitText(_ upper: Int) {
            if customMessage.count > upper {
                customMessage = String(customMessage.prefix(upper))
            }
        }
        
        func shareButtonTapped() {
            if selectedFriends.count == 0 { return }
            for id in selectedFriends {
                for f in friends {
                    if f.id == id {
                        RestApi.instance.sendPushNotification(title: "BestFriends", body: "\(user.firstName) You hurt my feelings", APNToken: f.APNToken)
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
                    .frame(width: 100, height: 30)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .font(.system(size: 10))
                    .background(color)
                    .cornerRadius(25)
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
            }
        }
        
        
        
        
        func defaultMessageButtonTapped(defaultMessage: String) {
            self.colorChangeTap = defaultMessage
        }
    }
    




