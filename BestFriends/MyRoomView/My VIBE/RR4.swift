//
//  RR4.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 7/15/23.
//



import Foundation
import SwiftUI
import ConfettiSwiftUI


struct RR4: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    
    @State private var selectedFriends: [String] = []
    @State private var colors: [Color] = [ColorManager.grey2, ColorManager.grey2, ColorManager.grey2, ColorManager.grey2, ColorManager.grey2]
    @State private var shareColor = ColorManager.purple5
    @State private var showingAlert = false
    
    
    @State private var counter = 0
    @State private var shareTapped: Bool = false
    
 
    
    
    
    var body: some View {
        
        ZStack {
            
            ColorManager.grey4
                .opacity(0.8)
                .ignoresSafeArea()
         
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
                .opacity(0.99)
            
            


            VStack{
                
                Spacer()
                        .frame(height: 10)
                    
                    VStack {

                  
                        
                

                        
                        Text("Alert friend with")
                            .font(.system(size: 30, weight: .light))
                            .foregroundColor(Color.white)
                    
                        Text("Push Notification")
                            .font(.system(size: 35, weight: .light))
                            .foregroundColor(Color.white)
                        
                        Spacer()
                            .frame(height: 10)
                        
                        Text("In-app notification")
                            .font(.system(size: 15, weight: .light))
                            .italic()
                            .foregroundColor(ColorManager .grey1)
                        
                        Text("was automatically sent")
                            .font(.system(size: 15, weight: .light))
                            .italic()
                            .foregroundColor(ColorManager .grey1)
                        
                        
                        HStack {
                            //
                            //                            Text("select >")
                            //                                .fontWeight(.thin)
                            //                                .frame(width: 100, height: 30)
                            //                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            //                                .font(.system(size: 20))
                            //                                .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
                            //                                .cornerRadius(25)
                            //                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            //                            //                                })
                            
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
                            Text("SHARE")
                                .fontWeight(.thin)
                                .frame(width: 100, height: 30)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 25))
                                .background(ColorManager .grey3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                .alert("Alert has been sent.", isPresented: $showingAlert) {
                                    Button("OK", role: .cancel) { }
                                }
                        })
                        
                
                        
                    }
                    
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
                        .background(ColorManager .grey2)
                        .cornerRadius(15)
                        .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                        .opacity(0.70)
                    
                })
                
                Spacer()
                    .frame(height: 40)
                
            
                
                VStack {
             
                    NavigationLink( destination:  MyFears(user: user, friends: friends),
                                    label: {
                        Text("Feel an anxiety attack coming on?")
                            .fontWeight(.bold)
                            .frame(width: 320, height: 40)
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
                        .frame(height: 100)
                    
            
                    
            VStack {
                    
             
           
                    
                    
                
                
                
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
                    RestApi.instance.sendPushNotification(title: "BestFriends", body: "\(user.firstName)  I need to Talk! (thx for leaving your 'notifications' ON", APNToken: f.APNToken)
                    
                    //MARK: The code below creates an in-app notification for your friend (f.id)
                    //MARK: DO NOT CHANGE THE TEXT OF THE NOTIFICATION, otherwise the code to take the user to a diffrent page will not work. Once you set it, do not change it.
                    RestApi.instance.createInAppNotification(ian: InAppNotification(user: f.id, sender: user.id, text: "Needed to Talk!", createdOn: Int64(Date().timeIntervalSince1970))).then({ response in
                        print("Create a Need Talk notification response code: ", response)
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



//
//import Foundation
//import SwiftUI
//
//struct RR4: View {
//    @EnvironmentObject var sessionManager: SessionManager
//
//
//    let user: User
//     let atmosphere: Atmosphere
//     let friends: [User]
//     let friendAtmospheres: [Atmosphere]
//     let groups: [Group]
//
//    @State private var selectedFriends: [String] = []
//    @State private var colors: [Color] = [ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3]
//    @State private var shareColor = ColorManager.purple5
//    @State private var showingAlert = false
//
//    @State private var counter = 0
//
//    @State private var mood: Int = -1
//    @State private var summary = ""
//    @State private var sharedWith: [String] = []
//    @State private var colorChangeTap: String = ""
//    @State private var shareTapped: Bool = false
//
//    var body: some View {
//
//
//        ZStack {
//
//            Image("CareHeartBalloon 1")
//                .ignoresSafeArea()
//                .scaledToFit()
//                .opacity(0.8)
//
//                VStack {
//
//
//                    Text("Sharing my")
//                        .font(.system(size: 45))
//                        .foregroundColor(Color.white)
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//
//                    Text("Crushes")
//                        .font(.system(size: 45))
//                        .foregroundColor(Color.white)
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//
////                    Text("Hugs")
////                        .font(.system(size: 45))
////                        .foregroundColor(Color.white)
////                        .fontWeight(.light)
////                        .multilineTextAlignment(.center)
////
//
//                    ZStack {
//
//                        Spacer()
//                            .frame(height: 70)
//
//                        Image(systemName: "circle.fill")
//                            .resizable()
//                            .foregroundColor(Color.purple)
//                            .frame(width: 375, height: 375)
//                            .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
//                            .opacity(0.9)
//                        VStack {
//
//
//                            Spacer()
//                                .frame(height: 30)
//
//                            Text("Celibrity \n\nBoyfriend \n\nGirlfriend")
//                                .font(.system(size: 27))
//                                .fontWeight(.regular)
//                                .font(.system(size: 30))
//                                .foregroundColor(Color.cyan)
//                                .fontWeight(.thin)
//                                .multilineTextAlignment(.center)
//
//
//                            Spacer()
//                                .frame(height: 30)
//
//
//                        }
//
//                    }
//                        VStack {
//
//                            Spacer()
//                                .frame(height: 20)
//
//
//
//                            NavigationLink(
//                                destination: FH7(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
//                                label: {
//                                    Text("->")
//                                        .fontWeight(.thin)
//                                        .foregroundColor(Color.white)
//                                        .frame(width: 40, height: 40)
//                                        .font(.system(size: 30))
//                                        .background(ColorManager .grey2)
//                                        .opacity(0.95)
//                                        .cornerRadius(5)
//                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                                }
//
//                            )}
//
//
//
//
//                                Spacer()
//                                    .frame(height: 80)
//
//                        }
//
//                    }
//
//                }
//
//            }
//
