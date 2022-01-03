//
//  NotificationsView.swift
//  BestFriends
//
//  Created by Alex Titov on 1/3/22.
//

import SwiftUI

struct NotificationsView: View {
    
    @State private var notifications: [String] = []
    
    var body: some View {
        ZStack {
            // Background Image...
            Image("blueBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .onAppear(perform: loadData)
            
            VStack {
                Text("Notifications")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .padding()
                
                ForEach(notifications, id: \.self) { notification in
                    Text(notification)
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .padding()
                    
                    CustomDivider(color: .white)
                        .frame(width: UIScreen.screenWidth * 0.8)
                }
                
                Spacer()
            }
        }
    }
    
    private func loadData() {
        DispatchQueue.global(qos: .userInitiated).async() {
            let user = UserDataSource().getCurrentUser()
            notifications = user.notifications
        }
    }
}
