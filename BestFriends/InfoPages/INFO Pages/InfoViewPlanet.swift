//
//  InfoViewPlanet.swift
//  BestFriends
//
//  Created by Social Tech on 7/6/22.
//

import Foundation

import SwiftUI


struct InfoViewPlanet: View {
    
    @EnvironmentObject var sessionManager: SessionManager

    let user: User
    
    var body: some View {
        ZStack {
            
            
            ColorManager.grey4
                .ignoresSafeArea()
                .onAppear()
            
            
            VStack {
                
                Text("First time through")
                    .font(.system(size: 20))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey2)
                
                Text("is CONFUSING!")
                    .font(.system(size: 23))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey2)
                
                Text("Please take a couple minutes \nto review Setup")
                    .font(.system(size: 20))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.red)
                
                
                
                
                VStack {
                    NavigationLink(
                        destination: InfoAddFriends(user: user),
                        label: {
                            Text("Add Friends")
                                .fontWeight(.thin)
                                .frame(width: 310, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            
                            
                        })
                    
                    Spacer()
                        .frame(height: 20)
                    
                    
                    NavigationLink(
                        destination: InfoCreateChatRm(user: user),
                        label: {
                            Text("Create NEW Chat Rooms")
                                .fontWeight(.thin)
                                .frame(width: 310, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 25))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            
                            
                        })
                    
                    Spacer()
                        .frame(height: 20)
                    
                    
                    NavigationLink(
                        destination: InfoInsideChat(user: user),
                        label: {
                            Text("Inside Chat")
                                .fontWeight(.thin)
                                .frame(width: 310, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 25))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            
                            
                        })
                    
                    Spacer()
                        .frame(height: 20)
                    
                    NavigationLink(
                        destination: InfoPushNotifications(user: user),
                        label: {
                            Text("How Push Notifications Work")
                                .fontWeight(.thin)
                                .frame(width: 310, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 25))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            
                            
                        })
                    
                    
                    Spacer()
                        .frame(height: 20)
                    
                    NavigationLink(
                        
                        destination: SettingsNotificationsView(user: user),
                        label: {
                            Text("Why keep Notifications 'ON'?")
                                .fontWeight(.thin)
                                .foregroundColor(Color.white)
                                .frame(width: 310, height: 40)
                                .font(.system(size: 25))
                                .background(ColorManager.pmbc_green)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            
                        }
                    )}
                
                VStack {
                    
                    
                    
                    Spacer()
                        .frame(height: 90)
                    
                    
               

                    
                    Button(action: {
                        sessionManager.showLogin()
                    },
                           label: {
                        Text("Home")
                            .fontWeight(.thin)
                            .frame(width: 150, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                    
                    
                    Spacer()
                        .frame(height: 20)
                    
                    Link(destination: URL(string: "https://socialtechlabs.com/reporting-issues-in-bestfriends/")!) {

                        Text("Report Issues")
                            .fontWeight(.thin)
                            .frame(width: 250, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 25))
                            .background(ColorManager.pmbc_green)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    }



                    Text("We ask for your patience.")
                        .italic()
                        .font(.system(size: 20))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.red)

                    
                    
                    Spacer()
                        .frame(height: 80)
                    
                    
                    
                    
                }
            }
            
        }
    }
}
    



