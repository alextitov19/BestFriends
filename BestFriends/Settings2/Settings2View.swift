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
            ZStack {
                Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                    .ignoresSafeArea()
                
                Image("settingsBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
                    ScrollView {
                        VStack(alignment: .leading) {
                            // Allows the VStack to be full screen width-wise
                            Spacer().frame(maxWidth: .infinity, maxHeight: 30)
                            // First name
                            Text(user.firstName)
                                .font(.system(size: 42, weight: .bold))
                                .foregroundColor(Color(#colorLiteral(red: 0.1693333387, green: 0.1839567721, blue: 0.203564167, alpha: 1)))
                                .padding(.leading, 10)
                            
                            // Email
                            Text(user.email)
                                .font(.system(size: 18, weight: .regular))
                                .foregroundColor(Color(#colorLiteral(red: 0.1693333387, green: 0.1839567721, blue: 0.203564167, alpha: 1)))
                                .padding(.leading, 10)
                            
                            // The main functionality of the app
                            Text("Functions")
                                .font(.system(size: 30, weight: .bold))
                                .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                                .offset(x: 10, y: 10)
                            
                            SettingsFunctionView()
                            
                            // Overlay of the 3 into rectangle things
                            Text("Engagement")
                                .font(.system(size: 30, weight: .bold))
                                .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                                .offset(x: 10, y: 10)
                            
                            
                            SettingsEngagementView(index: engagementIndex)
                            
                            // List of all the diffrent menu items
                            Text("Settings")
                                .font(.system(size: 30, weight: .bold))
                                .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                                .offset(x: 10, y: 0)
                            
                            VStack {
                                VStack {
                                    VStack {
                                        NavigationLink(
                                            destination: MyAccountView(),
                                            label: {
                                                HStack {
                                                    Image("home-alt2")
                                                        .resizable()
                                                        .frame(width: 30, height: 30)
                                                        .scaledToFit()
                                                        .colorInvert()
                                                        .onReceive(timer) { time in
                                                            cycleEngagement()
                                                        }
                                                    
                                                    Text("My Account")
                                                        .font(.system(size: 20))
                                                        .foregroundColor(.black)
                                                    
                                                    Spacer().frame(maxHeight: 0)
                                                    
                                                    Image("arrowRight")
                                                        .resizable()
                                                        .frame(width: 25, height: 25)
                                                        .scaledToFit()
                                                        .colorInvert()
                                                }
                                            })
                                        
                                        
                                        Divider()
                                        
                                        NavigationLink(
                                            destination: NotificationsView(),
                                            label: {
                                                HStack {
                                                    Image("home-alt2")
                                                        .resizable()
                                                        .frame(width: 30, height: 30)
                                                        .scaledToFit()
                                                        .colorInvert()
                                                        .onReceive(timer) { time in
                                                            cycleEngagement()
                                                        }
                                                    
                                                    Text("Notifications")
                                                        .font(.system(size: 20))
                                                        .foregroundColor(.black)
                                                    
                                                    Spacer().frame(maxHeight: 0)
                                                    
                                                    Image("arrowRight")
                                                        .resizable()
                                                        .frame(width: 25, height: 25)
                                                        .scaledToFit()
                                                        .colorInvert()
                                                }
                                            })
                                        
                                        Divider()
                                        
                                        NavigationLink(
                                            destination: CustomizationView(),
                                            label: {
                                                HStack {
                                                    Image("home-alt2")
                                                        .resizable()
                                                        .frame(width: 30, height: 30)
                                                        .scaledToFit()
                                                        .colorInvert()
                                                        .onReceive(timer) { time in
                                                            cycleEngagement()
                                                        }
                                                    
                                                    Text("Customization")
                                                        .font(.system(size: 20))
                                                        .foregroundColor(.black)
                                                    
                                                    Spacer().frame(maxHeight: 0)
                                                    
                                                    Image("arrowRight")
                                                        .resizable()
                                                        .frame(width: 25, height: 25)
                                                        .scaledToFit()
                                                        .colorInvert()
                                                }
                                            })
                                        
                                        Divider()
                                    }
                                    
                                    VStack {
                                        NavigationLink(
                                            destination: HelpSupportView(),
                                            label: {
                                                HStack {
                                                    Image("home-alt2")
                                                        .resizable()
                                                        .frame(width: 30, height: 30)
                                                        .scaledToFit()
                                                        .colorInvert()
                                                        .onReceive(timer) { time in
                                                            cycleEngagement()
                                                        }
                                                    
                                                    Text("Help & Support")
                                                        .font(.system(size: 20))
                                                        .foregroundColor(.black)
                                                    
                                                    Spacer().frame(maxHeight: 0)
                                                    
                                                    Image("arrowRight")
                                                        .resizable()
                                                        .frame(width: 25, height: 25)
                                                        .scaledToFit()
                                                        .colorInvert()
                                                }
                                            })
                                        
                                        Divider()
                                        
                                        NavigationLink(
                                            destination: TermsConditionsView(),
                                            label: {
                                                HStack {
                                                    Image("home-alt2")
                                                        .resizable()
                                                        .frame(width: 30, height: 30)
                                                        .scaledToFit()
                                                        .colorInvert()
                                                        .onReceive(timer) { time in
                                                            cycleEngagement()
                                                        }
                                                    
                                                    Text("Terms & Conditions")
                                                        .font(.system(size: 20))
                                                        .foregroundColor(.black)
                                                    
                                                    Spacer().frame(maxHeight: 0)
                                                    
                                                    Image("arrowRight")
                                                        .resizable()
                                                        .frame(width: 25, height: 25)
                                                        .scaledToFit()
                                                        .colorInvert()
                                                }
                                            })
                                        
                                        Divider()
                                        
                                        NavigationLink(
                                            destination: ReportAbuseView(),
                                            label: {
                                                HStack {
                                                    Image("home-alt2")
                                                        .resizable()
                                                        .frame(width: 30, height: 30)
                                                        .scaledToFit()
                                                        .colorInvert()
                                                        .onReceive(timer) { time in
                                                            cycleEngagement()
                                                        }
                                                    
                                                    Text("Report Abuse")
                                                        .font(.system(size: 20))
                                                        .foregroundColor(.black)
                                                    
                                                    Spacer().frame(maxHeight: 0)
                                                    
                                                    Image("arrowRight")
                                                        .resizable()
                                                        .frame(width: 25, height: 25)
                                                        .scaledToFit()
                                                        .colorInvert()
                                                }
                                            })
                                        
                                        Divider()
                                        
                                        HStack {
                                            Image("home-alt2")
                                                .renderingMode(.template)
                                                .resizable()
                                                .foregroundColor(Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)))
                                                .frame(width: 30, height: 30)
                                            
                                            Text("Sign Out")
                                                .font(.system(size: 20))
                                                .foregroundColor(Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)))
                                            
                                            Spacer().frame(maxHeight: 0)
                                            
                                            Image("arrowRight")
                                                .renderingMode(.template)
                                                .resizable()
                                                .foregroundColor(Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)))
                                                .frame(width: 25, height: 25)
                                        }
                                        .onTapGesture {
                                            sessionManager.signOut()
                                        }
                                    }
                                }
                                .padding()
                            }
                            .background(Color(.white))
                            .cornerRadius(25)
                            .padding(.leading, 12)
                            .padding(.trailing, 12)
                            
                            Spacer()
                            
                        }
                        
                        
                    }
                    .frame(maxWidth: .infinity)
                    .navigationBarTitle(Text(""))
                    .navigationBarHidden(true)
                    
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
                                sessionManager.getCurrentAuthUser()
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
            }
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
