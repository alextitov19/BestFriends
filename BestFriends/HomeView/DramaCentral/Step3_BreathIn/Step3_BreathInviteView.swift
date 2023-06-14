//
//  BreathInviteView.swift
//  BestFriends
//
//  Created by Social Tech on 4/16/22.
//

import Foundation
import SwiftUI
import AVKit

struct Step3_BreathInviteView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    
    var body: some View {
        
        ZStack {
            
            ColorManager.grey2
                  .ignoresSafeArea()
          
//            // Stars animation...
//            AdPlayerView(name: "backgroundAnimation")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//            
            VStack{
                
                Text("Ok, something bad just happened")
                    .font(.system(size: 30, weight: .bold))
                    .fontWeight(.ultraLight)
                    .foregroundColor(ColorManager .grey4)
                    .multilineTextAlignment(.center)
                    
                HStack {
                    
                  
                }
                
                VStack {
                    
                   
                    
                    
                    Spacer()
                        .frame(height: 10)
                    
                    VStack {
                        NavigationLink(
                            destination: BreathInView(),
                            label: {
                                Text("Take a Breath - Exhale")
                                    .fontWeight(.thin)
                                    .frame(width: 300, height: 60)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 30))
                                    .background(ColorManager.pmbc_blue)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            })
                        
                        
                        
                        Spacer()
                            .frame(height: 10)

                        Spacer ()
                            .frame(height: 30)
                        
                        NavigationLink(
                            destination: Step4_NuclearOption(user: user, friends: friends),
                            label: {
                                Text("Fight with Friend?")
                                    .fontWeight(.thin)
                                    .frame(width: 310, height: 40)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 30))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            })
                        
                        Spacer()
                            .frame(height: 15)
                        
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
                       
                    
                    Spacer ()
                            .frame(height: 150)
                    }
                    
                }
                
            }
            
        }
    }
   
    
    
    
    //
    //                        Text("Try with a Friend")
    //                            .font(.system(size: 40, weight: .thin))
    //                            .foregroundColor(Color.blue)
    //
    //                        Spacer()
    //                            .frame(height: 20)
    //                    }
    //
    //
    //                    VStack {
    //                        HStack {
    //                            NavigationLink(
    //                                destination: BreathInView(),
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
    //
    //                        Spacer()
    //                            .frame(height: 35)
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
    //                        VStack {
    //
    //                            NavigationLink(
    //                                destination: EmptyView(),
    //                                label: {
    //                                    Text("Invite")
    //                                        .fontWeight(.thin)
    //                                        .font(.system(size: 30))
    //                                        .foregroundColor(Color.white)
    //                                        .frame(width: 160, height: 40)
    //                                        .font(.system(size: 30))
    //
    //                                        .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
    //
    //                                        .cornerRadius(15)
    //                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
    //
    //
    //                                }
    //
    //                            )}
    //
    
    
//    private struct RectView: View {
//        let user: User
//        let friend: User
//
//        var body: some View {
//            Button(action: {
//                RestApi.instance.sendPushNotification(title: "Take a breath", body: "\(user.firstName) invited you to take a breath with them!", APNToken: friend.APNToken )
//            },
//                   label: {
//                Text(friend.firstName + " " + String(friend.lastName.first!))
//                    .fontWeight(.bold)
//                    .frame(width: 100, height: 30)
//                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                    .font(.system(size: 10))
//                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
//                    .cornerRadius(25)
//                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//            })
        }
    




//struct Step3_BreathInviteView_Previews : PreviewProvider {
//    static var previews: some View {
//        Step3_BreathInviteView()
//    }
//}


