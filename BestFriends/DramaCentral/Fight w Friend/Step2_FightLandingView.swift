//
//  FightLandingView.swift
//  BestFriends
//
//  Created by Social Tech on 4/30/22.
//
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
            
            ColorManager.purple3
                  .ignoresSafeArea()
//
//            ColorManager.grey2
//                  .ignoresSafeArea()
//
//            // Stars animation...
//            AdPlayerView(name: "backgroundAnimation")
//                .ignoresSafeArea()
//                .blendMode(.screen)
          
            VStack{
                
               

                HStack {
                }
                
                VStack {
                    
                
 
                    
                    Spacer()
                        .frame(height: 20)

                    
                    Text("Who's Notification")
                        .font(.system(size: 35, weight: .ultraLight))
                        .foregroundColor(Color.purple)
                    Text("going to?")
                        .font(.system(size: 35, weight: .ultraLight))
                        .foregroundColor(Color.purple)

      
                    VStack {
                        
                        Spacer()
                            .frame(height: 7)
                        
                        Text("(Please tap only once)")
                            .font(.system(size: 15))
                            .italic()
                            .fontWeight(.thin)
                            .foregroundColor(Color.black)
                        
                        HStack {
//                            NavigationLink(
//                                destination: EmptyView(),
//                                label: {
                                    Text("select >")
                                        .fontWeight(.thin)
//                                        .fontWeight(.bold)
                                        .frame(width: 100, height: 30)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 20))
                                        .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
                                        .cornerRadius(25)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                                })

                            if friends.count > 0 {
                                RectView(user: user, friend: friends[0])
                            }

                            if friends.count > 1 {
                                RectView(user: user, friend: friends[1])
                            }
                        }

                        Spacer()
                            .frame(height: 15)
                        HStack {
                            if friends.count > 2 {
                                RectView(user: user, friend: friends[2])
                            }

                            if friends.count > 3 {
                                RectView(user: user, friend: friends[3])
                            }

                            if friends.count > 4 {
                                RectView(user: user, friend: friends[4])
                            }
                        }

                        VStack {

                            Spacer()
                                .frame(height: 15)
                            
                         
                            
                            Text("(Now you know they got your message)")
                                .font(.system(size: 15, weight: .bold))
                                .italic()
                                .fontWeight(.ultraLight)
                                .foregroundColor(Color.black)
                           
                            NavigationLink(
                                destination: TryThis(),
                                label: {
                                    Text("Calm your 'Waiting Anxiety'")
                                        .fontWeight(.thin)
                                        .foregroundColor(Color.white)
                                        .frame(width: 310, height: 40)
                                        .font(.system(size: 27))
                                        .background(ColorManager.purple5)
                                        
        //                                .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
        //
                                        .cornerRadius(15)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                  }
                         
                              )}
                          
                        Spacer()
                            .frame(height: 35)
                        
                            Text("(When you're ready try to set a time to talk)")
                                .font(.system(size: 15))
                                .italic()
                                .fontWeight(.thin)
                                .foregroundColor(Color.black)
                            
//                            MARK: New [Next] button going go HugitOut
                            
                            
                      
                            
                            NavigationLink(
                                destination: Step7_TimeToTalk(),
                                label: {
                                    Text("Final Step")
                                        .fontWeight(.thin)
                                        .foregroundColor(Color.white)
                                        .frame(width: 200, height: 40)
                                        .font(.system(size: 30))
                                        .background(ColorManager.purple3)
                                        
        //                                .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
        //
                                        .cornerRadius(15)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                  }
                         
                              )}
                        
                        
                            
//                            MARK: old [Invite] buttom going nowhere - was supposed to be a [Submit] button that changed color when tapped. But, having difficult time getting it to work - so changed it out to the above
                            
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
//                                }
//
//                            )}
                       
                        Spacer()
                            .frame(height: 150)

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
                RestApi.instance.sendPushNotification(title: "BeatFriends - Fight", body: "\(user.firstName) Invited you to try to fix this Fight!", APNToken: friend.APNToken )
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
//func defaultMessageButtonTapped(defaultMessage: String) {
//    self.colorChangeTap = defaultMessage
//}
//}

