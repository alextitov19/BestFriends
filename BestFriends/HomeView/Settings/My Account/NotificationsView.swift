//
//  NotificationsView.swift
//  BestFriends
//
//  Created by Social Tech on 4/8/22.
//

import Foundation


import SwiftUI

struct NotificationsView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var chatNotifications = true
    @State private var broadcastNotifications = true
    

  
 
    
    
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                .ignoresSafeArea()
            
            
            Image("HomeBackground2")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            
            VStack {
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image("arrowRight")
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
                        .foregroundColor(.white)
                    Spacer()
                }
                
                Spacer()
                    .frame(height: 200)
                
//                NavigationLink(
////                    destination: NotificationsOnOffPage(),
////                    label: {
//                Toggle("Chat Notifications", isOn: $chatNotifications)
//                    .accentColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
//                    }
//                    )
//
                HStack {
                }
               
                
                Text("Safety TIP")
//                    .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                    .font(.system(size: 30))
                    
                    .offset(x: -3)
                    .foregroundColor(.green)
                Spacer()
                    .frame(height: 50)
                
                Text("BestFriends is designed to help you track down your friends when you NEED them. If you turn off Notifications your friends may NOT respond in a timely manner.")
//                    .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                    .font(.system(size: 20))
                    .italic()
                    .offset(x: -3)
                    .foregroundColor(.white)
                    
                
//                Spacer()
//                    .frame(height: 50)
//
                
                Spacer()
                    .frame(height: 200)
                
                    Divider()
                      
                      Toggle("     Broadcast Notifications", isOn: $broadcastNotifications)
                          .foregroundColor(.white)
                          .accentColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                      
//                      Divider()
                      
                
                
                
                
//
//                    .foregroundColor(.white)
//
//                    .multilineTextAlignment(.center)
//                    .padding(20)
                
//               Button(action: {
//                    saveData()
//                }) {
//                    Text("Save")
//                        .frame(width: 250, height: 450, alignment: .center)
//                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                        .font(.title)
//                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
//                        .cornerRadius(10)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                }
            }
            .padding()
        }
//        .navigationBarHidden(true)
    }



struct NotificationsView_Previews : PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
}
