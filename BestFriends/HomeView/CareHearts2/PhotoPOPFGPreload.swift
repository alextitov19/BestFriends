//
//  PhotoPOPFGPreload.swift
//  BestFriends
//
//  Created by Social Tech on 11/14/22.
//



import Foundation
import SwiftUI
import ConfettiSwiftUI
import AVKit
import Combine


struct PhotoPopFGPreload: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friend: User
    let friends: [User]
    let groups: [Group]
    
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
    
    
    @State private var customMessage = ""


    private func limitText(_ upper: Int) {
        if customMessage.count > upper {
            customMessage = String(customMessage.prefix(upper))
        }
    }
    private func sendMessage() {
        if customMessage.count == 0 { return }

//        let arr = [user.id, friend.id]
        if selectedFriends.count == 0 {return}
        
        customMessage = "Friendship Coupon from " + user.firstName + " : " + customMessage;
        
        for friendID in selectedFriends {
            let arr = [user.id, friendID]
            var found = false;
            for g in groups {
                if g.members.containsSameElements(as: arr) {
                    // Send chat message to this existing group
                    RestApi.instance.createChatMessage(groupId: g.id, body: customMessage).then({ response in
                        sessionManager.showChat(user: user, group: g)
                    })
                    found = true;
                    break;
                }
            }
            
            // Create new group
            if found == false {
                for f in friends {
                    if f.id == friendID {
                        RestApi.instance.createGroup(name: "\(user.firstName), \(f.firstName)", members: arr).then { responseGroup in
                            // Send chat message to this group
                            RestApi.instance.createChatMessage(groupId: responseGroup.id, body: customMessage).then({ response in
                                                    sessionManager.showChat(user: user, group: responseGroup)
                            })
                        }
                    }
                }
            }
        }
    }

    
    var body: some View {
        
        ZStack {
          
            
            if shareTapped {
                
                
                
                            ColorManager.purple5
                                .ignoresSafeArea()
                                .onAppear()

                
                AdPlayerView(name: "dramaLights")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                
            } else {

                ColorManager.grey4
                    .opacity(0.8)
                    .ignoresSafeArea()
                    .onAppear()

    AdPlayerView(name: "sky2")
        .ignoresSafeArea()
        .blendMode(.screen)
                
                
            }
            
        
//           *************************************

                VStack{
                    
                    HStack {
                        VStack {
                       
                            
                            ZStack {
                          
                            
                                VStack {
                                    HStack {
                                        VStack {
                                            Text("Friendship")
                                                .font(.system(size: 26, weight: .light))
                                                .foregroundColor(ColorManager .grey1)
                                            
                                            Text("Coupons")
                                                .font(.system(size: 26, weight: .light))
                                                .foregroundColor(ColorManager .grey1)
                                            
                                        }
                                       
                                                
                                                Spacer()
                                                    .frame(width: 45)
                                        
                                    Image("girlwalking250")
                                        .resizable()
                                        .frame(width: 80, height: 80)
                                }
                                 
                                    Spacer()
                                        .frame(height: 10)
                                   
                                    
                                    Spacer()
                                        .frame(height: 7)
                                    
                                    
                                    ZStack(alignment: .bottom) {
                                            Image("Coupon")
                                                .resizable()
                                                .frame(width: 350, height: 100)
                                                .cornerRadius(15)

                                            VStack {
                                                Spacer()
                                                // TextField for userInput
                                                TextField("", text: $customMessage)
                                                    .placeholder(when: customMessage.isEmpty) {
                                                        HStack {
                                                            Text("Write your coupon in here")
                                                                .foregroundColor(ColorManager.grey4)
                                                                .fontWeight(.thin)
                                                            Spacer()
                                                        }
                                                    }
                                                    .foregroundColor(.black)
                                                    .font(.system(size: 18))
                                                    .submitLabel(.done)
                                                    .onReceive(Just(customMessage)) { _ in limitText(65) }
                                                    .padding(.top, 20)
                                                    .padding(.horizontal, 40)
                                                    .overlay(
                                                        RoundedRectangle(cornerRadius: 10)
                                                            .stroke(Color.purple)
                                                            .frame(height: 40)
                                                            .padding(.horizontal, 20)
                                                    )
                                                    .padding(.bottom, 5)
                                            }
                                        }
                                  
                                }
                               
                            }
                           
                        }
                      
                    }
                    
                    
                    VStack {
                     
                      
//                        Button(action: {
//                            sendMessage()
//                        }, label: {
//                            Text("Send")
//                                .fontWeight(.thin)
//                                .frame(width: 150, height: 40)
//        //                       .foregroundColor(.white)
//                                .font(.system(size: 25))
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .background(ColorManager.purple3)
//                                .opacity(0.7)
//                                .cornerRadius(10)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                        })
                        
                            Spacer()
                                .frame(height: 10)
                    }
      
                    
                    Text("Send your friend a Friendship Coupon that next time you are together they can redeem for your gift, like an ice cream, a cheeseburger - what ever you want to give them.")
                        .font(.system(size: 18, weight: .light))
                        .foregroundColor(Color.white)
    //                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                        .opacity(0.50)
                        .multilineTextAlignment(.center)
                        .padding(30)
                    
                    
                    
                VStack {

                    Text("Alert friend to look for Coupon in Chat")
                        .font(.system(size: 17))
                        .fontWeight(.ultraLight)
                        .foregroundColor(ColorManager .grey1)
                        .multilineTextAlignment(.center)
            
                    VStack {

                        Spacer()
                            .frame(height: 5)
                        
                        
                        HStack {
                            
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
                            sendMessage()
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
                        
                        Spacer()
     
                        
                        VStack {
                            Spacer()
                                .frame(height: 10)
//
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
                                    .frame(height: 120)
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
                    RestApi.instance.sendPushNotification(title: "BestFriends", body: "  \(user.firstName) just sent you a 'Friendship Coupon'", APNToken: f.APNToken)
                    
                    //MARK: The code below creates an in-app notification for your friend (f.id)
                    //MARK: DO NOT CHANGE THE TEXT OF THE NOTIFICATION, otherwise the code to take the user to a diffrent page will not work. Once you set it, do not change it.
                    RestApi.instance.createInAppNotification(ian: InAppNotification(user: f.id, sender: user.id, text: "Just got a 'Friendship Coupon'", createdOn: Int64(Date().timeIntervalSince1970))).then({ response in
                        print("Create a Friendship Coupon notification response code: ", response)
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

