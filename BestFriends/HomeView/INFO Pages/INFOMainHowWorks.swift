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
  
                
                Text("sharing")
                    .italic()
                    .font(.system(size: 20))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple3)
                
                
                Text("Emotional Moments")
                    .font(.system(size: 25))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple5)
                
                Text("with my 5 BFFs")
                    .font(.system(size: 20))
                    .italic()
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple3)
                
        VStack {
            HStack {
                ZStack {
                    Image(systemName: "heart.fill")
                        .resizable()
                        .foregroundColor(ColorManager .purple2)
                        .frame(width: 40, height: 40)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    //                                .shadow(color: .purple, radius: 65, x: 30, y: 50)
                        .opacity(0.95)
                    
                    //                Image("IconPhotoNew40")
                }
                
                //                    InfoAddFriends(user: user),
//
//                NavigationLink(
//                    destination: InfoWhyLoveFB(user: user),
//                    label: {
//                        Text("Why I love BF")
//                            .fontWeight(.thin)
//                            .frame(width: 150, height: 30)
//                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                            .font(.system(size: 25))
//                            .background(ColorManager .purple2)
//                            .cornerRadius(10)
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//                    })
                
            }
                    
                    
            
  
            
            Spacer()
                .frame(height: 20)
            
            
            Text("Walk-though")
                .font(.system(size: 27, weight: .bold))
                .foregroundColor(ColorManager .grey1)
                .shadow(color: .purple, radius: 1, x: 0, y: 1)
                .opacity(0.50)
                .multilineTextAlignment(.center)
            
            
            
                    Spacer()
                        .frame(height: 10)
                    
            VStack {
                }
            }
            
            VStack {
                        
                        Spacer()
                            .frame(height: 15)
                
                HStack {
                    ZStack {
                        Image(systemName: "rectangle.fill")
                            .resizable()
                            .foregroundColor(ColorManager .purple2)
                            .frame(width: 40, height: 40)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        //                                .shadow(color: .purple, radius: 65, x: 30, y: 50)
                            .opacity(0.95)
                        
                        Image("iconStar40")
                    }
                    
                    NavigationLink(
                        destination: InfoCreateChatRm(user: user),
                        label: {
                            Text("Vibe")
                                .fontWeight(.thin)
                                .frame(width: 200, height: 40)
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
                                Image(systemName: "rectangle.fill")
                                    .resizable()
                                    .foregroundColor(ColorManager .purple2)
                                    .frame(width: 40, height: 40)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                //                                .shadow(color: .purple, radius: 65, x: 30, y: 50)
                                    .opacity(0.95)
                                
                                Image("IconHugNew40")
                            }
                            
                            
                            NavigationLink(
                                destination: InfoInsideChat(user: user),
                                label: {
                                    Text("HUG")
                                        .fontWeight(.thin)
                                        .frame(width: 200, height: 40)
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
                                Image(systemName: "rectangle.fill")
                                    .resizable()
                                    .foregroundColor(ColorManager .purple2)
                                    .frame(width: 40, height: 40)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                //                                .shadow(color: .purple, radius: 65, x: 30, y: 50)
                                    .opacity(0.95)
                                
                                Image("IconNiceNew40")
                            }
                            
                            NavigationLink(
                                destination: InfoPushNotifications(user: user),
                                label: {
                                    Text("Something Nice")
                                        .fontWeight(.thin)
                                        .frame(width: 200, height: 40)
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
                                Image(systemName: "rectangle.fill")
                                    .resizable()
                                    .foregroundColor(ColorManager .purple2)
                                    .frame(width: 40, height: 40)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                                    .shadow(color: .purple, radius: 65, x: 30, y: 50)
                                    .opacity(0.95)
                                
                                Image("IconFightNew40")
                            }
                            
                            
                            NavigationLink(
                                
                                destination: SettingsNotificationsView(user: user),
                                label: {
                                    Text("Drama Central")
                                        .fontWeight(.thin)
                                        .foregroundColor(Color.white)
                                        .frame(width: 200, height: 40)
                                        .font(.system(size: 25))
                                        .background(ColorManager.purple3)
                                        .cornerRadius(10)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                }
                            )}
                        //
                        Spacer()
                            .frame(height: 15)

                        
                        HStack {
                           ZStack {
                            Image(systemName: "rectangle.fill")
                                .resizable()
                                .foregroundColor(ColorManager .purple2)
                                .frame(width: 40, height: 40)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            
                                .shadow(color: .purple, radius: 65, x: 30, y: 50)
                                .opacity(0.95)
                            
                            Image("iconSilence")
                        }
                            
                            
                            NavigationLink(
                                
                                destination: InfoSilence(user: user),
                                label: {
                                    Text("My Room")
                                        .fontWeight(.thin)
                                        .foregroundColor(Color.white)
                                        .frame(width: 200, height: 40)
                                        .font(.system(size: 25))
                                        .background(ColorManager.purple3)
                                        .cornerRadius(10)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                }
                            )}
                        //
                    }
                    
                    VStack {
                        
                        Spacer()
                            .frame(height: 50)
                        
//                        StartHere1(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups
//                        InviteView(user: user
                        NavigationLink(
                            
                            destination: StartHere1(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                            label: {
                                Text("Invite (up to) 5 Friends")
                                    .fontWeight(.light)
                                    .foregroundColor(Color.white)
                                    .frame(width: 300, height: 30)
                                    .font(.system(size: 25))
                                    .background(ColorManager.pmbc_green)
                                    .cornerRadius(7)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                            }
                        )}
                    
                    VStack {
                        

                        Spacer()
                            .frame(height: 25)
                        
                        NavigationLink(
                            
                            destination: PlanetBell(user: user),
                            label: {
                                Text("How our real-time \nPush Notifications Work")
                                    .fontWeight(.thin)
                                    .foregroundColor(Color.white)
                                    .frame(width: 310, height: 50)
                                    .font(.system(size: 19))
                                    .background(ColorManager.pmbc_green)
                                    .cornerRadius(7)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                            }
                        )}
                    
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

    

