//
//  NotificationsView.swift
//  BestFriends
//
//  Created by Social Tech on 4/8/22.
//

import Foundation


import SwiftUI

struct SettingsNotificationsView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
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
                    
                    Spacer()
                    
                    Text("Notifications")
                        .font(.system(size: 30))
                        .offset(x: -25)
                        .foregroundColor(.gray)
                    Spacer()
                }
                
                Spacer()
                    .frame(height: 100)
                HStack {
                }
               
                
                Text("Safety TIP")

                    .font(.system(size: 30))
                    
                    .offset(x: -3)
                    .foregroundColor(.purple)
                Spacer()
                    .frame(height: 50)
                
                Text("BestFriends is designed to help you track down your friends when you NEED them. If you turn off Notifications your friends may NOT respond in a timely manner.")

                    .font(.system(size: 20))
                    .italic()
                    .offset(x: -3)
                    .foregroundColor(.gray)
                    
          
                
                Spacer()
                    .frame(height: 100)
                
//                    Divider()
//
//                      Toggle("     Broadcast Notifications", isOn: $broadcastNotifications)
//                          .foregroundColor(.white)
//                          .accentColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
//
//                      Divider()
                      
                
                
            }
            .padding()
        }
//        .navigationBarHidden(true)
    }



struct SettingsNotificationsView_Previews : PreviewProvider {
    static var previews: some View {
        SettingsNotificationsView()
    }
}
}
