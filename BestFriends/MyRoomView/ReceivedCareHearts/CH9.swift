//
//  CH9.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 7/11/23.
//


import Foundation
import SwiftUI
import ConfettiSwiftUI
import AVKit

struct CH9: View {
    
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
                
                Color.black
                    .opacity(0.8)
                    .ignoresSafeArea()
        
                AdPlayerView(name: "dramaLights")
                    .opacity(0.5)
                    .ignoresSafeArea()
                    .blendMode(.screen)
                
            } else {


                ColorManager .grey2
                   .opacity(0.9)
                    .ignoresSafeArea()
                
                
                AdPlayerView(name: "sky2")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                    .opacity(0.99)
           
//                AdPlayerView(name: "moonRose1")
//                    .ignoresSafeArea()
//                    .blendMode(.screen)
//                    .opacity(0.5)
                
                AdPlayerView(name: "kissesYellow2")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                    .opacity(0.4)
                
                
                AdPlayerView(name: "alwaysForever2")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                    .opacity(0.0)

            }
            
            VStack{
                

                
                Spacer()
                    .frame(height: 40)
                
                
                HStack {
                    VStack {
        
                        
                        ZStack {
                            
                            
                            VStack {
                          
                                
                            }
                            
                           
                        }
                      
                        
                    }
               
                }
             
         
                VStack {


                    Text("Jump up high,")
                                            .font(.system(size: 30))
                                            .foregroundColor(ColorManager .grey1)
                                            .fontWeight(.light)
                                            .multilineTextAlignment(.center)
                 
                    Text("you'll see them")
                                            .font(.system(size: 30))
                                            .foregroundColor(ColorManager .grey1)
                                            .fontWeight(.light)
                                            .multilineTextAlignment(.center)
                    
                    Text("floating towards you!")
                                            .font(.system(size: 30))
                                            .foregroundColor(ColorManager .grey1)
                                            .fontWeight(.light)
                                            .multilineTextAlignment(.center)
                    
                    VStack {
                        

                        
                        
               
                        
                        Spacer()
                            .frame(height: 30)
                        
                        Text("(say thanks)")
                                                .font(.system(size: 15))
                                                .italic()
                                                .foregroundColor(Color.white)
                                                .fontWeight(.light)
                                                .multilineTextAlignment(.center)
                        
                        
                        
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
                            Image("iconShare")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .rotationEffect(.degrees(20))
                                .foregroundColor(ColorManager .purple5)
                                .glow(color: Color.purple, radius: 2)
                                .opacity(0.6)
                                .blinking(duration: 3.0)
                                .alert("Your 'thank you' for the Kisses \nhas been sent", isPresented: $showingAlert) {
                                    Button("OK", role: .cancel) { }
                                }
                        })
//                        .confettiCannon(counter: $counter)

                        
                        VStack {
                            
                            Spacer()
                                .frame(height: 20)
                                                                  
                            NavigationLink( destination:  SendKisses(user: user, friends: friends),
                                            label: {
                                Text("Blow a Kiss back")
                                    .fontWeight(.bold)
                                    .frame(width: 200, height: 30)
                                    .foregroundColor(Color.black)
                                    .font(.system(size: 16))
                                    .background(Color.cyan)
                                    .glow(color: ColorManager.purple1, radius: 1)
                                    .shadow(color: .white, radius: 3, x: -4, y: 4)
                                    .opacity(0.9)
                                    .cornerRadius(15)
                                    .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                            })
                            
                            Spacer()
                                .frame(height: 30)
                            
                            Button(action: {
                                sessionManager.showLogin()
                            },
                                   label: {
                                Image("home-alt2")
                                    .frame(width: 50, height: 25)
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                                    .background(ColorManager .grey2)
                                    .cornerRadius(15)
                                    .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                                    .opacity(0.70)

                            })
//
                            Spacer()
                                .frame(height: 150)
                            
   
                   
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
                    RestApi.instance.sendPushNotification(title: "BestFriends", body: "\(user.firstName) Ahhh! Thanks for the Kisses!", APNToken: f.APNToken)
                    
                    //MARK: The code below creates an in-app notification for your friend (f.id)
                    //MARK: DO NOT CHANGE THE TEXT OF THE NOTIFICATION, otherwise the code to take the user to a diffrent page will not work. Once you set it, do not change it.
                    RestApi.instance.createInAppNotification(ian: InAppNotification(user: f.id, sender: user.id, text: "Ahhh! Thanks for the Kisses!", createdOn: Int64(Date().timeIntervalSince1970))).then({ response in
                        print("Create a got kiss notification response code: ", response)
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
                .frame(width: 80, height: 80)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .font(.system(size: 8))
                .background(color)
                .cornerRadius(75)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
        }
    }
    
    
    
}
