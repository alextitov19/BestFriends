//
//  FightLandingView.swift
//  BestFriends
//
//  Created by Social Tech on 4/30/22.
//
//

import Foundation
import SwiftUI
import ConfettiSwiftUI
import AVKit

struct Step2_FightLandingView: View {
    
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
            
            
            
            
            VStack{
                
                
           
                
                VStack {
                
                
//
//
//                    Text("not exactly sure what to say")
//                        .font(.system(size: 25, weight: .thin))
//                        .foregroundColor(ColorManager .grey1)
//                        .multilineTextAlignment(.center)
//
    
                    
                    Text("Ready to reach out by")
                        .font(.system(size: 20, weight: .light))
                        .foregroundColor(ColorManager .grey1)
                        .multilineTextAlignment(.center)
                    
                    
                    Text("sending a message in Chat")
                        .font(.system(size: 20, weight: .light))
                        .foregroundColor(ColorManager .grey1)
                        .multilineTextAlignment(.center)
                    
                    Button(action: {
                        sessionManager.showLogin()
                    },
                        label: {
                            Text("Home / Chat")
                                .fontWeight(.thin)
                                .frame(width: 200, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })

                    Link(destination: URL(string: "https://socialtechlabs.com/applink/")!) {
                        
                        Text("")
                            .fontWeight(.thin)
                            .frame(width: 0, height: 0)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.grey2)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                    }
                    
                    Spacer()
                        .frame(height: 50)
                    VStack {
                        
                        
                        
                        
                        Text("Let's make sure they get your message")
                            .font(.system(size: 15, weight: .light))
                            .italic()
                            .fontWeight(.regular)
                            .foregroundColor(Color.white)
                        
                        
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
                                .alert("You got this. Maybe redeem your 'TalkCoupon'. We will figure this out.", isPresented: $showingAlert) {
                                    Button("OK", role: .cancel) { }
                                }
                        })
                        //                        .confettiCannon(counter: $counter)
                        
                        
                        
                        
                        
                        
                        VStack {
                            
                            Spacer()
                                .frame(height: 50)
                    
                            Text("Now the hellish")
                                .font(.system(size: 20, weight: .light))
                                .foregroundColor(ColorManager .grey1)
                                .multilineTextAlignment(.center)
                            
                            Text("'waiting-to-hear-back' begins")
                                .font(.system(size: 20, weight: .light))
                                .foregroundColor(ColorManager .grey1)
                                .multilineTextAlignment(.center)
                            
                            Text("-Try sending a")
                                .font(.system(size: 22, weight: .bold))
                                .italic()
                                .fontWeight(.regular)
                                .foregroundColor(Color.white)
                     
                            
                            NavigationLink(
                                destination: BadDayQuietAlertView(user: user, friends: friends),
                                label: {
                                    Text("TalkCoupon")
                                        .fontWeight(.thin)
                                        .foregroundColor(Color.white)
                                        .frame(width: 200, height: 60)
                                        .font(.system(size: 30))
                                        .background(Color.purple)
                                        .opacity(0.95)
                                        .cornerRadius(15)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                }
                                
                            )}
                        
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
                        }
                        
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
                    RestApi.instance.sendPushNotification(title: "BestFriends", body: "\(user.firstName) I ready to talk about our fight - can we talk?", APNToken: f.APNToken)
                    
                    //MARK: The code below creates an in-app notification for your friend (f.id)
                    //MARK: DO NOT CHANGE THE TEXT OF THE NOTIFICATION, otherwise the code to take the user to a diffrent page will not work. Once you set it, do not change it.
                    RestApi.instance.createInAppNotification(ian: InAppNotification(user: f.id, sender: user.id, text: "Wants to talk about your fight", createdOn: Int64(Date().timeIntervalSince1970))).then({ response in
                        print("Create a fix fight notification response code: ", response)
                    })
                    
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
        
    
    
    
    //*************************************************************************************
    //import Foundation
    //import SwiftUI
    //import AVKit
    //
    //struct Step2_FightLandingView: View {
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
    //            ColorManager.purple3
    //                .ignoresSafeArea()
    //            //
    //            //            ColorManager.grey2
    //            //                  .ignoresSafeArea()
    //            //
    //            //            // Stars animation...
    //            //            AdPlayerView(name: "backgroundAnimation")
    //            //                .ignoresSafeArea()
    //            //                .blendMode(.screen)
    //
    //            VStack{
    //
    //
    //
    //
    //                VStack {
    //
    //
    //
    //
    //                    Spacer()
    //                        .frame(height: 20)
    //
    //
    //                    Text("Send")
    //                        .font(.system(size: 35, weight: .ultraLight))
    //                        .foregroundColor(ColorManager.purple7)
    //
    //                    Text("Push Notification to ...")
    //                        .font(.system(size: 35, weight: .ultraLight))
    //                        .foregroundColor(ColorManager.purple7)
    //
    //
    //                    VStack {
    //
    //                        Spacer()
    //                            .frame(height: 7)
    //
    //
    //                        HStack {
    //                            //                            NavigationLink(
    //                            //                                destination: EmptyView(),
    //                            //                                label: {
    //                            Text("select >")
    //                                .fontWeight(.thin)
    //                            //                                        .fontWeight(.bold)
    //                                .frame(width: 100, height: 30)
    //                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
    //                                .font(.system(size: 20))
    //                                .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
    //                                .cornerRadius(25)
    //                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
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
    //                        Button(action: {
    //                            shareButtonTapped()
    //                        },
    //                               label: {
    //                            Text("SHARE")
    //                                .fontWeight(.thin)
    //                                .frame(width: 100, height: 40)
    //                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
    //                                .font(.system(size: 30))
    //                                .background(shareColor)
    //                                .cornerRadius(15)
    //                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
    //                                .alert("Push Notifications sent successfully", isPresented: $showingAlert) {
    //                                    Button("OK", role: .cancel) { }
    //                                }
    //                        })
    //
    //                        VStack {
    //
    //                            Spacer()
    //                                .frame(height: 15)
    //
    //
    //
    //                            Text("(Now you know they got your message)")
    //                                .font(.system(size: 15, weight: .bold))
    //                                .italic()
    //                                .fontWeight(.regular)
    //                                .foregroundColor(ColorManager .grey4)
    //
    //                            Spacer()
    //                                .frame(height: 35)
    //
    //                            NavigationLink(
    //                                destination: TryThis(),
    //                                label: {
    //                                    Text("Calm my \n'Waiting Anxiety'")
    //                                        .fontWeight(.thin)
    //                                        .foregroundColor(Color.white)
    //                                        .frame(width: 310, height: 80)
    //                                        .font(.system(size: 27))
    //                                        .background(ColorManager.pmbc_blue)
    //                                        .cornerRadius(15)
    //                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
    //                                }
    //
    //                            )}
    
    //                        Spacer()
    //                            .frame(height: 25)
    //
    //
    //                        //                            MARK: New [Next] button going go HugitOut
    //
    //
    //
    //
    //
    //
    //
    //
    //                        NavigationLink(
    //                            destination: Step7_TimeToTalk(),
    //                            label: {
    //                                Text("")
    //                                    .fontWeight(.thin)
    //                                    .foregroundColor(Color.white)
    //                                    .frame(width: 0, height: 0)
    //                                    .font(.system(size: 30))
    //                                    .background(ColorManager.purple3)
    //                                    .cornerRadius(15)
    //                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
    //                            }
    //
    //                        )}
    //
    //
    //
    //                    //                            MARK: old [Invite] buttom going nowhere - was supposed to be a [Submit] button that changed color when tapped. But, having difficult time getting it to work - so changed it out to the above
    //
    //                    //                            NavigationLink(
    //                    //                                destination: EmptyView(),
    //                    //                                label: {
    //                    //                                    Text("Invite")
    //                    //                                        .fontWeight(.thin)
    //                    //                                        .font(.system(size: 30))
    //                    //                                        .foregroundColor(Color.white)
    //                    //                                        .frame(width: 160, height: 40)
    //                    //                                        .font(.system(size: 30))
    //                    //
    //                    //                                        .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
    //                    //
    //                    //                                        .cornerRadius(15)
    //                    //                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
    //                    //
    //                    //                                }
    //                    //
    //                    //                            )}
    //
    //                    Spacer()
    //                        .frame(height: 150)
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
    //                    RestApi.instance.sendPushNotification(title: "BestFriends", body: "\(user.firstName) is asking if you want to fix this fight", APNToken: f.APNToken)
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
    //                .frame(width: 100, height: 30)
    //                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
    //                .font(.system(size: 10))
    //                .background(color)
    //                .cornerRadius(25)
    //                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
    //        }
    //    }
    //
    //
    //
    //}

