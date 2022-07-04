//
//  FaceTimeCall.swift
//  BestFriends
//
//  Created by Social Tech on 6/13/22.
//

import Foundation

import SwiftUI
import AVKit

struct FaceTimeCall: View {
    
    let user: User
    let friends: [User]
    
    var body: some View {
        
        ZStack {
            
            ColorManager.grey4
                  .ignoresSafeArea()
            
//            Image("purpleBackground")
//                .resizable()
//                .scaledToFill()
//                .ignoresSafeArea()
//                .onAppear {
//                    
//                    
//                }
//            
//            // Stars animation...
//            AdPlayerView(name: "backgroundAnimation")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//            
//            
            //
            VStack{
                HStack {
                }
                
                VStack {
                    
                    Text("FriendGroup")
                        .font(.system(size: 30))
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color.purple)
                    
                    
                    Text("FaceTime")
                        .font(.system(size: 60))
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color.purple)
                        .kerning(10)
                    
                    Text("on you iPhone")
                        .font(.system(size: 40))
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color.purple)
                    
                    VStack {
                        
                        Spacer()
                            .frame(height: 10)
                        
                          Text("Invite your friends to try to fix \nthe drama in your FriendGroup.")
                            .font(.system(size: 25))
                            
                            .foregroundColor(.white)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                    Spacer()
                            .frame(height: 60)
                    }
                    
//
//                    VStack {
//                        HStack {
//                            NavigationLink(
//                                destination: EmptyView(),
//                                label: {
//                                    Text("ALL")
//                                        .fontWeight(.bold)
//                                        .frame(width: 100, height: 30)
//                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                        .font(.system(size: 15))
//                                        .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
//                                        .cornerRadius(25)
//                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                                })
//
//                            if friends.count > 0 {
//                                RectView(user: user, friend: friends[0])
//                            }
//
//                            if friends.count > 1 {
//                                RectView(user: user, friend: friends[1])
//                            }
//                        }
//                        Spacer()
//                            .frame(height: 35)
//
//                        HStack {
//                            if friends.count > 2 {
//                                RectView(user: user, friend: friends[2])
//                            }
//
//                            if friends.count > 3 {
//                                RectView(user: user, friend: friends[3])
//                            }
//
//                            if friends.count > 4 {
//                                RectView(user: user, friend: friends[4])
//                            }
//                        }
//
                        Spacer()
                            .frame(height: 40)

                        VStack {
                            
                            
                            Spacer ()
                                .frame(height: 20)
                                                        
                        }
                        
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
                RestApi.instance.sendPushNotification(title: "BestFriends - FriendGroup", body: "\(user.firstName) Setup FaceTime Call", APNToken: friend.APNToken )
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
    





//
//struct FaceTimeCall_Previews : PreviewProvider {
//    static var previews: some View {
//        FaceTimeCall(user: User(id: "", firstName: "", lastName: "", APNToken: "", atmosphere: ""), friends: [])
//    }
//}


