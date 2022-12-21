//
//  NotificationsView.swift
//  BestFriends
//
//  Created by Social Tech on 4/8/22.
//

import Foundation


import SwiftUI

struct SettingsNotificationsView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
//    let user: User
//    let atmosphere: Atmosphere
//
    @State private var chatNotifications = true
    @State private var broadcastNotifications = true
    

  
 
    
    
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                .ignoresSafeArea()
            
            
//            Image("HomeBackground2")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
            ColorManager.grey4
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image("")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .scaledToFit()
                            .foregroundColor(.white)
//                            .colorInvert()
                            .rotationEffect(Angle(degrees: 180))
                            .onAppear {
//                                loadData()
                            }
                    }
               }
                
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
                    .frame(height: 50)
            
                Text("Push Notifications \nSafety TIP")

                    .font(.system(size: 30))
                    
                    .offset(x: -3)
                    .foregroundColor(.green)
                
                Spacer()
                    .frame(height: 20)
                
                Text("BestFriends is designed to help you track down your friends when you NEED them. If you turn off Notifications your friends may NOT respond in a timely manner.")

                    .font(.system(size: 20))
                    .italic()
                    .offset(x: -3)
                    .foregroundColor(.red)
                    .padding()
//                    .frame(width: 5)
          
                
                Spacer()
                    .frame(height: 30)
                
                    Divider()

                      Toggle("     Push Notifications", isOn: $broadcastNotifications)
                          .foregroundColor(.white)
                          .accentColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))

//                      Divider()
                      
                Text("For best performance set your notifications \nto 'banner' view on your iPhone")

                    .font(.system(size: 15))
                    .italic()
                    .offset(x: -3)
                    .foregroundColor(.green)
                    .padding()
//                    .frame(width: 5)
                
            }
            .padding()
            
          
        }
       .navigationBarHidden(true)
    }
 
  

}


