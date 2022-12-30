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
    
    let user: User
    
    var body: some View {
        ZStack {
            
            
            ColorManager.purple1
                .ignoresSafeArea()
                .onAppear()
            
            
            VStack {
                
                
                
                Text("*For just 5 minutes - nightly at 8pm EST")
                    .italic()
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey3)
                
                Spacer()
                    .frame(height: 12)
                
                
                Text("Everyone sharing their 'in-the-moment'")

                    .font(.system(size: 17))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple3)
                
                
                Text("Emotional Adventures")
                    .font(.system(size: 25))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple3)
                
           
                
                VStack {
                    
              
                    Spacer()
                        .frame(height: 40)
                    
                    
                    Text("Features Walk-though")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(ColorManager .grey1)
                        .shadow(color: .purple, radius: 1, x: 0, y: 1)
                        .opacity(0.50)
                        .multilineTextAlignment(.center)
                    
                    
                    
                    Spacer()
                        .frame(height: 30)
                    
                    VStack {
                        
                        HStack {
                            ZStack {
                                Image(systemName: "rectangle.fill")
                                    .resizable()
                                    .foregroundColor(ColorManager .purple2)
                                    .frame(width: 40, height: 40)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                //                                .shadow(color: .purple, radius: 65, x: 30, y: 50)
                                    .opacity(0.95)
                                
                                Image("IconPhotoNew40")
                            }
                            NavigationLink(
                                destination: InfoAddFriends(user: user),
                                label: {
                                    Text("PhotoPOP")
                                        .fontWeight(.thin)
                                        .frame(width: 250, height: 40)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 25))
                                        .background(ColorManager.purple3)
                                        .cornerRadius(10)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                })
                        }
                        
                        
                        Spacer()
                            .frame(height: 20)
                        
                        
                        HStack {
                            ZStack {
                                Image(systemName: "rectangle.fill")
                                    .resizable()
                                    .foregroundColor(ColorManager .purple2)
                                    .frame(width: 40, height: 40)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                //                                .shadow(color: .purple, radius: 65, x: 30, y: 50)
                                    .opacity(0.95)
                                
                                Image("IconVibeNew40")
                            }
                            
                            NavigationLink(
                                destination: InfoCreateChatRm(user: user),
                                label: {
                                    Text("Set my 'Vibe'")
                                        .fontWeight(.thin)
                                        .frame(width: 250, height: 40)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 25))
                                        .background(ColorManager.purple3)
                                        .cornerRadius(10)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                })
                        }
                        
                        
                        Spacer()
                            .frame(height: 20)
                        
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
                                    Text("Send a HUG")
                                        .fontWeight(.thin)
                                        .frame(width: 250, height: 40)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 25))
                                        .background(ColorManager.purple3)
                                        .cornerRadius(10)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                })
                        }
                        
                        
                        Spacer()
                            .frame(height: 20)
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
                                    Text("Something 'Nice'")
                                        .fontWeight(.thin)
                                        .frame(width: 250, height: 40)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 25))
                                        .background(ColorManager.purple3)
                                        .cornerRadius(10)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                    
                                })
                        }
                        
                        Spacer()
                            .frame(height: 20)
                        
                        
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
                                    Text("Friendship Drama")
                                        .fontWeight(.thin)
                                        .foregroundColor(Color.white)
                                        .frame(width: 250, height: 40)
                                        .font(.system(size: 25))
                                        .background(ColorManager.purple3)
                                        .cornerRadius(10)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                }
                            )}
                        
                    }
                    
                    VStack {
                        
                        Spacer()
                            .frame(height: 30)
                        
                        Text("Building more resilient, emotionally closer")
                        
                            .font(.system(size: 17))
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.purple4)
                        
                        Text("Positive Friendships")
                        
                            .font(.system(size: 22))
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.purple5)
                        
                        Spacer()
                            .frame(height: 60)
                        
                        
                        
                        Link(destination: URL(string: "https://socialtechlabs.com/reporting-issues-in-bestfriends/")!) {
                            
                            Text("Report Issues")
                                .fontWeight(.thin)
                                .frame(width: 200, height: 30)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 25))
                                .background(ColorManager.pmbc_green)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        }
                        
                        
                        //
                        
                        //
                        //
                        
                        Spacer()
                            .frame(height: 80)
                        
                        
                        
                        
                    }
                }
                
            }
        }
    }
    
}


