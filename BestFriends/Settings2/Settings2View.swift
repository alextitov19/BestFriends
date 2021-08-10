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
    private let timer = Timer.publish(every: 20, on: .main, in: .common).autoconnect()
    
    @State private var engagementIndex = 1
    
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
                    .foregroundColor(Color(#colorLiteral(red: 0.1693333387, green: 0.1839567721, blue: 0.203564167, alpha: 1)))
                    .padding(.leading, 10)
                
                // Email
                Text(user.email)
                    .font(.system(size: 24, weight: .regular))
                    .foregroundColor(Color(#colorLiteral(red: 0.1693333387, green: 0.1839567721, blue: 0.203564167, alpha: 1)))
                    .padding(.leading, 10)
                
                // Overlay of the 3 into rectangle things
                Text("Engagement")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(Color(#colorLiteral(red: 0.1693333387, green: 0.1839567721, blue: 0.203564167, alpha: 1)))
                    .offset(x: 10, y: 10)
                
                
                SettingsInfoView(index: engagementIndex)
                
                // List of all the diffrent menu items
                VStack {
                    VStack {
                        HStack {
                            Image("home-alt2")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .scaledToFit()
                                .colorInvert()
                                .onReceive(timer) { time in
                                    cycleEngagement()
                                }
                            
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
                                .onAppear { cycleEngagement()
                                }
                            
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
    
    private func cycleEngagement() {
        engagementIndex = 1
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) { engagementIndex = 2 }
        DispatchQueue.main.asyncAfter(deadline: .now() + 10) { engagementIndex = 3 }
        DispatchQueue.main.asyncAfter(deadline: .now() + 15) { engagementIndex = 2 }
    }
}


struct Settings2ViewPreview : PreviewProvider {
    static var previews: some View {
        Settings2View()
            .environmentObject(SessionManager())
    }
}
