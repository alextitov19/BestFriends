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
            
            
            ColorManager.grey4
                .ignoresSafeArea()
                .onAppear()
            
            
            VStack {
                
                Text("Introducing")
                    .font(.system(size: 13))
                    .italic()
                    .foregroundColor(Color.white)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                Text("BestFriends")
                    .font(.system(size: 35))
                //                    .italic()
                    .foregroundColor(Color.white)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 10)
                

                
                
                Text("building superior")
                    .font(.system(size: 22))
                    .italic()
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                Text("FriendGroups")
                    .font(.system(size: 22))
                    .italic()
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
          
                Spacer()
                    .frame(height: 20)
                
              
                
                VStack {
                    
                    ZStack {
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
                    Spacer()
                        .frame(height: 30)
                    
                    NavigationLink(
                        destination: EmptyView(),
                        label: {
                            Text("Create New Chat rooms")
                                .fontWeight(.thin)
                                .frame(width: 310, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 25))
                                .background(Color.purple)
                                .cornerRadius(10)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            
                        })
                    
                    Spacer()
                        .frame(height: 15)
                    
                    
                    
//
                    VStack {
                        
                        NavigationLink(
                            destination: InviteView(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                            label: {
                                Text("Invite Friends \nTap (+) planet on homepage")
                                    .fontWeight(.thin)
                                    .frame(width: 310, height: 60)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 25))
                                    .background(Color.orange)
                                    .cornerRadius(10)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                            })
                        
                        Spacer()
                            .frame(height: 15)
                       
                            
                            
                            NavigationLink(
                                //                                destination: InfoSilence(user: user),
                                destination: MyRoomView(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                label: {
                                    Text("Tap Center Planet\n on Homepage")
                                        .fontWeight(.thin)
                                        .foregroundColor(Color.white)
                                        .frame(width: 310, height: 60)
                                        .font(.system(size: 25))
                                        .background(Color.green)
                                        .cornerRadius(10)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                })
                        }
                        
                        Spacer()
                            .frame(height: 15)
                        
                        
                        HStack {
                            ZStack {
                                
                            }
                            
                            
                            NavigationLink(
                                
                                destination: InfoPushNotifications(user: user),
                                label: {
                                    Text("Streaks with Purpose")
                                        .fontWeight(.thin)
                                        .foregroundColor(Color.white)
                                        .frame(width: 310, height: 40)
                                        .font(.system(size: 25))
                                        .background(Color.blue)
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
                                
                            }
                            
                            Link(destination: URL(string: "https://socialtechlabs.com/beta-tester-_-bestfriends-app/")!) {
                                
                                HStack {
                                    Text("Help beta test BestFriends")
                                        .fontWeight(.thin)
                                        .frame(width: 310, height: 40)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 23))
                                        .background(ColorManager.purple3)
                                        .cornerRadius(10)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                    
                                    
                                    
                                    
                                }
                            }
                            
                            
                            
                            Spacer()
                                .frame(height: 25)
                            
                            Text("app looks best in 'dark' mode")
                                .font(.system(size: 17))
                                .italic()
                                .foregroundColor(ColorManager.grey2)
                                .fontWeight(.thin)
                                .multilineTextAlignment(.center)
                            
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
                        
                        
                        VStack {
                            
                            
                            Spacer()
                                .frame(height: 80)
                            
                        }
                    }
                    
                }
            }
            
        }
        
        
    }
    

