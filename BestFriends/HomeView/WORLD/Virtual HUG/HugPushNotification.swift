//
//  HugPushNotification.swift
//  BestFriends
//
//  Created by Social Tech on 10/25/22.
//



import Foundation
import SwiftUI


struct HugPushNotification: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    
    @State private var selectedFriends: [String] = []
    @State private var colors: [Color] = [ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3]
    @State private var shareColor = ColorManager.purple5
    @State private var showingAlert = false
    
    var body: some View {
        
        ZStack {
            
//            ColorManager.purple1
//                .ignoresSafeArea()
//                .onAppear()
//
//
////            Image("purpleBackground")
////                .resizable()
////                .ignoresSafeArea()
////                .scaledToFill()
////
//            Image("ballons")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
            
            
            
            
            ColorManager .purple1
                .ignoresSafeArea()
            


            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)

            
            VStack{
//
//                Text("Who are you sending ")
//                    .font(.system(size: 20))
//
//                    .fontWeight(.ultraLight)
//                    .foregroundColor(ColorManager .grey3)
//                    .multilineTextAlignment(.center)
                
                HStack {
                    VStack {
                        
                        Text("Send")
                            .font(.system(size: 35, weight: .ultraLight))
                            .foregroundColor(ColorManager .purple7)
                        
                        
                        Text("HUG to")
                            .font(.system(size: 35, weight: .ultraLight))
                            .foregroundColor(ColorManager .purple7)
                        
                    }
                    
                    Image("BalloonGuy300")
                        .resizable()
                        .frame(width: 200, height: 200)
                }
             
         
                VStack {



                  


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
                        }
                        
                        Spacer()
                            .frame(height: 30)
                        
                        
                        Button(action: {
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
                                .alert("Your HUG was sent - thanks for paying attention to your friends!", isPresented: $showingAlert) {
                                    Button("OK", role: .cancel) { }
                                }
                        })
                        
                        VStack {
                            
                            Spacer()
                                .frame(height: 30)
                   
                        }
                        
                        Text("bringing a friend all the joy of ...")
                            .font(.system(size: 15))
                            .fontWeight(.ultraLight)
                            .foregroundColor(ColorManager .grey3)
                            .multilineTextAlignment(.center)


                        Text("kicking through Autumn's leaves")
                            .font(.system(size: 15))
                            .fontWeight(.ultraLight)
                            .foregroundColor(ColorManager .grey3)
                            .multilineTextAlignment(.center)
                        }
                    
                    
                    
                
                    Spacer()
                        .frame(height: 100)
                    
                }
                
            }
            
        }
        
    }
    
    
    func shareButtonTapped() {
        if selectedFriends.count == 0 { return }
        for id in selectedFriends {
            for f in friends {
                if f.id == id {
                    RestApi.instance.sendPushNotification(title: "BestFriends World FriendGroup", body: "\(user.firstName) sent you a HUG. To get your hug, tap friend's planet on Home pg, then tap [Friend sent HUG] from dropdown.", APNToken: f.APNToken)
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
