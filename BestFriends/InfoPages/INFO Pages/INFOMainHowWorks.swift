//
//  INFOMainHowWorks.swift
//  BestFriends
//
//  Created by Social Tech on 12/20/22.
//


import Foundation

import SwiftUI


struct INFOMainHowWorks: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    //    let user: User
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    let groups: [Group]
    
    
    
    
    var body: some View {
        ZStack {
            
            
            ColorManager.purple1
                .ignoresSafeArea()
                .onAppear()
            
            
            VStack {
                VStack {
                    HStack {
                        ZStack  {
                            Image(systemName: "heart.fill")
                                .resizable()
                                .foregroundColor(ColorManager .purple3)
                                .frame(width: 175, height: 125)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            //                                .shadow(color: .purple, radius: 65, x: 30, y: 50)
                                .opacity(0.95)
                            Spacer()
                                .frame(height: 20)
                            
                            Image(systemName: "heart.fill")
                                .resizable()
                                .foregroundColor(ColorManager .purple2)
                                .frame(width: 125, height: 100)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            //                                .shadow(color: .purple, radius: 65, x: 30, y: 50)
                                .opacity(0.95)
                            
                        }
                        
                        
                    }
                    
                    
                    
                    
                    
                    Spacer()
                        .frame(height: 20)
                    
                    //
                    //                        Text("Difficult Days")
                    //                            .font(.system(size: 27, weight: .bold))
                    //                            .foregroundColor(ColorManager .grey3)
                    //                            .shadow(color: .purple, radius: 1, x: 0, y: 1)
                    //                            .opacity(0.50)
                    //                            .multilineTextAlignment(.center)
                    
                    
                    
                    
                    
                    VStack {
                    }
                }
                
                VStack {
                    
                    
                    HStack {
                        ZStack {
                            
                        }
                        
                        NavigationLink(
                            destination: InviteView(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                            label: {
                                Text("Invite Friends ->tap + planet")
                                    .fontWeight(.thin)
                                    .frame(width: 310, height: 40)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 25))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(10)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                            })
                        
                    }
                    
                    
                    Spacer()
                        .frame(height: 15)
                    //                        Text("Helping Friends")
                    //                            .font(.system(size: 27, weight: .bold))
                    //                            .foregroundColor(ColorManager .grey3)
                    //                            .shadow(color: .purple, radius: 1, x: 0, y: 1)
                    //                            .opacity(0.50)
                    //                            .multilineTextAlignment(.center)
                    
                    HStack {
                        ZStack {
                            
                        }
                        
                        
                        
                        NavigationLink(
                            destination: InfoInsideChat(user: user),
                            label: {
                                Text("Create New chat rooms")
                                    .fontWeight(.thin)
                                    .frame(width: 310, height: 40)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 25))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(10)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                            })
                    }
                    
                    Spacer()
                        .frame(height: 15)
                    
                    HStack {
                        ZStack {
                            //                                Image(systemName: "rectangle.fill")
                            //                                    .resizable()
                            //                                    .foregroundColor(ColorManager .purple2)
                            //                                    .frame(width: 40, height: 40)
                            //                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            //                                //                                .shadow(color: .purple, radius: 65, x: 30, y: 50)
                            //                                    .opacity(0.95)
                            //
                            //                                Image("IconNiceNew40")
                        }
                        
                        
                        
                        
                        NavigationLink(
                            //                                destination: InfoSilence(user: user),
                            destination: MyRoomView(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                            label: {
                                Text("MyRoom ->Tap your planet")
                                    .fontWeight(.thin)
                                    .foregroundColor(Color.white)
                                    .frame(width: 310, height: 40)
                                    .font(.system(size: 25))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(10)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                            })
                    }
                    
                    Spacer()
                        .frame(height: 15)
                    
                    
                    HStack {
                        ZStack {
                            //                                Image(systemName: "rectangle.fill")
                            //                                    .resizable()
                            //                                    .foregroundColor(ColorManager .purple2)
                            //                                    .frame(width: 40, height: 40)
                            //                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            //
                            //                                    .shadow(color: .purple, radius: 65, x: 30, y: 50)
                            //                                    .opacity(0.95)
                            //
                            //                                Image("IconFightNew40")
                        }
                        
                        
                        NavigationLink(
                            
                            destination: InfoPushNotifications(user: user),
                            label: {
                                Text("Streaks with Purpose")
                                    .fontWeight(.thin)
                                    .foregroundColor(Color.white)
                                    .frame(width: 300, height: 40)
                                    .font(.system(size: 25))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(10)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                            }
                        )}
                    //
                    Spacer()
                        .frame(height: 15)
                    
                    VStack {
                        HStack {
                            ZStack {
                                
                            }
                            
                            NavigationLink(
                                destination: InfoPushNotifications(user: user),
                                label: {
                                    Text("")
                                        .fontWeight(.thin)
                                        .frame(width: 300, height: 40)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 23))
                                        .background(ColorManager.purple3)
                                        .cornerRadius(10)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    //                            NavigationLink(
                                    //
                                    //                                destination: InfoSilence(user: user),
                                    //                                label: {
                                    //                                    Text("my Room")
                                    //                                        .fontWeight(.thin)
                                    //                                        .foregroundColor(Color.white)
                                    //                                        .frame(width: 200, height: 40)
                                    //                                        .font(.system(size: 25))
                                    //                                        .background(ColorManager.purple3)
                                    //                                        .cornerRadius(10)
                                    //                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                }
                            )}
                        
                        Spacer()
                            .frame(height: 25)
                        
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
                    }
                    
                    //                    VStack {
                    //
                    //                        Spacer()
                    //                            .frame(height: 50)
                    //
                    //                        NavigationLink(
                    //
                    //                            destination: InviteView(user: user, atmosphere: atmosphere, friends: friends,  friendAtmospheres: friendAtmospheres, groups: groups),
                    //                            label: {
                    //                                Text("Get Started \nInvite your friends")
                    //                                    .fontWeight(.light)
                    //                                    .foregroundColor(Color.white)
                    //                                    .frame(width: 200, height: 60)
                    //                                    .font(.system(size: 22))
                    //                                    .background(ColorManager.pmbc_green)
                    //                                    .cornerRadius(7)
                    //                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    //
                    //                            }
                    //                        )}
                    
                    VStack {
                        
                        
                        
                        //                        NavigationLink(
                        //
                        //                            destination: PlanetBell(user: user),
                        //                            label: {
                        //                                Text("How our real-time \nPush Notifications Work")
                        //                                    .fontWeight(.thin)
                        //                                    .foregroundColor(Color.white)
                        //                                    .frame(width: 250, height: 50)
                        //                                    .font(.system(size: 19))
                        //                                    .background(ColorManager.pmbc_green)
                        //                                    .cornerRadius(7)
                        //                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        //
                        //                            }
                        //                        )}
                        
                        //
                        //                        Button(action: {
                        //                            sessionManager.showLogin()
                        //                        },
                        //                               label: {
                        //                            Image("home-alt2")
                        //                                .frame(width: 50, height: 25)
                        //                                .foregroundColor(.white)
                        //                                .font(.system(size: 20))
                        //                                .background(Color .black)
                        //                                .cornerRadius(15)
                        //                                .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                        //                                .opacity(0.70)
                        //
                        //                        })
                        
                        //            func shareButtonTapped() {
                        ////                sendMessage()
                        ////
                        ////                if selectedFriends.count == 0 { return }
                        ////                for id in selectedFriends {
                        ////                    for f in friends {
                        ////                        if f.id == id {
                        ////                            RestApi.instance.sendPushNotification(title: "BestFriends World FriendGroups", body: "\(user.firstName) sent you 'Nice' message. Take a moment and send one back! Tap friend's planet on Home pg, then tap [Friend said something 'Nice'] from dropdown.", APNToken: f.APNToken)
                        ////                        }
                        ////                    }
                        //                }
                        Spacer()
                            .frame(height: 80)
                        
                    }
                }
                
            }
        }
        
    }
    
    
}
