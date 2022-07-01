//
//  FightLandingView.swift
//  BestFriends
//
//  Created by Social Tech on 4/30/22.
//

import Foundation

import SwiftUI
import AVKit

struct Step2_FightLandingView: View {
    
    let user: User
    let friends: [User]
    
//    @State private var colorChangeTap: String = ""
    
    var body: some View {
        
        ZStack {
            ColorManager.purple4
                .ignoresSafeArea()
                .onAppear()
             
            VStack {
                    Text("Let your friend know")
                        .font(.system(size: 40))
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color.white)
                    
                    
                    Text("you're ready")
                        .font(.system(size: 40))
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color.white)
                    
                    Text("to fix this")
                        .font(.system(size: 40))
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color.white)
                    
                    VStack {
                        
                        Spacer()
                            .frame(height: 10)
                  
                    }
                    
                    
//                    VStack {
////                        HStack {
////                            NavigationLink(
////                                destination: BreathInView(),
////                                label: {
////                                    Text("ALL")
////                                        .fontWeight(.bold)
////                                        .frame(width: 100, height: 30)
////                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
////                                        .font(.system(size: 15))
////                                        .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
////                                        .cornerRadius(25)
////                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
////                                })
////
////                            if friends.count > 0 {
////                                RectView(user: user, friend: friends[0])
////                            }
////
////                            if friends.count > 1 {
////                                RectView(user: user, friend: friends[1])
////                            }
////                        }
////                        Spacer()
////                            .frame(height: 15)
////
////                        HStack {
////                            if friends.count > 2 {
////                                RectView(user: user, friend: friends[2])
////                            }
////
////                            if friends.count > 3 {
////                                RectView(user: user, friend: friends[3])
////                            }
////
////                            if friends.count > 4 {
////                                RectView(user: user, friend: friends[4])
////                            }
////                        }
////
                        
//                        HStack {
//                            if friends.count > 1 {
//                                Button(action: {
//
//                                },
//                                       label: {
//                                    Text("ALL")
//                                        .fontWeight(.bold)
//                                        .frame(width: 100, height: 30)
//                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                        .font(.system(size: 15))
//                                        .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
//                                        .cornerRadius(25)
//                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                                })
//                            }
//                            if friends.count > 0 {
//                                RectView(user: user, friend: friends[0], color: sharedWith.contains(friends[0].id) ? ColorManager.purple3 : ColorManager.purple5)
//                                    .onTapGesture(perform: {
//                                        if sharedWith.contains(friends[0].id) {
//                                            sharedWith = sharedWith.filter { $0 != friends[0].id }
//                                        } else {
//                                            sharedWith.append(friends[0].id)
//                                        }
//                                        print(sharedWith)
//                                    })
//                            }
//
//                            if friends.count > 1 {
//                                RectView(user: user, friend: friends[1], color: sharedWith.contains(friends[1].id) ? ColorManager.purple3 : ColorManager.purple5)
//                                    .onTapGesture(perform: {
//                                        if sharedWith.contains(friends[1].id) {
//                                            sharedWith = sharedWith.filter { $0 != friends[1].id }
//                                        } else {
//                                            sharedWith.append(friends[1].id)
//                                        }
//                                        print(sharedWith)
//                                    })
//                            }
//                        }
//
//                        HStack {
//                            if friends.count > 2 {
//                                RectView(user: user, friend: friends[2], color: sharedWith.contains(friends[2].id) ? ColorManager.purple3 : ColorManager.purple5)
//                                    .onTapGesture(perform: {
//                                        if sharedWith.contains(friends[2].id) {
//                                            sharedWith = sharedWith.filter { $0 != friends[2].id }
//                                        } else {
//                                            sharedWith.append(friends[2].id)
//                                        }
//                                        print(sharedWith)
//                                    })
//                            }
//
//                            if friends.count > 3 {
//                                RectView(user: user, friend: friends[3], color: sharedWith.contains(friends[3].id) ? ColorManager.purple3 : ColorManager.purple5)
//                                    .onTapGesture(perform: {
//                                        if sharedWith.contains(friends[3].id) {
//                                            sharedWith = sharedWith.filter { $0 != friends[3].id }
//                                        } else {
//                                            sharedWith.append(friends[3].id)
//                                        }
//                                        print(sharedWith)
//                                    })
//                            }
//
//                            if friends.count > 4 {
//                                RectView(user: user, friend: friends[4], color: sharedWith.contains(friends[4].id) ? ColorManager.purple3 : ColorManager.purple5)
//                                    .onTapGesture(perform: {
//                                        if sharedWith.contains(friends[4].id) {
//                                            sharedWith = sharedWith.filter { $0 != friends[4].id }
//                                        } else {
//                                            sharedWith.append(friends[4].id)
//                                        }
//                                        print(sharedWith)
//                                    })
//                            }
//                        }
//
//                        Button(action: {
//                            defaultMessageButtonTapped(defaultMessage: "SHARE")
//                            shareMood()
//                        },
//                               label: {
//                            Text("Share")
//                                .fontWeight(.thin)
//                                .frame(width: 100, height: 35)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .font(.system(size: 30))
//
//                                .background(colorChangeTap == "SHARE" ? ColorManager.grey3 : ColorManager.purple3)
//
//    //                            .background(ColorManager.purple3)
//                                .cornerRadius(15)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                        })
//
                        
                        Spacer()
                            .frame(height: 40)
                        
                        
                        Text("Tip")
                            .font(.system(size: 27))
                            .fontWeight(.light)
                            .foregroundColor(Color.green)
                            .multilineTextAlignment(.center)
                        
                        Text("If they fail to respond they \nmost likely need more time - stay calm.")
                            .font(.system(size: 20))
                            .italic()
                            .fontWeight(.light)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                        
                        VStack {
                            
                            
                            Spacer ()
                                .frame(height: 20)
                            
                            NavigationLink(
                                destination: Step3_BreathInviteView(user: user, friends: friends),
                                label: {
                                    Text("NEXT")
                                        .fontWeight(.thin)
                                        .frame(width: 100, height: 40)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 30))
                                        .background(ColorManager.purple3)
                                        .cornerRadius(15)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                    
                                    
                                })
                            
                            
                            
                        }
                        
                    }
                }
                
            }
            
        }
        
    
    
    private struct RectView: View {
        let user: User
        let friend: User
        
        var body: some View {
            Button(action: {
                RestApi.instance.sendPushNotification(title: "BestFriends - Resolve Argument", body: "\(user.firstName) invited you to fix an argument", APNToken: friend.APNToken )
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
            
//            private func defaultMessageButtonTapped(defaultMessage: String) {
//                self.colorChangeTap = defaultMessage
//
            
        }
    }
    






//struct FightLandingView_Previews : PreviewProvider {
//    static var previews: some View {
//        Step2_FightLandingView(user: User(id: "", firstName: "", lastName: "", APNToken: "", atmosphere: ""), friends: [])
//    }
//}


