//
//  MoodSongPushNote.swift
//  BestFriends
//
//  Created by Social Tech on 11/28/22.
//



import Foundation
import SwiftUI
import AVKit


struct SendSongPushNote: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    
    @State private var selectedFriends: [String] = []
    @State private var colors: [Color] = [ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3]
    @State private var shareColor = ColorManager.purple5
    @State private var showingAlert = false
    
    var body: some View {
        
        ZStack {
            
            ColorManager.purple1
                .ignoresSafeArea()
                .onAppear()
            
            VStack{
                
                VStack {
                    
                    
                    
                    VStack {
                        
                        
                   
                        
                                                NavigationLink(destination:  HomeView(), label: {
                                                    SomethingNiceCircle (color: ColorManager.purple4, friendName: "Hope this \nsong helps!")
                                                })
                        
                                            }
                        
                      
//
//                        Text("Alert Friend via push notification")
//                            .font(.system(size: 20, weight: .thin))
//                            .italic()
//                            .foregroundColor(Color.black)
                        
                    Spacer()
                        .frame(height: 40)
                    
                        VStack {
                            
                            
                            
                            
                            HStack {
                                
//                                Text("select >")
//                                    .fontWeight(.thin)
//                                    .frame(width: 100, height: 30)
//                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                    .font(.system(size: 20))
//                                    .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
//                                    .cornerRadius(25)
//                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
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
                            }
                            
                            Button(action: {
                                shareButtonTapped()
                            },
                                   label: {
                                Text("SHARE")
                                    .fontWeight(.thin)
                                    .frame(width: 100, height: 30)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 30))
                                    .background(shareColor)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    .alert("Your song is on it's way", isPresented: $showingAlert) {
                                        Button("OK", role: .cancel) { }
                                    }
                            })
                            
                            
                            Spacer()
                                .frame(height: 0)
                            
                            
                            
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
                        RestApi.instance.sendPushNotification(title: "BestFriends World", body: "\(user.firstName) here's a song I listen to when my 'Vibe' matches yours - I sent it to Chat. Hope it helps :)", APNToken: f.APNToken)
                    }
                }
            }
            shareColor = ColorManager.darkGrey
            showingAlert = true
        }
        
   
            
            private struct RectView: View {
                let user: User
                let friend: User
                let color: Color
                
                var body: some View {
                    Text(friend.firstName + " " + String(friend.lastName.first!))
                        .fontWeight(.bold)
                        .frame(width: 85, height: 85)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 8))
                        .background(color)
                        .cornerRadius(75)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
            
//
//                    struct RectView: View {
//                        let user: User
//                        let friend: User
//                        let color: Color
                        
//            var body: some View {
//                Text(friend.firstName + " " + String(friend.lastName.first!))
//                    .fontWeight(.bold)
//                    .frame(width: 100, height: 30)
//                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                    .font(.system(size: 10))
//                    .background(color)
//                    .cornerRadius(25)
//                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
            }
        }
        
        
        
    }
    

