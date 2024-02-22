//
//  TestPage2.swift
//  BestFriends
//
//  Created by Social Tech on 4/6/23.
//



import Foundation
import SwiftUI
import ConfettiSwiftUI
import AVKit

struct BadDayQuietAlertView: View {
    
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
        
                ColorManager.grey4
                    .ignoresSafeArea()
                    .onAppear()
 
                AdPlayerView(name: "dramaLights")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                
            } else {

                ColorManager .purple4
                    .opacity(0.6)
                    .ignoresSafeArea()
                
                
                Image("FHBackground")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
            }
            
        
//           *************************************

                VStack{
                    
                    HStack {
                        VStack {
                       
                            
                            
                            Spacer()
                                .frame(height: 10)
                            
                            ZStack {
                                
                                Image(systemName: "circle.fill")
                                    .resizable()
                                    .foregroundColor(Color.purple)
                                    .frame(width: 400, height: 400)
                                    .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                                    .opacity(0.95)
                                    
                                VStack {
                                    Text("TalkCoupons")
                                        .font(.system(size: 45, weight: .light))
                                        .foregroundColor(ColorManager .grey2)
                                 
            
                                    Text("Gives everyone a last chance \nto try to work things out. \n\nIn good faith, \n'TalkCoupons' should be honored by all.")
                                        .font(.system(size: 17, weight: .light))
                                        .italic()
                                        .foregroundColor(Color.white)
                    //                    .shadow(color: .black, radius: 1, x: 0, y: 1)
//                                        .opacity(0.50)
                                        .multilineTextAlignment(.center)
                                        .padding(30)
                                    
                                }
                            }
                          
                            
                        }
                        
 
                    }
                
                
                
                
                
                
                
                
//                *********************************************************
         
                VStack {

                    Text("Send TalkCoupon to ...")
                        .font(.system(size: 17))
                        .fontWeight(.light)
                        .foregroundColor(Color.white)
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
                                .alert("Your 'TalkCoupon' \n\nhas been sent.", isPresented: $showingAlert) {
                                    Button("OK", role: .cancel) { }
                                }
                        })
//                        .confettiCannon(counter: $counter)

                        
                        VStack {
                            Spacer()
                                .frame(height: 20)
                            
                            Button(action: {
                                sessionManager.showLogin()
                            },
                                   label: {
                                Image("home-alt2")
                                    .frame(width: 50, height: 25)
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                                    .background(ColorManager .grey1)
                                    .cornerRadius(15)
                                    .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                                    .opacity(0.70)
                                     
                                 })
                            
                            
                            
                            Spacer()
                                .frame(height: 30)
                   
                        }
                        

//
                        
                        
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
                    RestApi.instance.sendPushNotification(title: "BestFriends", body: "  \(user.firstName) is redeaming ONE 'TalkCoupon'", APNToken: f.APNToken)
                    
                    //MARK: The code below creates an in-app notification for your friend (f.id)
                    //MARK: DO NOT CHANGE THE TEXT OF THE NOTIFICATION, otherwise the code to take the user to a diffrent page will not work. Once you set it, do not change it.
                    RestApi.instance.createInAppNotification(ian: InAppNotification(user: f.id, sender: user.id, text: "Redeaming ONE 'TalkCoupon'", createdOn: Int64(Date().timeIntervalSince1970))).then({ response in
                        print("Create a TalkCoupon notification response code: ", response)
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



//**********************************************

//
//import SwiftUI
//import Combine
//
//struct SendSongChat2: View {
//
//    @EnvironmentObject var sessionManager: SessionManager
//
//    let user: User
//    let friend: User
//    let friends: [User]
//    let groups: [Group]
//    let friendAtmosphere: Atmosphere
//
//    @State private var customMessage = ""
//    @State private var colorChangeTap: String = ""
//
//    var body: some View {
//        ZStack {
//
//            ColorManager.purple1
//                .ignoresSafeArea()
//                .onAppear()
//
//            VStack {
//
//                Text("Ok, we get it.")
//                    .font(.system(size: 20))
//                    .fontWeight(.ultraLight)
//                    .foregroundColor(ColorManager .grey3)
//                    .multilineTextAlignment(.center)
//                Text("You may have some very personal songs on your 'sad' playlist. You want to help but feel uncomfortable sharing your whole playlist.")
//                    .font(.system(size: 19))
//                    .fontWeight(.ultraLight)
//                    .foregroundColor(ColorManager .grey3)
//                    .multilineTextAlignment(.center)
//                    .padding(30)
//
//
//                HStack {
//
//                    VStack {
//                        Text("Cool")
//                            .font(.system(size: 25))
//                            .fontWeight(.ultraLight)
//                            .foregroundColor(ColorManager .grey3)
//                            .multilineTextAlignment(.center)
//
//
//                        Text("just send one")
//                            .font(.system(size: 25))
//                            .fontWeight(.ultraLight)
//                            .foregroundColor(ColorManager .grey3)
//                            .multilineTextAlignment(.center)
//
//
//                    }
//
//
//                    Image("book200")
//                        .resizable()
//                        .frame(width: 180, height: 180)
//
//                }
//
//
//                VStack {
//
//                    NavigationLink(
//                        destination: SendSongPushNote(user: user, friends: friends),
//                        label: {
//                            Text("1st_Send Push Notification")
//                                .fontWeight(.thin)
//                                .frame(width: 310, height: 30)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .font(.system(size: 25))
//                                .background(ColorManager.purple3)
//                                .cornerRadius(10)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//                        })
//
//                }
//
//
//                Spacer()
//                    .frame(height: 25)
//
//
//        VStack {
//
//            TextField("", text: $customMessage)
//                .placeholder(when: customMessage.isEmpty) {
//                    HStack {
//                        Text("2nd_Type name of song here ...")
//                            .foregroundColor(ColorManager.grey4)
//                        .fontWeight(.thin)
//
//                        Spacer()
//                    }
//                }
//                .font(.system(size: 18))
//                .submitLabel(.done)
//               .onReceive(Just(customMessage)) { _ in limitText(65) }
//
//
//                .padding(40)
//                .overlay(RoundedRectangle(cornerRadius: 10)
//                    .stroke(Color.purple)
//                    .frame(height: 40)
//                    .padding(.horizontal, 20)
//                )
//
//
//
//            VStack {
//                Button(action: {
//                    sendMessage()
//                }, label: {
//                    Text("3rd_Send the song to Chat")
//                        .fontWeight(.thin)
//                        .frame(width: 310, height: 30)
////                       .foregroundColor(.white)
//                        .font(.system(size: 25))
//                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                        .background(ColorManager.purple3)
//                        .opacity(0.7)
//                        .cornerRadius(10)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                })
////
////                Button(action: {
////                    sessionManager.showLogin()
////                },
////                       label: {
////                    Image("home-alt2")
////                        .frame(width: 50, height: 25)
////                        .foregroundColor(.white)
////                        .font(.system(size: 20))
////                        .background(Color .black)
////                        .cornerRadius(15)
////                        .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
////                        .opacity(0.70)
////
////                })
////
//                Spacer()
//                    .frame(height: 30)
//
////
////                NavigationLink(
////                    destination: SendSongPushNote(user: user, friends: friends),
////                    label: {
////                        Text("Send Push Notification")
////                            .fontWeight(.thin)
////                            .frame(width: 300, height: 30)
////                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
////                            .font(.system(size: 30))
////                            .background(ColorManager.purple3)
////                            .cornerRadius(15)
////                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
////
////                    })
//
//                Spacer()
//                    .frame(height: 50)
//
//            }
//
//        }
//    }
//}
//}
//
//
//    private func sendMessage() {
//        if customMessage.count == 0 { return }
//
//        let arr = [user.id, friend.id]
//        for g in groups {
//            if g.members.containsSameElements(as: arr) {
//                // Send chat message to this existing group
//                RestApi.instance.createChatMessage(groupId: g.id, body: customMessage).then({ response in
//                    sessionManager.showChat(user: user, group: g)
//                })
//
//                return
//            }
//        }
//
//        // Create new group
//        RestApi.instance.createGroup(name: "\(user.firstName), \(friend.firstName)", members: arr).then { responseGroup in
//            // Send chat message to this group
//            RestApi.instance.createChatMessage(groupId: responseGroup.id, body: customMessage).then({ response in
//                sessionManager.showChat(user: user, group: responseGroup)
//            })
//        }
//    }
//
//    private func limitText(_ upper: Int) {
//        if customMessage.count > upper {
//            customMessage = String(customMessage.prefix(upper))
//        }
//    }
//
//    private struct RectView: View {
//        let user: User
//        let friend: User
//
//        var body: some View {
//            Button(action: {
//                RestApi.instance.sendPushNotification(title: "BestFriends", body: "\(user.firstName) sent you a song in Chat they listen to when their 'Vibe' matchs yours", APNToken: friend.APNToken )
//            },
//                   label: {
//                Text(friend.firstName + " " + String(friend.lastName.first!))
//                    .fontWeight(.bold)
//                    .frame(width: 100, height: 30)
//                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                    .font(.system(size: 10))
//                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
//                    .cornerRadius(25)
//                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//            })
//        }
//    }
//
//
//
//    private func defaultMessageButtonTapped(defaultMessage: String) {
//        self.colorChangeTap = defaultMessage
//
//    }
//
//    private func getDateString(n: Int64) -> String {
//        var timeString = ""
//        var x = Int64(Date().timeIntervalSince1970) - n
//        x = x / 60
//        timeString = "\(x) min"
//        if x > 60 {
//            x = x / 6
//            timeString = "\(x) hr"
//            if x > 24 {
//                x = x / 24
//                timeString = "\(x) days"
//            }
//        }
//        return timeString
//    }
//}
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
//
//
//
//
//
//
//
