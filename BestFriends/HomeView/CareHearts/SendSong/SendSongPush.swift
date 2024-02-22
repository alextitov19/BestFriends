//
//  SendSongPush.swift
//  BestFriends
//
//  Created by Social Tech on 8/28/22.
//




import Foundation
import SwiftUI
import ConfettiSwiftUI
import AVKit

struct SendSongPush: View {
    
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


    
    var body: some View {
        
        ZStack {
      

            
            if shareTapped {
                
                
                
                            ColorManager.purple5
                                .ignoresSafeArea()
                                .onAppear()

                AdPlayerView(name: "dramaLights")
                    .opacity(0.5)
                    .ignoresSafeArea()
                    .blendMode(.screen)
                
            } else {

//                ColorManager.purple7
////                    .opacity(0.5)
//                    .ignoresSafeArea()
//                    .onAppear()
//
//    AdPlayerView(name: "sky2")
//        .ignoresSafeArea()
//        .blendMode(.screen)
                
                Image("CareHeartBalloon 1")
                    .ignoresSafeArea()
                    .scaledToFit()
                    .opacity(0.4)
                
                
            }
            
            VStack{
                
                HStack {
                    VStack {
                   
                        
//
//                        Spacer()
//                            .frame(height: 10)
                        
                        ZStack {
                            
                                Image("KissesHeart")
                                    .resizable()
                                    .frame(width: 400, height: 325)
                                    .opacity(0.15)
                                
                                
                            VStack {
                                
                                Text("new ")
                                    .font(.system(size: 30, weight: .light))
                                    .foregroundColor(ColorManager .grey3)
                               
                                
                                
                                Text("Music")
                                    .font(.system(size: 55, weight: .light))
                                    .foregroundColor(ColorManager .grey2)
                                
                                Text("Send the song in Chat")
                                    .font(.system(size: 17, weight: .ultraLight))
                                    .italic()
                                    .foregroundColor(ColorManager .grey1)
                            }
                        }
                      
                        
                    }
                    

                }
             
         
                VStack {
             

                    Text("Did you just find a new song?")
                                            .font(.system(size: 23))
                
                                            .foregroundColor(ColorManager .grey2)
                                            .fontWeight(.thin)
                                            .multilineTextAlignment(.center)
                    
                    Text("Show it off to a friend")
                                            .font(.system(size: 23))

                                            .foregroundColor(ColorManager .grey2)
                                            .fontWeight(.thin)
                                            .multilineTextAlignment(.center)
                    
                    Spacer()
                        .frame(height: 15)

                    Text("Maybe a friend is having a difficult day,")
                                            .font(.system(size: 23))

                                            .foregroundColor(ColorManager .grey2)
                                            .fontWeight(.thin)
                                            .multilineTextAlignment(.center)
                    Text("Send them that song that helps")
                                            .font(.system(size: 23))

                                            .foregroundColor(ColorManager .grey2)
                                            .fontWeight(.thin)
                                            .multilineTextAlignment(.center)
                    
                    Text("you on bad days")
                                            .font(.system(size: 23))

                                            .foregroundColor(ColorManager .grey2)
                                            .fontWeight(.thin)
                                            .multilineTextAlignment(.center)
                    
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
                                .alert("Your song is on it's way.", isPresented: $showingAlert) {
                                    Button("OK", role: .cancel) { }
                                }
                        })
//                        .confettiCannon(counter: $counter)

                        
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
                            
                            Spacer()
                                .frame(height: 80)
                            
                            
//                            Image("KissesHeart")
//                                .resizable()
//                                .frame(width: 200, height: 150)
//                                .opacity(0.5)
                   
                        }
                        
                     
                        
                        }
                    
//
//
//

                    
                }
                
            }
            
        }
        
    }
    
    
    func shareButtonTapped() {
        if selectedFriends.count == 0 { return }
        for id in selectedFriends {
            for f in friends {
                if f.id == id {
                    RestApi.instance.sendPushNotification(title: "BestFriends", body: "\(user.firstName) sent you a song.", APNToken: f.APNToken)
                    
                    //MARK: The code below creates an in-app notification for your friend (f.id)
                    //MARK: DO NOT CHANGE THE TEXT OF THE NOTIFICATION, otherwise the code to take the user to a diffrent page will not work. Once you set it, do not change it.
                    RestApi.instance.createInAppNotification(ian: InAppNotification(user: f.id, sender: user.id, text: "You got a new song!", createdOn: Int64(Date().timeIntervalSince1970))).then({ response in
                        print("Create a song notification response code: ", response)
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



//
//import Foundation
//import SwiftUI
//import AVKit
//
//
//struct SendSongPush: View {
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
//    @State private var colorChangeTap: String = ""
//    @State private var shareTapped: Bool = false
//
//    @State private var counter = 0
//
//    var body: some View {
//
//        ZStack {
//
//
//
//            if shareTapped {
//
//
//
//                            ColorManager.purple5
//                                .ignoresSafeArea()
//                                .onAppear()
//
//                AdPlayerView(name: "dramaLights")
//                    .opacity(0.5)
//                    .ignoresSafeArea()
//                    .blendMode(.screen)
//
//            } else {
//
//                ColorManager.purple7
////                    .opacity(0.5)
//                    .ignoresSafeArea()
//                    .onAppear()
//
//    AdPlayerView(name: "sky2")
//        .ignoresSafeArea()
//        .blendMode(.screen)
//
//
//            }
//
//
//            VStack{
//
//                VStack {
//
//
//                    Text("Did you just find a new song?")
//                        .font(.system(size: 30, weight: .thin))
//                        .foregroundColor(ColorManager .grey1)
////                        .foregroundColor(ColorManager.purple3)
//
//
//
//                    Spacer()
//                        .frame(height: 20)
//
//
//                    Text("show it off to a friend")
//                        .font(.system(size: 30, weight: .ultraLight))
//                        .foregroundColor(ColorManager .grey1)
////                                                  .foregroundColor(ColorManager.purple3)
//
//                    Spacer()
//                        .frame(height: 20)
//
//
//                    VStack {
//
//       Image(systemName: "heart.fill")
//                        .resizable()
//                        .foregroundColor(.red)
//                        .frame(width: 100, height: 90)
//    //                    .blur(radius: 2)
//
//                        .shadow(color: .blue, radius: 65, x: 30, y: 50)
//                        .opacity(0.85)
//
//                        Text("send \nin \nChat")
//                            .font(.system(size: 35, weight: .ultraLight))
//                            .foregroundColor(Color.black)

//
//                        NavigationLink(destination:  HomeView(), label: {
//                            SomethingNiceCircle (color: ColorManager.purple4, friendName: "send \nto friend \nin Chat")
//                        })
//
//                    }
//
//                    Spacer()
//                        .frame(height: 50)
//
//                    Text("Alert Friend via push notification")
//                        .font(.system(size: 20, weight: .thin))
//                        .italic()
//                        .foregroundColor(ColorManager .grey2)
//
//
//                    VStack {
//
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
//
//
//                        Spacer()
//                            .frame(height: 20)
//
//
//                        Button(action: {
//                            counter += 1
//                            shareTapped = true
//                            shareButtonTapped()
//                        },
//                               label: {
//                            Text("SHARE")
//
//                                .fontWeight(.thin)
//                                .frame(width: 100, height: 30)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .font(.system(size: 25))
//                                .background(shareColor)
//                                .cornerRadius(25)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                                .alert("Remember to post the song in Chat.", isPresented: $showingAlert) {
//                                    Button("OK", role: .cancel) { }
//                                }
//                        })
////                        .confettiCannon(counter: $counter)
//
//
//                        VStack {
//
//
//                                 Button(action: {
//                                     sessionManager.showLogin()
//                                 },
//                                     label: {
//                                     Image("home-alt2")
//                                         .frame(width: 50, height: 25)
//                                         .foregroundColor(.white)
//                                         .font(.system(size: 20))
//                                         .background(Color .black)
//                                         .cornerRadius(15)
//                                         .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
//                                         .opacity(0.70)
//
//                                 })
//
//                            Spacer()
//                                .frame(height: 80)
//
//
////                            Image("KissesHeart")
////                                .resizable()
////                                .frame(width: 200, height: 150)
////                                .opacity(0.5)
//
//                        }
//
//
//
//                        }
//
////
////
////
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
//                    RestApi.instance.sendPushNotification(title: "BestFriends", body: "\(user.firstName) sent you a new song. Check it out in Chat", APNToken: f.APNToken)
//
//                    //MARK: The code below creates an in-app notification for your friend (f.id)
//                    //MARK: DO NOT CHANGE THE TEXT OF THE NOTIFICATION, otherwise the code to take the user to a diffrent page will not work. Once you set it, do not change it.
//                    RestApi.instance.createInAppNotification(ian: InAppNotification(user: f.id, sender: user.id, text: "You got a new song! Check it out in Chat", createdOn: Int64(Date().timeIntervalSince1970))).then({ response in
//                        print("Create a new music notification response code: ", response)
//                    })
//                    RestApi.instance.createStreakLog(friendID: f.id)
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
//
//
//
//}
//
//
//
//
////                        HStack {
////
////                            Text("select >")
////                                .fontWeight(.thin)
////                                .frame(width: 100, height: 30)
////                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
////                                .font(.system(size: 20))
////                                .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
////                                .cornerRadius(25)
////                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
////                            //                                })
////
////                            if friends.count > 0 {
////                                RectView(user: user, friend: friends[0], color: colors[0])
////                                    .onTapGesture(perform: {
////                                        if selectedFriends.contains(friends[0].id) {
////                                            selectedFriends = selectedFriends.filter { $0 != friends[0].id }
////                                            colors[0] = ColorManager.purple3
////                                        } else {
////                                            selectedFriends.append(friends[0].id)
////                                            colors[0] = ColorManager.purple5
////                                        }
////                                        print(selectedFriends)
////                                    })
////
////                            }
////
////                            if friends.count > 1 {
////                                RectView(user: user, friend: friends[1], color: colors[1])
////                                    .onTapGesture(perform: {
////                                        if selectedFriends.contains(friends[1].id) {
////                                            selectedFriends = selectedFriends.filter { $0 != friends[1].id }
////                                            colors[1] = ColorManager.purple3
////                                        } else {
////                                            selectedFriends.append(friends[1].id)
////                                            colors[1] = ColorManager.purple5
////                                        }
////                                        print(selectedFriends)
////                                    })
////
////                            }
////                        }
////
////                        Spacer()
////                            .frame(height: 15)
////                        HStack {
////                            if friends.count > 2 {
////                                RectView(user: user, friend: friends[2], color: colors[2])
////                                    .onTapGesture(perform: {
////                                        if selectedFriends.contains(friends[2].id) {
////                                            selectedFriends = selectedFriends.filter { $0 != friends[2].id }
////                                            colors[2] = ColorManager.purple3
////                                        } else {
////                                            selectedFriends.append(friends[2].id)
////                                            colors[2] = ColorManager.purple5
////                                        }
////                                        print(selectedFriends)
////                                    })
////                            }
////
////                            if friends.count > 3 {
////                                RectView(user: user, friend: friends[3], color: colors[3])
////                                    .onTapGesture(perform: {
////                                        if selectedFriends.contains(friends[3].id) {
////                                            selectedFriends = selectedFriends.filter { $0 != friends[3].id }
////                                            colors[3] = ColorManager.purple3
////                                        } else {
////                                            selectedFriends.append(friends[3].id)
////                                            colors[3] = ColorManager.purple5
////                                        }
////                                        print(selectedFriends)
////                                    })
////
////                            }
////
////                            if friends.count > 4 {
////                                RectView(user: user, friend: friends[4], color: colors[4])
////                                    .onTapGesture(perform: {
////                                        if selectedFriends.contains(friends[4].id) {
////                                            selectedFriends = selectedFriends.filter { $0 != friends[4].id }
////                                            colors[4] = ColorManager.purple3
////                                        } else {
////                                            selectedFriends.append(friends[4].id)
////                                            colors[4] = ColorManager.purple5
////                                        }
////                                        print(selectedFriends)
////                                    })
////
////                            }
////                        }
////
////                        Button(action: {
////                            shareButtonTapped()
////                        },
////                               label: {
////                            Text("SHARE")
////                                .fontWeight(.thin)
////                                .frame(width: 100, height: 40)
////                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
////                                .font(.system(size: 30))
////                                .background(shareColor)
////                                .cornerRadius(15)
////                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
////                                .alert("Your new music is on it way", isPresented: $showingAlert) {
////                                    Button("OK", role: .cancel) { }
////                                }
////                        })
////
//////                        VStack {
//////
//////
//////
//////                            Text("In next version of BestFriends")
//////                                .font(.system(size: 15, weight: .light))
//////                                .foregroundColor(Color.black)
//////
//////                            Text("you'll be able to display the YouTube")
//////                                .font(.system(size: 15, weight: .light))
//////                                .foregroundColor(Color.black)
//////                            Text("video right in Chat")
//////                                .font(.system(size: 15, weight: .light))
//////                                .foregroundColor(Color.black)
//////                        }
//////
////                        Spacer()
////                                                     .frame(height: 100)
////
////                        VStack {
////
//////                             NavigationLink(
//////                                destination: BeSinger(user: user),
//////                                label: {
//////                                    Text("i wanna be a singer")
//////                                        .fontWeight(.thin)
//////                                        .frame(width: 300, height: 40)
//////                                        .foregroundColor(Color.white)
//////                                        .font(.system(size: 30))
//////                                        .background(Color.white)
////////                                        .background(ColorManager.purple2)
//////                                        .cornerRadius(15)
//////                                        .opacity(0.30)
//////                                })
//////
//////                        }
//////
//////                    VStack {
//////
//////                        Text("Wind by Shayla Bush, Producer Bryan Tyson")
//////                            .font(.system(size: 12, weight: .light))
//////                            .foregroundColor(Color.blue)
//////
//////                        Text("HRW Music Group")
//////                            .font(.system(size: 12, weight: .light))
//////                            .foregroundColor(Color.blue)
//////
////                    }
////
////
////
////
////                    Spacer()
////                        .frame(height: 100)
////
////                }
////
////            }
////
////        }
////
////    }
////
////    }
////    func shareButtonTapped() {
////        if selectedFriends.count == 0 { return }
////        for id in selectedFriends {
////            for f in friends {
////                if f.id == id {
////                    RestApi.instance.sendPushNotification(title: "BestFriends World", body: "\(user.firstName) just found NEW Music they wanted you to hear", APNToken: f.APNToken)
////                }
////            }
////        }
////        shareColor = ColorManager.darkGrey
////        showingAlert = true
////    }
////
////    struct RectView: View {
////        let user: User
////        let friend: User
////        let color: Color
////
////        var body: some View {
////            Text(friend.firstName + " " + String(friend.lastName.first!))
////                .fontWeight(.bold)
////                .frame(width: 100, height: 30)
////                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
////                .font(.system(size: 10))
////                .background(color)
////                .cornerRadius(25)
////                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
////        }
////    }
////
////
////
////}
////
