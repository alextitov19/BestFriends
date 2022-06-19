//
//  PlaylistForFriend2.swift
//  BestFriends
//
//  Created by Social Tech on 6/19/22.
//
//
//import Foundation
//import Combine
//import SwiftUI
//
//
//struct PlaylistForFiend2: View {
//    
//    let user: User
//    let atmosphere: Atmosphere
//    let friends: [User]
//    
//    @State private var mood: Int = -1
//    @State private var summary = ""
//    @State private var sharedWith: [String] = []
//    @State private var colorChangeTap: String = ""
//
//    
//    var body: some View {
//        ZStack {
//            ColorManager.purple3
//                .ignoresSafeArea()
//                .onAppear()
//
//            
//            VStack {
//                
//                Text("Send your friend a song to match their mood")
//                    .font(.system(size: 20))
//                    .foregroundColor(Color.white)
//                
//                
//                
//                ZStack {
//                    Rectangle()
//                        .frame(width:400, height: 100)
//                        .cornerRadius(15)
//                        .foregroundColor(Color.gray)
//                        .opacity(0.7)
//                    
//                    TextField("Type song name here", text: $summary)
//                        .font(.system(size: 20))
//                        .foregroundColor(Color.black)
//                        .padding(.horizontal, 20)
//                        .onReceive(Just(summary)) { _ in limitText(40) }
//                    
//                    Rectangle()
//                        .frame(width:400, height: 100)
//                        .cornerRadius(15)
//                        .foregroundColor(Color.gray)
//                        .opacity(0.7)
//                    
//                    TextField("Type song name here", text: $summary)
//                        .font(.system(size: 20))
//                        .foregroundColor(Color.black)
//                        .padding(.horizontal, 20)
//                        .onReceive(Just(summary)) { _ in limitText(40) }
//                    
//                    Rectangle()
//                        .frame(width:400, height: 100)
//                        .cornerRadius(15)
//                        .foregroundColor(Color.gray)
//                        .opacity(0.7)
//                    
//                    TextField("Type song name here", text: $summary)
//                        .font(.system(size: 20))
//                        .foregroundColor(Color.black)
//                        .padding(.horizontal, 20)
//                        .onReceive(Just(summary)) { _ in limitText(40) }
//                    
//                    
//                    }
//                
//                
//                
//                
//                
//                
//                
//                
//                
//                
//                
//                
//                
//                HStack {
//                    if friends.count > 1 {
//                        Button(action: {
//                            
//                        },
//                               label: {
//                            Text("ALL")
//                                .fontWeight(.bold)
//                                .frame(width: 100, height: 30)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .font(.system(size: 15))
//                                .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
//                                .cornerRadius(25)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                        })
//                    }
//                    if friends.count > 0 {
//                        RectView(user: user, friend: friends[0], color: sharedWith.contains(friends[0].id) ? ColorManager.purple3 : ColorManager.purple5)
//                            .onTapGesture(perform: {
//                                if sharedWith.contains(friends[0].id) {
//                                    sharedWith = sharedWith.filter { $0 != friends[0].id }
//                                } else {
//                                    sharedWith.append(friends[0].id)
//                                }
//                                print(sharedWith)
//                            })
//                    }
//                    
//                    if friends.count > 1 {
//                        RectView(user: user, friend: friends[1], color: sharedWith.contains(friends[1].id) ? ColorManager.purple3 : ColorManager.purple5)
//                            .onTapGesture(perform: {
//                                if sharedWith.contains(friends[1].id) {
//                                    sharedWith = sharedWith.filter { $0 != friends[1].id }
//                                } else {
//                                    sharedWith.append(friends[1].id)
//                                }
//                                print(sharedWith)
//                            })
//                    }
//                }
//                
//                HStack {
//                    if friends.count > 2 {
//                        RectView(user: user, friend: friends[2], color: sharedWith.contains(friends[2].id) ? ColorManager.purple3 : ColorManager.purple5)
//                            .onTapGesture(perform: {
//                                if sharedWith.contains(friends[2].id) {
//                                    sharedWith = sharedWith.filter { $0 != friends[2].id }
//                                } else {
//                                    sharedWith.append(friends[2].id)
//                                }
//                                print(sharedWith)
//                            })
//                    }
//                    
//                    if friends.count > 3 {
//                        RectView(user: user, friend: friends[3], color: sharedWith.contains(friends[3].id) ? ColorManager.purple3 : ColorManager.purple5)
//                            .onTapGesture(perform: {
//                                if sharedWith.contains(friends[3].id) {
//                                    sharedWith = sharedWith.filter { $0 != friends[3].id }
//                                } else {
//                                    sharedWith.append(friends[3].id)
//                                }
//                                print(sharedWith)
//                            })
//                    }
//                    
//                    if friends.count > 4 {
//                        RectView(user: user, friend: friends[4], color: sharedWith.contains(friends[4].id) ? ColorManager.purple3 : ColorManager.purple5)
//                            .onTapGesture(perform: {
//                                if sharedWith.contains(friends[4].id) {
//                                    sharedWith = sharedWith.filter { $0 != friends[4].id }
//                                } else {
//                                    sharedWith.append(friends[4].id)
//                                }
//                                print(sharedWith)
//                            })
//                    }
//                }
//                
//                Button(action: {
//                    defaultMessageButtonTapped(defaultMessage: "SHARE")
//                    shareMood()
//                },
//                       label: {
//                    Text("SHARE")
//                        .fontWeight(.thin)
//                        .frame(width: 100, height: 40)
//                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                        .font(.system(size: 30))
//                        
//                        .background(colorChangeTap == "SHARE" ? ColorManager.grey3 : ColorManager.purple3)
//                        
////                            .background(ColorManager.purple3)
//                        .cornerRadius(15)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                })
//                
//                
//                
////                private
//                func limitText(_ upper: Int) {
//                    if summary.count > upper {
//                        summary = String(summary.prefix(upper))
//                    }
//                }
//                
//                
//                
////                private
//               struct RectView: View {
//                    let user: User
//                    let friend: User
//                    let color: Color
//                    
//                    var body: some View {
//                        Text(friend.firstName + " " + String(friend.lastName.first!))
//                            .fontWeight(.bold)
//                            .frame(width: 100, height: 30)
//                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                            .font(.system(size: 10))
//                            .background(color)
//                            .cornerRadius(25)
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                    }
//                   
//                        
//                    
//                }
//                
////                private
//                func defaultMessageButtonTapped(defaultMessage: String) {
//                    self.colorChangeTap = defaultMessage
//            }
//
//                
//                
//                
//                
//            }
//        }
//    }
//}
//            
//     
