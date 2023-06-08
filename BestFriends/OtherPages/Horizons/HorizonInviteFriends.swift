//
//  HorizonInviteFriends.swift
//  BestFriends
//
//  Created by Christine Maldonado on 7/17/22.
//

import SwiftUI

struct HorizonInviteFriends: View {
   
    let friends: [User]
    let user: User
    let atmosphere: Atmosphere
    
    @State private var mood: Int = -1
    @State private var summary = ""
    @State private var invitedFriends: [String] = []
    @State private var sharedFriends: [String] = []
    @State private var colorChangeTap: String = ""
    
    var body: some View {
        
        
        ZStack
        {
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            VStack
            {
                VStack {
                    
                    Text("Share with friends")
                        .font(.system(size: 30))
                    
                        .fontWeight(.light)
                        .foregroundColor(ColorManager.grey1)
                        .padding(.horizontal)
                }//VStack
                
                HStack {
                    
                    if friends.count > 0 {
                        RectView(user: user, friend: friends[0], color: sharedFriends.contains(friends[0].id) ? ColorManager.purple3 : ColorManager.purple5)
                            .onTapGesture(perform: {
                                if sharedFriends.contains(friends[0].id) {
                                    sharedFriends = sharedFriends.filter { $0 != friends[0].id }
                                } else {
                                    sharedFriends.append(friends[0].id)
                                }
                                print(sharedFriends)
                            })
                    }
                    
                    if friends.count > 1 {
                        RectView(user: user, friend: friends[1], color: sharedFriends.contains(friends[1].id) ? ColorManager.purple3 : ColorManager.purple5)
                            .onTapGesture(perform: {
                                if sharedFriends.contains(friends[1].id) {
                                    sharedFriends = sharedFriends.filter { $0 != friends[1].id }
                                } else {
                                    sharedFriends.append(friends[1].id)
                                }
                                print(sharedFriends)
                            })
                    }
                }
                
                HStack {
                    if friends.count > 2 {
                        RectView(user: user, friend: friends[2], color: sharedFriends.contains(friends[2].id) ? ColorManager.purple3 : ColorManager.purple5)
                            .onTapGesture(perform: {
                                if sharedFriends.contains(friends[2].id) {
                                    sharedFriends = sharedFriends.filter { $0 != friends[2].id }
                                } else {
                                    sharedFriends.append(friends[2].id)
                                }
                                print(sharedFriends)
                            })
                    }
                    
                    if friends.count > 3 {
                        RectView(user: user, friend: friends[3], color: sharedFriends.contains(friends[3].id) ? ColorManager.purple3 : ColorManager.purple5)
                            .onTapGesture(perform: {
                                if sharedFriends.contains(friends[3].id) {
                                    sharedFriends = sharedFriends.filter { $0 != friends[3].id }
                                } else {
                                    sharedFriends.append(friends[3].id)
                                }
                                print(sharedFriends)
                            })
                    }
                    
                    if friends.count > 4 {
                        RectView(user: user, friend: friends[4], color: sharedFriends.contains(friends[4].id) ? ColorManager.purple3 : ColorManager.purple5)
                            .onTapGesture(perform: {
                                if sharedFriends.contains(friends[4].id) {
                                    sharedFriends = sharedFriends.filter { $0 != friends[4].id }
                                } else {
                                    sharedFriends.append(friends[4].id)
                                }
                                print(sharedFriends)
                            })
                    }
                }//HStack
                
                Spacer()
                    .frame(height: 50)
                
                VStack {
                    
                    Text("Invite friends to join")
                        .font(.system(size: 30))
                    
                        .fontWeight(.light)
                        .foregroundColor(ColorManager.grey1)
                        .padding(.horizontal)
                }//VStack
                
                HStack {
                    
                    if friends.count > 0 {
                        RectView(user: user, friend: friends[0], color: invitedFriends.contains(friends[0].id) ? ColorManager.purple3 : ColorManager.purple5)
                            .onTapGesture(perform: {
                                if invitedFriends.contains(friends[0].id) {
                                    invitedFriends = invitedFriends.filter { $0 != friends[0].id }
                                } else {
                                    invitedFriends.append(friends[0].id)
                                }
                                print(invitedFriends)
                            })
                    }
                    
                    if friends.count > 1 {
                        RectView(user: user, friend: friends[1], color: invitedFriends.contains(friends[1].id) ? ColorManager.purple3 : ColorManager.purple5)
                            .onTapGesture(perform: {
                                if invitedFriends.contains(friends[1].id) {
                                    invitedFriends = invitedFriends.filter { $0 != friends[1].id }
                                } else {
                                    invitedFriends.append(friends[1].id)
                                }
                                print(invitedFriends)
                            })
                    }
                }
                
                HStack {
                    if friends.count > 2 {
                        RectView(user: user, friend: friends[2], color: invitedFriends.contains(friends[2].id) ? ColorManager.purple3 : ColorManager.purple5)
                            .onTapGesture(perform: {
                                if invitedFriends.contains(friends[2].id) {
                                    invitedFriends = invitedFriends.filter { $0 != friends[2].id }
                                } else {
                                    invitedFriends.append(friends[2].id)
                                }
                                print(invitedFriends)
                            })
                    }
                    
                    if friends.count > 3 {
                        RectView(user: user, friend: friends[3], color: invitedFriends.contains(friends[3].id) ? ColorManager.purple3 : ColorManager.purple5)
                            .onTapGesture(perform: {
                                if invitedFriends.contains(friends[3].id) {
                                    invitedFriends = invitedFriends.filter { $0 != friends[3].id }
                                } else {
                                    invitedFriends.append(friends[3].id)
                                }
                                print(invitedFriends)
                            })
                    }
                    
                    if friends.count > 4 {
                        RectView(user: user, friend: friends[4], color: invitedFriends.contains(friends[4].id) ? ColorManager.purple3 : ColorManager.purple5)
                            .onTapGesture(perform: {
                                if invitedFriends.contains(friends[4].id) {
                                    invitedFriends = invitedFriends.filter { $0 != friends[4].id }
                                } else {
                                    invitedFriends.append(friends[4].id)
                                }
                                print(invitedFriends)
                            })
                    }
                }//HStack
                
                Spacer()
                    .frame(height: 50)
                
                HStack {
                    
                    Button(action: {
                        share()
                        colorChangeTap = "SHARE"
                    },
                           label: {
                        Text("Share")
                            .fontWeight(.thin)
                            .frame(width: 100, height: 35)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                        
                            .background(colorChangeTap == "SHARE" ? ColorManager.grey3 : ColorManager.purple3)
                        
                        //                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })//Button
                    //                    .padding()
                }//HStack
            }//VStack
        }//ZStack
        
    }
    
    private func share() {
        for i in sharedFriends {
            RestApi.instance.sendPushNotification(title: "\(user.firstName) has set a new goal!", body: "Support their journey on BestFriends", APNToken: i)
        }
        for i in invitedFriends {
            RestApi.instance.sendPushNotification(title: "\(user.firstName) has made a new goal!", body: "You have been invited to participate in \(user.firstName)'s new goal.", APNToken: i)
        }
    }
    
    private struct RectView: View {
        let user: User
        let friend: User
        let color: Color
        
        var body: some View {
            Text(friend.firstName + " " + String(friend.lastName.first!))
                .fontWeight(.bold)
                .frame(width: 100, height: 30)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .font(.system(size: 10))
                .background(color)
                .cornerRadius(25)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
        }
        
        
        
    }
    
    private func defaultMessageButtonTapped(defaultMessage: String) {
        self.colorChangeTap = defaultMessage
    }
}

//struct HorizonInviteFriends_Previews: PreviewProvider {
//    static var previews: some View {
//        HorizonInviteFriends()
//    }
//}



//
//VStack{
//
//
//
//    HStack {
//    }
//
//    VStack {
//
//
//
//
//        Spacer()
//            .frame(height: 20)
//
//
//        Text("Who's Notification")
//            .font(.system(size: 35, weight: .ultraLight))
//            .foregroundColor(Color.purple)
//        Text("going to?")
//            .font(.system(size: 35, weight: .ultraLight))
//            .foregroundColor(Color.purple)
//
//
//        VStack {
//
//            Spacer()
//                .frame(height: 7)
//
//            Text("(Please tap only once)")
//                .font(.system(size: 15))
//                .italic()
//                .fontWeight(.thin)
//                .foregroundColor(Color.black)
//
