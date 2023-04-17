//
//  NotificationsView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/17/23.
//

import SwiftUI

struct NotificationsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var ians: [InAppNotification] = []

    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
                .onAppear(perform: getNotifications)
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            VStack {
                Text("Recent Notifications")
                    .font(.system(size: 30, weight: .light))
                    .foregroundColor(.white)
                    .padding()
                
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(ians, id: \.createdOn) { ian in
                        NotificationBubble(ian: ian)
                            .opacity(0.7)
                            .padding()
                    }
                }
            }
        }
    }
    
    private func getNotifications() {
        RestApi.instance.getInAppNotifications().then({ data in
            ians = data
            print("Increased IANs to ", data.count)
        })
    }
    
    private struct NotificationBubble: View {
        let ian: InAppNotification
        var t: String
        
        init(ian: InAppNotification) {
            self.ian = ian
            let date = Date()
            let ti = date.timeIntervalSince1970
            var dif = Int64(ti)
            dif -= ian.createdOn
            dif = dif / 60
            let s = String(dif)
            self.t = String(s + " minutes ago")
        }
        
        var body: some View {
            ZStack {
                Color.teal
                
                VStack {
                    Text(ian.text)
                        .font(.system(size: 16, weight: .regular))
                        .padding(.horizontal, 5)
                    
                    HStack {
                        Text(ian.sender)
                            .font(.system(size: 12, weight: .light))

                        Spacer()
                        
                        Text(t)
                            .font(.system(size: 12, weight: .light))
                    }
                    .padding(.horizontal, 5)
                }
            }
            .frame(height: 60)
            .cornerRadius(15)
            
        }
    }
}


