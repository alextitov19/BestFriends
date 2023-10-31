//
//  HugPushNotification2.swift
//  BestFriends
//
//  Created by Social Tech on 12/5/22.
//



import Foundation
import SwiftUI
import AVKit

struct HugPushNotification2: View {
    
    
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    let groups: [Group]
    
    
    
    var body: some View {
        
        ZStack {
  
            
            ColorManager.purple7
//                .opacity(0.6)
                .ignoresSafeArea()
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            
            VStack {
        
                
                NavigationLink( destination:  HugPreload(user: user, friends: friends, groups: groups, atmosphere: atmosphere, friendAtmospheres: friendAtmospheres),
                                label: {
                    Text("Send CareHearts")
                        .fontWeight(.thin)
                        .frame(width: 310, height: 50)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 30))
                        .background(Color .orange)
//                                    .opacity(0.5)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                })
                
                
   
               
                Spacer ()
                    .frame(height: 75)

                    ZStack {
                        
                        VStack {
                            
                                         
                                     NavigationLink( destination: AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                                     label: {
                                         Text("Request Care Hearts")
                                             .fontWeight(.thin)
                                             .frame(width: 310, height: 50)
                                             .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                             .font(.system(size: 30))
                                             .background(Color .purple)
                 //                            .opacity(0.5)
                                             .cornerRadius(15)
                                             .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                     })
                     
//                            Text("But, not quite ready to talk about it yet")
//                                .font(.system(size: 17))
//                                .italic()
//                                .fontWeight(.light)
//                                .multilineTextAlignment(.center)
//                                .foregroundColor(ColorManager .grey2)
                            
                            
                            Spacer ()
                                .frame(height: 50)
                        }
                    }
                }
                
            }
        }
        
    }


// **********************************************

//*******************************


//
//
//import Foundation
//import SwiftUI
//
//
//struct HugPushNotification2: View {
//
//    @EnvironmentObject var sessionManager: SessionManager
//
//    let user: User
//    let friends: [User]
//
//    @State private var selectedFriends: [String] = []
//    @State private var colors: [Color] = [ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3]
//    @State private var shareColor = ColorManager.purple5
//    @State private var showingAlert = false
//
//    var body: some View {
//
//        ZStack {
//
////            ColorManager.purple1
////                .ignoresSafeArea()
////                .onAppear()
////
////            Image("in bushes")
////                .resizable()
////                .ignoresSafeArea()
////                .scaledToFill()
//            ColorManager .purple1
//                .ignoresSafeArea()
//
//
//
//            AdPlayerView(name: "sky2")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//
//
//            VStack{
//
//
//                HStack {
//                    VStack {
//
//                        Text("Wow,")
//                            .font(.system(size: 35, weight: .ultraLight))
//                            .foregroundColor(ColorManager .purple7)
//
//
//                        Text("I could")
//                            .font(.system(size: 35, weight: .ultraLight))
//                            .foregroundColor(ColorManager .purple7)
//
//                    }
//
//                    Image("Penguin Sticker 18")
//                        .resizable()
//                        .frame(width: 200, height: 200)
//                }
//
//
//                    VStack {
//
////
////                        Text("I really need a HUG")
////                            .font(.system(size: 30))
////                            .fontWeight(.ultraLight)
////                            .foregroundColor(ColorManager .grey3)
////                            .multilineTextAlignment(.center)
//
//                        Text("really use a Hug from my friends today!")
//                            .font(.system(size: 20))
//                            .fontWeight(.ultraLight)
//                            .foregroundColor(ColorManager .grey3)
//                            .multilineTextAlignment(.center)
//                    }
//
//
//
//                        Spacer()
//                            .frame(height: 60)
//
//                        VStack {
////
////                            Text("Hang in there")
////                                .font(.system(size: 35, weight: .ultraLight))
////                                .foregroundColor(ColorManager .purple7)
////
////                        Text("we're on it!")
////                            .font(.system(size: 35, weight: .ultraLight))
////                            .foregroundColor(ColorManager .purple7)
////
//                        }
//
//
//
//                VStack {
//
//
//                    VStack {
//
//                        HStack {
//
////                            Text("select >")
////                                .fontWeight(.thin)
////                                .frame(width: 100, height: 30)
////                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
////                                .font(.system(size: 20))
////                                .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
////                                .cornerRadius(25)
////                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                            //                                })
//
//                            if friends.count > 0 {
//                                RectView(user: user, friend: friends[0], color: colors[0])
//                                    .onTapGesture(perform: {
//                                        if selectedFriends.contains(friends[0].id) {
//                                            selectedFriends = selectedFriends.filter { $0 != friends[0].id }
//                                            colors[0] = ColorManager.purple3
//                                        } else {
//                                            selectedFriends.append(friends[0].id)
//                                            colors[0] = ColorManager.purple5
//                                        }
//                                        print(selectedFriends)
//                                    })
//
//                            }
//
//                            if friends.count > 1 {
//                                RectView(user: user, friend: friends[1], color: colors[1])
//                                    .onTapGesture(perform: {
//                                        if selectedFriends.contains(friends[1].id) {
//                                            selectedFriends = selectedFriends.filter { $0 != friends[1].id }
//                                            colors[1] = ColorManager.purple3
//                                        } else {
//                                            selectedFriends.append(friends[1].id)
//                                            colors[1] = ColorManager.purple5
//                                        }
//                                        print(selectedFriends)
//                                    })
//
//                            }
//                        }
//
//                        Spacer()
//                            .frame(height: 15)
//                        HStack {
//                            if friends.count > 2 {
//                                RectView(user: user, friend: friends[2], color: colors[2])
//                                    .onTapGesture(perform: {
//                                        if selectedFriends.contains(friends[2].id) {
//                                            selectedFriends = selectedFriends.filter { $0 != friends[2].id }
//                                            colors[2] = ColorManager.purple3
//                                        } else {
//                                            selectedFriends.append(friends[2].id)
//                                            colors[2] = ColorManager.purple5
//                                        }
//                                        print(selectedFriends)
//                                    })
//                            }
//
//                            if friends.count > 3 {
//                                RectView(user: user, friend: friends[3], color: colors[3])
//                                    .onTapGesture(perform: {
//                                        if selectedFriends.contains(friends[3].id) {
//                                            selectedFriends = selectedFriends.filter { $0 != friends[3].id }
//                                            colors[3] = ColorManager.purple3
//                                        } else {
//                                            selectedFriends.append(friends[3].id)
//                                            colors[3] = ColorManager.purple5
//                                        }
//                                        print(selectedFriends)
//                                    })
//
//                            }
//
//                            if friends.count > 4 {
//                                RectView(user: user, friend: friends[4], color: colors[4])
//                                    .onTapGesture(perform: {
//                                        if selectedFriends.contains(friends[4].id) {
//                                            selectedFriends = selectedFriends.filter { $0 != friends[4].id }
//                                            colors[4] = ColorManager.purple3
//                                        } else {
//                                            selectedFriends.append(friends[4].id)
//                                            colors[4] = ColorManager.purple5
//                                        }
//                                        print(selectedFriends)
//                                    })
//
//                            }
//                        }
//
//                        Spacer()
//                            .frame(height: 20)
//
//
//                        Button(action: {
//                            shareButtonTapped()
//                        },
//                               label: {
//                            Text("SHARE")
//                                .fontWeight(.thin)
//                                .frame(width: 100, height: 30)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .font(.system(size: 25))
//                                .background(shareColor)
//                                .cornerRadius(15)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                                .alert("Your HUG request was sent at the speed of light. \n\nHang in there - we're on it.", isPresented: $showingAlert) {
//                                    Button("OK", role: .cancel) { }
//                                }
//                        })
//
//                        VStack {
//                            Spacer()
//                                .frame(height: 20)
////
////                            Text("Feel safety")
////                                .font(.system(size: 15))
////                                .fontWeight(.ultraLight)
////                                .foregroundColor(ColorManager .grey3)
////                                .multilineTextAlignment(.center)
////
////                            Text("in this deafening silence")
////                                .font(.system(size: 15))
////                                .fontWeight(.ultraLight)
////                                .foregroundColor(ColorManager .grey3)
////                                .multilineTextAlignment(.center)
//
//                            Spacer()
//                                .frame(height: 80)
//
//                        }
//
//
////                        Button(action: {
////                            sessionManager.showLogin()
////                        },
////                            label: {
////                                Text("Home")
////                                    .fontWeight(.thin)
////                                    .frame(width: 100, height: 30)
////                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
////                                    .font(.system(size: 25))
////                                    .background(ColorManager.purple3)
////                                    .cornerRadius(15)
////                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
////                            })
//
//                        }
//
//
//
//                }
//
//            }
//
//        }
//
//    }
//
//
//    func shareButtonTapped() {
//        if selectedFriends.count == 0 { return }
//        for id in selectedFriends {
//            for f in friends {
//                if f.id == id {
//                    RestApi.instance.sendPushNotification(title: "BestFriends", body: "\(user.firstName) could really use a HUG from you!", APNToken: f.APNToken)
//                }
//            }
//        }
//        shareColor = ColorManager.darkGrey
//        showingAlert = true
//    }
//
//    struct RectView: View {
//        let user: User
//        let friend: User
//        let color: Color
//
//        var body: some View {
//            Text(friend.firstName + " " + String(friend.lastName.first!))
//                .fontWeight(.bold)
//                .frame(width: 90, height: 90)
//                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                .font(.system(size: 8))
//                .background(color)
//                .cornerRadius(75)
//                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//        }
//    }
//}
