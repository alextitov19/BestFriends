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
    let atmosphere: Atmosphere
    
    //   *********************** color change tapped
    
    
    
    @State private var shareColor = ColorManager.grey3
    @State private var colorChangeTap: String = ""
    @State private var shareTapped: Bool = false
    @State private var colors: [Color] = [Color.cyan]
    
    //    ********************************
    
    
    var body: some View {
        NavigationView {
            ZStack {
                
                ColorManager .grey4
                    .ignoresSafeArea()
                    .onAppear(perform: getNotifications)
                
//                AdPlayerView(name: "Notifications2")
//                    .ignoresSafeArea()
//                    .blendMode(.screen)
                
              
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
        
        
        @State private var photoPopActive = false
        @State private var hugActive = false
        @State private var thanksHugActive = false
        @State private var kissesActive = false
        @State private var thanksKissesActive = false
        @State private var heartsActive = false
        @State private var thanksHeartActive = false
        @State private var songActive = false
        @State private var thanksSongActive = false
        @State private var fixFightActive = false
        @State private var talkCouponActive = false
        @State private var newVibeActive = false
        @State private var needTalkActive = false
        @State private var newArtistActive = false
        @State private var newCustomActive = false
        @State private var thanksCustomActive = false
        @State private var newCongratulationsActive = false
        @State private var thanksCongratulationsActive = false
        @State private var meetupCouponActive = false
        
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
                    
                    
                    NavigationLink(destination: SaySomethingNice5(user: user, friends: friends), isActive: $meetupCouponActive, label: {
                        EmptyView()
                    })
                    
                    NavigationLink(destination: PhotoPopView(user: user, friends: friends), isActive: $photoPopActive, label: {
                        EmptyView()
                    })


                    NavigationLink(destination: CH9(user: user, friends: friends), isActive: $kissesActive, label: {
                        EmptyView()
                    })

                    NavigationLink(destination: CH9(user: user, friends: friends), isActive: $thanksKissesActive, label: {
                        EmptyView()
                    })



                    NavigationLink(destination: VirtualHug(user: user, friends: friends), isActive: $hugActive, label: {
                        EmptyView()
                    })

                    NavigationLink(destination: VirtualHug(user: user, friends: friends), isActive: $thanksHugActive, label: {
                        EmptyView()
                    })


                    NavigationLink(destination: SaySomethingNice5(user: user, friends: friends), isActive: $newCongratulationsActive, label: {
                        EmptyView()
                    })

                    NavigationLink(destination: SaySomethingNice5(user: user, friends: friends), isActive: $thanksCongratulationsActive, label: {
                        EmptyView()
                    })



                    NavigationLink(destination: SaySomethingNice5(user: user, friends: friends), isActive: $thanksCustomActive, label: {
                        EmptyView()
                    })
                    
                    
                

                    NavigationLink(destination: SaySomethingNice5(user: user, friends: friends), isActive: $songActive, label: {
                        EmptyView()
                    })

    }

                NavigationLink(destination: SaySomethingNice5(user: user, friends: friends), isActive: $thanksSongActive, label: {
                    EmptyView()
                })
                
                
//                ************* fix CH9 to Received Hearts page: CH13
                NavigationLink(destination: CH9(user: user, friends: friends), isActive: $heartsActive, label: {
                    EmptyView()
                })



//               ********************** Message goes to Chat **************************
                NavigationLink(destination: SaySomethingNice5(user: user, friends: friends), isActive: $thanksHeartActive, label: {
                    EmptyView()
                })


//               ********************** Song goes to Chat - no need link **************************
            
                
                
                NavigationLink(destination: SaySomethingNice5(user: user, friends: friends), isActive: $fixFightActive, label: {
                    EmptyView()
                })

                NavigationLink(destination: SaySomethingNice5(user: user, friends: friends), isActive: $talkCouponActive, label: {
                    EmptyView()
                })

                NavigationLink(destination: SaySomethingNice5(user: user, friends: friends), isActive: $needTalkActive, label: {
                    EmptyView()
                })

                NavigationLink(destination: SaySomethingNice5(user: user, friends: friends), isActive: $newVibeActive, label: {
                    EmptyView()
                })

             
// ***************************************************************
                    
                    // ***************************************************************
                    // ***************************************************************
                    
                    
                //                    ********************** make this link to proper page *******
                //                    NavigationLink(destination: RR15(user: user, friends: friends, groups: groups), isActive: $newCustomActive, label: {
                //                        EmptyView()
                //                    })
                                    
                //                    NavigationLink(destination: CH9(user: user, friends: friends), isActive: $newCustomActive, label: {
                //                        EmptyView()
                //                    })
                
                //                NavigationLink(destination: CH10(user: user, friends: friends, groups: groups, atmosphere: atmosphere), isActive: $heartsActive, label: {
                //                    EmptyView()
                //                })
              
                
              
                
                
               
                Color.cyan
                
//                .background(Color(.systemPurple), : ColorManager .cyan)
                
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
                

            case "Just sent you a warming Hug! ... TAP":
                hugActive = true
                
            case "Ahhh! Thanks for the Hug - it was just what I needed!":
                thanksHugActive = true
                

            case "Jump up and catch your fresh kisses! ... TAP":
                kissesActive = true
                
            case "Ahhh! Thanks for the Kisses!":
                thanksKissesActive = true
                

            case "Just send you a Heart and a message in Chat ... TAP":
                heartsActive = true
                
            case "Said thanks for thinking about them and sending the Heart!":
                thanksHeartActive = true

                
            case "Just sent you 'That' song in Chat":
                songActive = true

            case "Perfect, thanks for the song. Sent you a message in Chat":
                thanksSongActive = true
                
                
            case "Just sent you a Congratulations CareHeart ... TAP":
                newCongratulationsActive = true

            case "Just said thank you for the Congratulations":
                thanksCongratulationsActive = true
                
   

            case "You just got a 'Meetup Coupon' in Chat":
                meetupCouponActive = true
            
            case "Is redeaming ONE 'TalkCoupon'":
                talkCouponActive = true
                
           
            case "Just sent you a message in Chat - please look at it":
                fixFightActive = true
                
                
                
            case "'Day' just changed! Check their atmosphere color to see if they need a CareHeart.":
                newVibeActive = true

            case "I Need to Talk!":
                needTalkActive = true

            case "I found a New Artist & posted them in Chat":
                newArtistActive = true


         

          
//
//            case "I Need to Talk!":
//                meetupCouponActive = true
//
//            case "":
//                thanksCongratulationsActive = true
//
//
                //            case "Just sent you a Custome CareHeart. Check for a message in Chat and a PhotoPOP ... TAP":
                //                newCustomActive = true
                //
                //            case "Said thanks for the Custom CareHeart":
                //                thanksCustomActive = true
                                
                
                
                
            default:
                return
                
                
            }
        }
        
//        private func defaultMessageButtonTapped(defaultMessage: String) {
//            self.colorChangeTap = defaultMessage
            
        }
    }
    
//}
