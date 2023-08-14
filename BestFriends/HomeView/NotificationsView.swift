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
    let friend: User
    let friends: [User]
    let groups: [Group]
    
    
    //   *********************** color change tapped
    
    
    
    @State private var shareColor = ColorManager.grey3
    @State private var colorChangeTap: String = ""
    @State private var shareTapped: Bool = false
    @State private var colors: [Color] = [Color.cyan]
    
    //    ********************************
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.black
                    .ignoresSafeArea()
                    .onAppear(perform: getNotifications)
                
                AdPlayerView(name: "InAppVideo")
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
        @State private var thanksKissesActive = false
        @State private var thanksHugActive = false
        @State private var thanksHeartActive = false
        @State private var thanksSongActive = false
        @State private var fixFightActive = false
        @State private var talkCouponActive = false
        @State private var newVibeActive = false
        @State private var needTalkActive = false
        @State private var newArtistActive = false
        @State private var newCustomActive = false
        
        
        
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
                
                VStack {
                    
                    
                    NavigationLink(destination: PhotoPopView(user: user, friends: friends), isActive: $photoPopActive, label: {
                        EmptyView()
                    })
                    
                    NavigationLink(destination: VirtualHug(user: user, friends: friends), isActive: $hugActive, label: {
                        EmptyView()
                    })
                    
                    NavigationLink(destination: CH9(user: user, friends: friends), isActive: $kissesActive, label: {
                        EmptyView()
                    })
                    
                    
//                    NavigationLink(destination: CH6(user: user, friends: friends, groups: groups), isActive: $heartsActive, label: {
//                        EmptyView()
//                    })
                    
                    NavigationLink(destination: CH9(user: user, friends: friends), isActive: $newCustomActive, label: {
                        EmptyView()
                    })
                    
                    NavigationLink(destination: CH9(user: user, friends: friends), isActive: $thanksKissesActive, label: {
                        EmptyView()
                    })
                    
                    NavigationLink(destination: PhotoPopView(user: user, friends: friends), isActive: $newVibeActive, label: {
                        EmptyView()
                    })
                    
               }
                
             
                
            
                
                
                
                NavigationLink(destination: VirtualHug(user: user, friends: friends), isActive: $thanksHugActive, label: {
                    EmptyView()
                })
                
                NavigationLink(destination: SaySomethingNice5(user: user, friends: friends), isActive: $thanksHeartActive, label: {
                    EmptyView()
                })
                
                NavigationLink(destination: SaySomethingNice5(user: user, friends: friends), isActive: $fixFightActive, label: {
                    EmptyView()
                })
                
                NavigationLink(destination: SaySomethingNice5(user: user, friends: friends), isActive: $talkCouponActive, label: {
                    EmptyView()
                })
                
                NavigationLink(destination: SaySomethingNice5(user: user, friends: friends), isActive: $needTalkActive, label: {
                    EmptyView()
                })

                NavigationLink(destination: SaySomethingNice5(user: user, friends: friends), isActive: $thanksSongActive, label: {
                    EmptyView()
                })
                
                
                Color.cyan
                
//                    .background(Color(.cyan) : ColorManager .grey2)
//                    .onTapGesture(perform: tapped)
                
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
                
            case "Just send you a Heart and a message in Chat":
                heartsActive = true
                
            case "Ahhh! Thanks for the Kisses!":
                thanksKissesActive = true
                
            case "Ahhh! Thanks for the Hug - it was just what I needed!":
                thanksHugActive = true
                
            case "Said thanks for thinking about them and sending the Heart!":
                thanksHeartActive = true
                
            case "Perfect, thanks for the song. Sent you a message in Chat":
                thanksSongActive = true
                
            case "Just sent you a message in Chat - please look at it":
                fixFightActive = true
                
            case "Is redeaming ONE 'TalkCoupon'":
                talkCouponActive = true
                
            case "Vibe just changed! Shoot'em a CareHeart or PhotoPOP":
                newVibeActive = true
                
            case "I Need to Talk!":
                needTalkActive = true
                
            case "I found a New Artist & posted them in Chat":
                newArtistActive = true
                
            case "Just send you a Custom CareHeart w/ Chat message & PhotoPOP":
                newCustomActive = true
                
                
                
            default:
                return
                
                
            }
        }
        
//        private func defaultMessageButtonTapped(defaultMessage: String) {
//            self.colorChangeTap = defaultMessage
            
        }
    }
    
//}
