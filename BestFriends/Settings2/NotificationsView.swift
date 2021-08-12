//
//  NotificationsView.swift
//  BestFriends
//
//  Created by Alex Titov on 8/12/21.
//

//
//  MyAccountView.swift
//  BestFriends
//
//  Created by Alex Titov on 8/10/21.
//

import SwiftUI

struct NotificationsView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var chatNotifications = true
    @State private var broadcastNotifications = true
    
    private let userDS = UserDataSource()
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                .ignoresSafeArea()
            VStack {
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image("arrowRight")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .scaledToFit()
                            .colorInvert()
                            .rotationEffect(Angle(degrees: 180))
                            .onAppear {
                                loadData()
                            }
                    }
                    
                    Spacer()
                    
                    Text("Notifications")
                        .font(.system(size: 30))
                        .offset(x: -25)
                    
                    Spacer()
                }
                
                Spacer()
                    .frame(height: 50)
                
                Toggle("Chat Notifications", isOn: $chatNotifications)
                    .accentColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                
                Divider()
                
                Toggle("Broadcast Notifications", isOn: $broadcastNotifications)
                    .accentColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                
                Divider()
                
                HStack {
                    Text("Delete Account")
                        .font(.system(size: 20))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)))
                    
                    Spacer().frame(maxHeight: 0)
                    
                    Image("arrowRight")
                        .renderingMode(.template)
                        .resizable()
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)))
                        .frame(width: 25, height: 25)
                }
                
                Spacer()
                
                Text("BestFriends is designed to help you track down your friends when you NEED them. If you turn off Notifications your friend may NOT find you in a timely manner.")
                    .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .padding(20)
                
                Button(action: {
                    saveData()
                }) {
                    Text("Save")
                        .frame(width: 250, height: 50, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.title)
                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(10)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                }
            }
            .padding(30)
        }
        .navigationBarHidden(true)
    }
    
    private func loadData() {
        let user = userDS.getCurrentUser()
        chatNotifications = user.notificationsLP
        broadcastNotifications = user.notificationsBroadcast
    }
    
    private func saveData() {
        var user = userDS.getCurrentUser()
        user.notificationsLP = chatNotifications
        user.notificationsBroadcast = broadcastNotifications
        userDS.updateUser(user: user)
    }
}
