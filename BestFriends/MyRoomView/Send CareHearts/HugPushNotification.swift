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
                
            } else {

                
                Color.black
                  .opacity(0.9)
                  .ignoresSafeArea()
                
                AdPlayerView(name: "HugSound2")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                
            }
            

                VStack{
                    
                    HStack {
                        VStack {
                       
                            
                            
                            Spacer()
                                .frame(height: 10)
                            
                            ZStack {
                                
                                 
                                    
                                VStack {
                                   
                                    
                                    Text("Sending Hugs")
                                        .font(.system(size: 45, weight: .light))
                                        .foregroundColor(Color.white)
                                    
                                    Text("this is the 'supportive' CareHeart")
                                        .font(.system(size: 20, weight: .light))
                                        .italic()
                                        .foregroundColor(Color.white)
                                    
                                    Spacer()
                                        .frame(height: 10)
                                 
                                    
                                    
                                }
                            }
                          
                            
                        }
                        
 
                    }
                
                
                
                
                
                
                
                
//                *********************************************************
         
                VStack {
                    Spacer()
                        .frame(height: 20)


                    Spacer()
                        .frame(height: 25)
                
                    VStack {
                        
                     

                        
                        Text("it's the next best thing to being there")
                            .font(.system(size: 15, weight: .light))
                            .italic()
                            .foregroundColor(Color.white)
                        
                        
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
                  
                        
                        
//                        Button(action: {
//                            counter += 1
//                            shareButtonTapped()
//                        },
//                               label: {
//                            Text("SHARE")
                        
                        
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
                                .background(ColorManager .grey2)
                                .cornerRadius(25)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                .alert("Your hug has been sent. \n\nSometimes there's more power in a simple hug than a thousand words. \n\nBy tapping [Share] your CareHeart is automatically \nsent to: in-app & push notifications + our Widget", isPresented: $showingAlert) {
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
                                         .background(ColorManager .grey3)
                                         .cornerRadius(15)
                                         .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                                         .opacity(0.70)
                                     
                                 })
                            
                            
                            
                            Spacer()
                                .frame(height: 30)
                   
                        }
                        
                HStack {
                    Text("")
                        .fontWeight(.light)
                        .foregroundColor(Color.black)
                        .font(.system(size: 13))
                        .multilineTextAlignment(.center)
                        .rotationEffect(.degrees(-7))
                        .opacity(0.85)
                    
                    
                    Spacer ()
                        .frame(width: 250)
                    
                    NavigationLink(
                        destination:  PhotoPopView(user: user, friends: friends),
                        label: {
                            
                            Image(systemName: "camera")
                            
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .rotationEffect(.degrees(-7))
                                .foregroundColor(Color.cyan)
                                .glow(color: ColorManager.purple4, radius: 2)
                                .opacity(0.6)
                            
                        })
                            
                            Spacer ()
                                .frame(width: 15)
                            
                    VStack {
                        
                        ZStack {
                            
                            Image(systemName: "heart.fill")
                                .resizable()
                                .foregroundColor(Color.purple)
                                .frame(width: 150, height: 110)
                                .rotationEffect(.degrees(-7))
                                .shadow(color: .white, radius: 2, x: -2, y: 2)
                                .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                                .opacity(0.9)
                            
                            
                            Text("Send a PhotoPOP \nof a fun time \ntogether")
                                .fontWeight(.light)
                                .foregroundColor(Color.black)
                                .font(.system(size: 13))
                                .multilineTextAlignment(.center)
                                .rotationEffect(.degrees(-7))
                                .opacity(0.85)
                            
                        }
                   
                    }
                            
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
                    RestApi.instance.sendPushNotification(title: "BestFriends", body: "aah! ...  \(user.firstName) sent you a hug.", APNToken: f.APNToken)
                    
                    //MARK: The code below creates an in-app notification for your friend (f.id)
                    //MARK: DO NOT CHANGE THE TEXT OF THE NOTIFICATION, otherwise the code to take the user to a diffrent page will not work. Once you set it, do not change it.
                    RestApi.instance.createInAppNotification(ian: InAppNotification(user: f.id, sender: user.id, text: "Just sent you a warming Hug! ... TAP", createdOn: Int64(Date().timeIntervalSince1970))).then({ response in
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
                .frame(width: 80, height: 80)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .font(.system(size: 8))
                .background(color)
                .cornerRadius(75)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
        }
    }
    
    
    
}
