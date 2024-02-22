//
//  SaySomethingNice2.swift
//  BestFriends
//
//  Created by Social Tech on 8/29/22.
//



import Foundation
import SwiftUI


struct SaySomethingNice2: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    

    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
//    let groups: [Group]
    
    @State private var selectedFriends: [String] = []
    @State private var colors: [Color] = [ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3]
    @State private var shareColor = ColorManager.purple5
    @State private var showingAlert = false
    
    var body: some View {
        
        ZStack {
            
//            ColorManager.grey4
//                .ignoresSafeArea()
            
             Image("purpleBackground")
                 .resizable()
                 .scaledToFill()
                 .ignoresSafeArea()
          
             Image("girlwalking")
                 .frame(width: 320, height: 20)
            
            
            VStack{
                
                VStack {
                    
             
//
//                        Text("Who are you")
//                            .font(.system(size: 20, weight: .ultraLight))
//                            .foregroundColor(Color.white)
//                        Text("sending message to?")
//                            .font(.system(size: 20, weight: .ultraLight))
//                            .foregroundColor(Color.white)
                        
                        
                        VStack {
                            
                            Spacer()
                                .frame(height: 130)
                            
                            
                            HStack {
                                
                                Text("who sending to >")
                                    .fontWeight(.thin)
                                    .frame(width: 120, height: 30)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 13))
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
                            
                            
                            
                            
                            
                            
                            
                            VStack {
                                
                                Spacer()
                                    .frame(height: 30)
                                
                                Text("Be part of making")
                                    .font(.system(size: 20))
                                    .italic()
                                    .foregroundColor(.white)
                                    .fontWeight(.light)
                                    .multilineTextAlignment(.center)

                                Text("social media less negative")
                                    .font(.system(size: 20))
                                    .italic()
                                    .foregroundColor(.white)
                                    .fontWeight(.light)
                                    .multilineTextAlignment(.center)
                                
                                Spacer()
                                    .frame(height: 30)
                                
                                
                                                    Text("Say Something")
                                                        .font(.system(size: 27))
                                
                                                        .foregroundColor(.white)
                                                        .fontWeight(.light)
                                                        .multilineTextAlignment(.center)
                                
                                                    Text("'Nice'")
                                                        .font(.system(size: 45))
                                
                                                        .foregroundColor(.white)
                                                        .fontWeight(.light)
                                                        .multilineTextAlignment(.center)
                                
                            
                                
                                
                                Spacer()
                                    .frame(height: 30)
                                
                            }
                            
                            
                                                    Button(action: {
                                                        sessionManager.showLogin()
                                                    },
                                                        label: {
                                                            Text("Send 'Nice' Message")
                                                                .fontWeight(.thin)
                                                                .frame(width: 310, height: 30)
                                                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                                                .font(.system(size: 25))
                                                                .background(ColorManager.purple3)
                                                                .cornerRadius(15)
                                                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                                        })
                            
                        }
                        
                        
                    Spacer()
                        .frame(height: 30)
                    
                    NavigationLink(
                       destination: BestFriendMessages(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres),
                       label: {
                           Text("See received 'Nice' messages")
                               .fontWeight(.thin)
                               .frame(width: 320, height: 40)
                               .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                               .font(.system(size: 25))
                               .background(ColorManager.pmbc_green)
                               .cornerRadius(15)
                               .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                       })
                        
                        Spacer()
                            .frame(height: 150)
                        
                    }
                    
                }
                
            }
            
        }
        
        
        func shareButtonTapped() {
            if selectedFriends.count == 0 { return }
            for id in selectedFriends {
                for f in friends {
                    if f.id == id {
                        RestApi.instance.sendPushNotification(title: "BestFriends World", body: "\(user.firstName) sent you a 'Nice' World message in Chat", APNToken: f.APNToken)
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
        
        
        
    }


