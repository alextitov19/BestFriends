//
//  Settings2View.swift
//  BestFriends
//
//  Created by Alex Titov on 8/5/21.
//

import SwiftUI

struct Settings2View: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    private let userDS = UserDataSource()
    private let user: User
    
    init() {
        user = userDS.getCurrentUser()
    }
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                // Allows the VStack to be full screen width-wise
                Spacer().frame(maxWidth: .infinity, maxHeight: .zero)
                // First name
                Text(user.firstName)
                    .font(.system(size: 40, weight: .bold))
                    .padding(.leading, 10)
                
                // Email
                Text(user.email)
                    .font(.system(size: 24, weight: .regular))
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                    .padding(.leading, 10)
                
                // Overlay of the 3 into rectangle things
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(maxWidth: .infinity, maxHeight: 175)
                        .foregroundColor(Color(#colorLiteral(red: 0.4067053795, green: 0.1521126628, blue: 1, alpha: 1)))
                        .padding(10)
                }
                
                // List of all the diffrent menu items
                VStack {
                    VStack {
                        HStack {
                            Image("home-alt2")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .scaledToFit()
                                .colorInvert()
                            
                            Text("Some item")
                                .font(.system(size: 20))
                            
                            Spacer().frame(maxHeight: 0)
                            
                            Image("arrowRight")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .scaledToFit()
                                .colorInvert()
                        }
                        
                        Divider()
                        
                        HStack {
                            Image("home-alt2")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .scaledToFit()
                                .colorInvert()
                            
                            Text("Some item")
                                .font(.system(size: 20))
                            
                            Spacer().frame(maxHeight: 0)
                            
                            Image("arrowRight")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .scaledToFit()
                                .colorInvert()
                        }
                        
                        Divider()
                        
                        HStack {
                            Image("home-alt2")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .scaledToFit()
                                .colorInvert()
                            
                            Text("Some item")
                                .font(.system(size: 20))
                            
                            Spacer().frame(maxHeight: 0)
                            
                            Image("arrowRight")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .scaledToFit()
                                .colorInvert()
                        }
                        
                        Divider()
                    }
                    
                    VStack {
                        HStack {
                            Image("home-alt2")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .scaledToFit()
                                .colorInvert()
                            
                            Text("Some item")
                                .font(.system(size: 20))
                            
                            Spacer().frame(maxHeight: 0)
                            
                            Image("arrowRight")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .scaledToFit()
                                .colorInvert()
                        }
                        
                        Divider()
                        
                        HStack {
                            Image("home-alt2")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .scaledToFit()
                                .colorInvert()
                            
                            Text("Some item")
                                .font(.system(size: 20))
                            
                            Spacer().frame(maxHeight: 0)
                            
                            Image("arrowRight")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .scaledToFit()
                                .colorInvert()
                        }
                        
                        Divider()
                        
                        HStack {
                            Image("home-alt2")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .scaledToFit()
                                .colorInvert()
                            
                            Text("Some item")
                                .font(.system(size: 20))
                            
                            Spacer().frame(maxHeight: 0)
                            
                            Image("arrowRight")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .scaledToFit()
                                .colorInvert()
                        }
                    }
                }
                .padding(10)
                
                Spacer()
                
                // Bottom navigation icons
                HStack() {
                    Image("home-alt2")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .scaledToFill()
                        .onTapGesture {
                            sessionManager.getCurrentAuthUser()
                        }
                        .padding(20)
                        .colorInvert()
                    
                    Image("chat icon")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .scaledToFill()
                        .onTapGesture {
                            sessionManager.showRooms()
                        }
                        .padding(20)
                        .colorInvert()

                    Image("happy-face icon")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .scaledToFill()
                        .onTapGesture {
                            sessionManager.showSmileNotes()
                        }
                        .padding(20)
                        .colorInvert()
                }
                .frame(maxWidth: .infinity)
            }
            .frame(maxWidth: .infinity)
        }
    }
}
