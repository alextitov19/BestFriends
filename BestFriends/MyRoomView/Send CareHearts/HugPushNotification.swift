//
//  HugPushNotification.swift
//  BestFriends
//
//  Created by Social Tech on 10/25/22.
//



import Foundation
import SwiftUI
import ConfettiSwiftUI
import AVKit
struct HugPushNotification: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    
    @State private var selectedFriends: [String] = []
    @State private var colors: [Color] = [ColorManager.grey2, ColorManager.grey2, ColorManager.grey2, ColorManager.grey2, ColorManager.grey2]
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
                
                Color.black
                    .opacity(0.9)
                    .ignoresSafeArea()
                
                AdPlayerView(name: "dramaLights")
                    .opacity(0.5)
                    .ignoresSafeArea()
                    .blendMode(.screen)
                
//                AdPlayerView(name: "HugTikTok")
//                    .ignoresSafeArea()
//                    .blendMode(.screen)
//                    .opacity(0.0)
                
            } else {
                
                
                ColorManager .grey4
                    .opacity(0.9)
                    .ignoresSafeArea()
                
                AdPlayerView(name: "sky2")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                    .opacity(0.5)
      
                
//                AdPlayerView(name: "HugTikTok")
//                    .ignoresSafeArea()
//                    .blendMode(.screen)
//                    .opacity(0.5)
                
            }
            
            
            VStack{
                
                HStack {
                    VStack {
                        
                        
                        
                        Spacer()
                            .frame(height: 10)
                        
                        ZStack {
                            
                            Image(systemName: "cube.fill")
                                .resizable()
                                .foregroundColor(Color.purple)
                                .frame(width: 300, height: 200)
                                .shadow(color: ColorManager .purple3, radius: 65, x: 30, y: 50)
                                .opacity(0.5)
                            
                            VStack {
                                
                                Spacer()
                                    .frame(height: 25)
                                
                                Text("Sending Hugs")
                                    .font(.system(size: 30, weight: .light))
                                    .foregroundColor(Color.white)
                                    .opacity(0.5)
                                
                                Text("touching their heart")
                                    .font(.system(size: 20, weight: .light))
                                    .foregroundColor(Color.white)
                                    .opacity(0.5)
                                Spacer()
                                    .frame(height: 10)
                               
                            }
                        }
                    }
                }
                
                
//     ************************************ photopop

                VStack {
                    Spacer()
                        .frame(height: 80)
                    
                    HStack {
                        ZStack {
                            
                            Image(systemName: "heart.fill")
                                .resizable()
                                .foregroundColor(Color.purple)
                                .frame(width: 150, height: 110)
                                .shadow(color: ColorManager .purple3, radius: 65, x: 30, y: 50)
                                .opacity(0.95)
                            
                            NavigationLink(
                                destination:  PhotoPopView(user: user, friends: friends),
                                label: {
                                    
                                    Image("IconPhotoNew")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 70, height: 70)
                                        .foregroundColor(Color.purple)
                                        .glow(color: Color.white, radius: 0.3)
                                        .shadow(color: .white, radius: 1, x: 3, y: -0.5)
                                        .opacity(0.95)
                                    
                                })
                            
                        }
                        
                        
                        Spacer ()
                            .frame(width: 270)
                        
                        
                        Image(systemName: "heart.fill")
                            .resizable()
                            .foregroundColor(Color.purple)
                            .frame(width: 20, height: 20)
                            .shadow(color: ColorManager .purple3, radius: 65, x: 30, y: 50)
                            .opacity(0.0)
                        
                        Spacer ()
                            .frame(width: 35)
                        
                        
                    }
                }
                
                
                
                
                
//                *********************************************************
                
                VStack {
                    
                    Spacer()
                        .frame(height: 20)
                    
                    VStack {
                        
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
                                            colors[0] = ColorManager.grey2
                                        } else {
                                            selectedFriends.append(friends[0].id)
                                            colors[0] = ColorManager.grey3
                                        }
                                        print(selectedFriends)
                                    })
                                
                            }
                            
                            if friends.count > 1 {
                                RectView(user: user, friend: friends[1], color: colors[1])
                                    .onTapGesture(perform: {
                                        if selectedFriends.contains(friends[1].id) {
                                            selectedFriends = selectedFriends.filter { $0 != friends[1].id }
                                            colors[1] = ColorManager.grey2
                                        } else {
                                            selectedFriends.append(friends[1].id)
                                            colors[1] = ColorManager.grey3
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
                                            colors[2] = ColorManager.grey2
                                        } else {
                                            selectedFriends.append(friends[2].id)
                                            colors[2] = ColorManager.grey3
                                        }
                                        print(selectedFriends)
                                    })
                            }
                            
                            if friends.count > 3 {
                                RectView(user: user, friend: friends[3], color: colors[3])
                                    .onTapGesture(perform: {
                                        if selectedFriends.contains(friends[3].id) {
                                            selectedFriends = selectedFriends.filter { $0 != friends[3].id }
                                            colors[3] = ColorManager.grey2
                                        } else {
                                            selectedFriends.append(friends[3].id)
                                            colors[3] = ColorManager.grey3
                                        }
                                        print(selectedFriends)
                                    })
                                
                            }
                            
                            if friends.count > 4 {
                                RectView(user: user, friend: friends[4], color: colors[4])
                                    .onTapGesture(perform: {
                                        if selectedFriends.contains(friends[4].id) {
                                            selectedFriends = selectedFriends.filter { $0 != friends[4].id }
                                            colors[4] = ColorManager.grey2
                                        } else {
                                            selectedFriends.append(friends[4].id)
                                            colors[4] = ColorManager.grey3
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
                                    Image("iconShare")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 80, height: 80)
                                        .rotationEffect(.degrees(20))
                                        .foregroundColor(ColorManager .purple5)
                                        .glow(color: Color.purple, radius: 2)
                                        .opacity(0.6)
                                        .blinking(duration: 3.0)
                                        .alert("Your hug has been sent. \n\nSometimes there's more power in a simple hug than a thousand words.", isPresented: $showingAlert) {
                                            Button("OK", role: .cancel) { }
                                            
                                        }
                                })
                            
                        
                        
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
                                    .background(ColorManager .grey3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                                    .opacity(0.70)
                                
                            })
                            
                            
                            //
                            //                            Spacer()
                            //                                .frame(height: 30)
                            //
                        }
                        

                        }
                        
                    }
                    
                }
                
            }
            
        }
 
    
//  ************************** floating hearts *************
                                struct LikesGeometryEffect : GeometryEffect {
                                    var time : Double
                                    var speed = Double.random(in: 100 ... 200)
                                    var xDirection = Double.random(in:  -0.05 ... 0.05)
                                    var yDirection = Double.random(in: -Double.pi ...  0)

                                    var animatableData: Double {
                                        get { time }
                                        set { time = newValue }
                                    }
                                    func effectValue(size: CGSize) -> ProjectionTransform {
                                        let xTranslation = speed * xDirection
                                        let yTranslation = speed;  sin(yDirection);  time
                                        let affineTranslation =  CGAffineTransform(translationX: xTranslation, y: yTranslation)
                                        return ProjectionTransform(affineTranslation)
                                    }
                                }
    
    
//    **********************************************
    func shareButtonTapped() {
        if selectedFriends.count == 0 { return }
        for id in selectedFriends {
            for f in friends {
                if f.id == id {
                    RestApi.instance.sendPushNotification(title: "BestFriends", body: "aah! ...  \(user.firstName) just sent you a hug. Check 'received' CareHearts to get it.", APNToken: f.APNToken)
                    
                    //MARK: The code below creates an in-app notification for your friend (f.id)
                    //MARK: DO NOT CHANGE THE TEXT OF THE NOTIFICATION, otherwise the code to take the user to a diffrent page will not work. Once you set it, do not change it.
                    RestApi.instance.createInAppNotification(ian: InAppNotification(user: f.id, sender: user.id, text: "Aah! ... you just got a hug - TAP", createdOn: Int64(Date().timeIntervalSince1970))).then({ response in
                        print("Create a hug notification response code: ", response)
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
                .frame(width: 70, height: 70)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .font(.system(size: 8))
                .background(color)
                .cornerRadius(75)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
        }
    }
    
    
    
}
