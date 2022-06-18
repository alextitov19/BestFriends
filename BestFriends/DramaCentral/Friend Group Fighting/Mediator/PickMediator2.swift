//
//  PickMediator2.swift
//  BestFriends
//
//  Created by Social Tech on 6/15/22.
//

import Foundation
import Combine
import SwiftUI
import AVKit


struct PickMediator2: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    let groups: [Group]
    
    @State private var customMessage = "Custom Message"
    @State private var colorChangeTap: String = ""
    @State private var noteTapped = false
    @State private var sharedWith: [String] = []
    
    
    var body: some View {
        ZStack {
                        ColorManager.purple4
                            .ignoresSafeArea()
                            .onAppear()
            
          
            
//            Image("purpleBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
//
            //            AdPlayerView(name: "face")
            //                .ignoresSafeArea()
            //                .blendMode(.screen)
            //
            
            VStack {
                 
                HStack {
                    Text("Each of you will tell \nyour side to the story to \nthe mediator and from \nthere the mediator will \nhelp you work things out.")
                        .font(.system(size: 20))
                        .italic()
                        .foregroundColor(Color.white)
                    Spacer()
//                        .frame(height: 20)
                
                }
                .padding(.horizontal)
                
                
                Text("You must both agree on the \nfriend to be named, Mediator.")
                    .fontWeight(.thin)
                    .frame(width: 310, height: 100)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .font(.system(size: 25))
                    .background(ColorManager.purple3)
                    .cornerRadius(15)
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                
                
                
                
                Text("Hi, I wa")
                    .fontWeight(.thin)
                    .frame(width: 310, height: 100)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .font(.system(size: 25))
                    .background(ColorManager.purple3)
                    .cornerRadius(15)
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                
                
                
                
                
                
                
                
                
                
                
                HStack {
                    Text("Mediator Request")
                        .font(.system(size: 30))
                        .fontWeight(.regular)
                        .foregroundColor(ColorManager.grey4)
                    
                    Text("We need a friend to help us work this out")
                        .font(.system(size: 25))
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                HStack {
                    if friends.count > 1 {
                        Button(action: {
                            
                        },
                               label: {
                            Text("ALL")
                                .fontWeight(.bold)
                                .frame(width: 100, height: 30)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 15))
                                .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
                                .cornerRadius(25)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                    }
                    if friends.count > 0 {
                        RectView(user: user, friend: friends[0])
                            .onTapGesture(perform: {
                                if sharedWith.contains(friends[0].id) {
                                    sharedWith = sharedWith.filter { $0 != friends[0].id }
                                } else {
                                    sharedWith.append(friends[0].id)
                                }
                                print(sharedWith)
                            })
                    }
                    
                    if friends.count > 1 {
                        RectView(user: user, friend: friends[1])
                            .onTapGesture(perform: {
                                if sharedWith.contains(friends[1].id) {
                                    sharedWith = sharedWith.filter { $0 != friends[1].id }
                                } else {
                                    sharedWith.append(friends[1].id)
                                }
                                print(sharedWith)
                            })
                    }
                }
                
                HStack {
                    if friends.count > 2 {
                        RectView(user: user, friend: friends[2])
                            .onTapGesture(perform: {
                                if sharedWith.contains(friends[2].id) {
                                    sharedWith = sharedWith.filter { $0 != friends[2].id }
                                } else {
                                    sharedWith.append(friends[2].id)
                                }
                                print(sharedWith)
                            })
                    }
                    
                    if friends.count > 3 {
                        RectView(user: user, friend: friends[3])
                            .onTapGesture(perform: {
                                if sharedWith.contains(friends[3].id) {
                                    sharedWith = sharedWith.filter { $0 != friends[3].id }
                                } else {
                                    sharedWith.append(friends[3].id)
                                }
                                print(sharedWith)
                            })
                    }
                    
                    if friends.count > 4 {
                        RectView(user: user, friend: friends[4])
                                 
//                                 , color: sharedWith.contains(friends[4].id) ? ColorManager.purple3 : ColorManager.purple5)
                           
                            .onTapGesture(perform: {
                                if sharedWith.contains(friends[4].id) {
                                    sharedWith = sharedWith.filter { $0 != friends[4].id }
                                } else {
                                    sharedWith.append(friends[4].id)
                                }
                                print(sharedWith)
                            })
                        
//
//                        if friends.count > 4 {
//                            RectView(user: user, friend: friends[4], color: sharedWith.contains(friends[4].id) ? ColorManager.purple3 : ColorManager.purple5)
//                                .onTapGesture(perform: {
//                                    if sharedWith.contains(friends[4].id) {
//                                        sharedWith = sharedWith.filter { $0 != friends[4].id }
//                                    } else {
//                                        sharedWith.append(friends[4].id)
//                                    }
//                                    print(sharedWith)
//                                })
//
                        
                        
                        
                        
                        
                        
                        
                        
                        Button(action: {
                            defaultMessageButtonTapped(defaultMessage: "SHARE")
//                            shareMood()
                        },
                               label: {
                            Text("SHARE")
                                .fontWeight(.thin)
                                .frame(width: 100, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                
                                .background(colorChangeTap == "SHARE" ? ColorManager.grey3 : ColorManager.purple3)
                                
    //                            .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            
                         
                        })
                      
                        
                        
                    }
                }
            }
        }
    }
    
    func limitText(_ upper: Int) {
        if customMessage.count > upper {
            customMessage = String(customMessage.prefix(upper))
        }
    }
    
    func sendMessage() {
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
    }
    
    struct RectView: View {
        let user: User
        let friend: User
        
        var body: some View {
            Button(action: {
                RestApi.instance.sendPushNotification(title: "BestFriends", body: "\(user.firstName) Request you as a Mediator", APNToken: friend.APNToken )
            },
                   label: {
                Text(friend.firstName + " " + String(friend.lastName.first!))
                    .fontWeight(.bold)
                    .frame(width: 100, height: 30)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .font(.system(size: 10))
                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                    .cornerRadius(25)
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
            })
        }
    }
    
    
    
    
    func defaultMessageButtonTapped(defaultMessage: String) {
        self.colorChangeTap = defaultMessage
    }
}








//
//
//struct HurtFeelings3_Previews : PreviewProvider {
//    static var previews: some View {
//HurtFeelings3()
//    }
//}

