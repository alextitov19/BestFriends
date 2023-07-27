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
    
    let user: User
    let friends: [User]

    
    var body: some View {
        NavigationView {
            ZStack {
                Color.black
                    .ignoresSafeArea()
                    .onAppear(perform: getNotifications)
                
                AdPlayerView(name: "sky2")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                
                VStack {
                    Text("Fresh CareHearts")
                        .font(.system(size: 30, weight: .regular))
                        .foregroundColor(.white)
                        .padding()
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        ForEach(ians, id: \.createdOn) { ian in
                            NotificationBubble(ian: ian, user: user, friends: friends)
                                .opacity(0.7)
                                .padding()
                        }
                    }
                    
                    Spacer()
                    
                    Text("Return")
                        .font(.system(size: 20, weight: .light))
                        .foregroundColor(.white)
                        .padding()
                        .onTapGesture {
                            presentationMode.wrappedValue.dismiss()
                        }
                }
            }
        }
    }
    
    private func getNotifications() {
        RestApi.instance.getInAppNotifications().then({ data in
            ians = data
            ians.sort { $0.createdOn > $1.createdOn }
            print("Increased IANs to ", data.count)
        })
    }
    
    private struct NotificationBubble: View {
        let user: User
        let friends: [User]
        
        let ian: InAppNotification
        var t: String

        @State private var hugActive = false
        @State private var photoPopActive = false
        @State private var kissesActive = false
        @State private var heartsActive = false
        @State private var songActive = false

        init(ian: InAppNotification, user: User, friends: [User]) {
            self.ian = ian
            self.user = user
            self.friends = friends
            let date = Date()
            let ti = date.timeIntervalSince1970
            var dif = Int64(ti)
            dif -= ian.createdOn
            var s = String(dif)
            self.t = String(s + " seconds ago")
            
            if (dif > 60) {
                dif = dif / 60
                s = String(dif)
                self.t = String(s + " minutes ago")
            }
            
            if (dif > 60) {
                dif = dif / 60
                s = String(dif)
                self.t = String(s + " hours ago")
            }
            
            if (dif > 24) {
                dif = dif / 24
                s = String(dif)
                self.t = String(s + " days ago")
            }
        }
        
        var body: some View {
            ZStack {
                NavigationLink(destination: PhotoPopView(user: user, friends: friends), isActive: $photoPopActive, label: {
                    EmptyView()
                })
                
                NavigationLink(destination: VirtualHug(user: user, friends: friends), isActive: $hugActive, label: {
                    EmptyView()
                })
                
                NavigationLink(destination: CH9(user: user, friends: friends), isActive: $kissesActive, label: {
                    EmptyView()
                })
                
                NavigationLink(destination: CH9(user: user, friends: friends), isActive: $heartsActive, label: {
                    EmptyView()
                })
//               ****************** getting an error with put in CH4 for groups ****
                NavigationLink(destination: EmptyView(), isActive: $songActive, label: {
                    EmptyView()
                })
                
                
                
                
                
                
                
                Color.cyan
                
                
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
            .onTapGesture(perform: tapped)
            
        }
        
        private func tapped() {
            switch ian.text {

            case "What are you doing? Send PhotoPoP!":
                photoPopActive = true
       
            case "Just sent you a warming Hug!":
                hugActive = true

            case "Jump up and catch your fresh kisses!":
                kissesActive = true
                
            case "Is thinking about you and sent you a Heart!":
                heartsActive = true
                
            case "song ??????":
                songActive = true
            default:
                return
            }
        }
    }
}


