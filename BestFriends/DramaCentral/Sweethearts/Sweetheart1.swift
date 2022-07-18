//
//  Sweetheart1.swift
//  BestFriends
//
//  Created by Social Tech on 7/16/22.
//



import Foundation
import Combine
import SwiftUI
import AVKit


struct Sweetheart1: View {
    
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
            
            
            Image("blueBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
  
            VStack {
           

  
                Text("Facing the")
                    .font(.system(size: 20))
                    .italic()
                    .fontWeight(.thin)
                    .foregroundColor(ColorManager.grey1)
                
                Text("M U S I C")
                    .font(.system(size: 40))
                    .italic()
                    .fontWeight(.thin)
                    .foregroundColor(ColorManager.grey1)
                
                Text("- Please do NOT think flowers take the place of the 'Talk' \n- Look them straight in the eyes, or they will look right on through you! \n- Take responsibility \n- If you are just going to do it again - save them the heartache \n- Grow up or move on!")
                    .fontWeight(.thin)
                    .frame(width: 320, height: 210)
                    .foregroundColor(ColorManager.grey2)
                    .font(.system(size: 20))
                    .background(ColorManager.grey4)
                    .cornerRadius(15)
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    .opacity(0.65)
                
                
                
                
                
                
                
                
                
                
                HStack {
                    Text("ALERT")
                        .font(.system(size: 22))
                        .fontWeight(.regular)
                        .foregroundColor(ColorManager.grey1)
                    
                    Text("Ok, set a time to TALK")
                        .font(.system(size: 20))
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                    
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.leading)
                
                Spacer()
                    .frame(height: 15)
//
//                Text("[SAFETY TIP] If you sleep with someone else you un-repariably break their love & trust forever.")
////                    .font(.system(size: 17))
////                    .italic()
////                    .fontWeight(.thin)
////                    .foregroundColor(Color.white)
//                    .fontWeight(.light)
////                    .italic()
//                    .frame(width: 320, height: 75)
//                    .foregroundColor(ColorManager.grey2)
//                    .font(.system(size: 20))
//                    .background(ColorManager.grey4)
//                    .cornerRadius(15)
//                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                    .opacity(0.65)
//
//
                
                
                
                HStack {
                    
                    
                    
//                MARK: The [All] button is not activated. When tap nothing comes up in the bottom output screen
                    if friends.count > 1 {
                        Button(action: {
                            
                        },
                               label: {
                            Text("select >")
                                .fontWeight(.thin)
//                                .fontWeight(.bold)
                                .frame(width: 100, height: 30)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 20))
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
                        

                        
//                    MARK: Trying to get the the button color to change when tapped
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
                        
                        
                        
                    }
                }
                    
                VStack {
                    Spacer()
                        .frame(height: 20)
                
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
                        
                        .background(colorChangeTap == "SHARE" ? ColorManager.grey3 : ColorManager.grey4)
                        
//                            .background(ColorManager.purple3)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    
                 
                })
                      Spacer ()
                    .frame(height: 15)
                
                Button(action: {
                    sessionManager.showLogin()
                },
                    label: {
                        Text("Home / Chat")
                            .fontWeight(.thin)
                            .frame(width: 200, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.grey2)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                    
                
                    
                    Spacer()
                    .frame(height: 55)
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
                RestApi.instance.sendPushNotification(title: "BestFriends - Messed Up", body: "\(user.firstName) Sent you something in Chat", APNToken: friend.APNToken )
            },
                   label: {
                Text(friend.firstName + " " + String(friend.lastName.first!))
                    .fontWeight(.bold)
                    .frame(width: 100, height: 30)
                    .background(ColorManager.grey2)
//                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
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





