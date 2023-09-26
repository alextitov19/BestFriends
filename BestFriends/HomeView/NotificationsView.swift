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
                    Text("Fresh CareHearts \nCoupons \nTalk Requests")
                        .font(.system(size: 20, weight: .thin))
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
        @State private var newCustomActive = false
        @State private var thanksCustomActive = false
        @State private var newCongratulationsActive = false
        @State private var thanksCongratulationsActive = false
        @State private var meetupCouponActive = false
        @State private var fistPumpActive = false
        @State private var mentalHealthActive = false
        @State private var thanksMentalActive = false
        @State private var canDoActive = false
        @State private var thanksDoActive = false
        @State private var affirmationActive = false
        
        
        
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
                
        VStack {
                
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
              
            
                NavigationLink(destination: SaySomethingNice5(user: user, friends: friends), isActive: $thanksMentalActive, label: {
                    EmptyView()
                })
            
            
                NavigationLink(destination: SaySomethingNice5(user: user, friends: friends), isActive: $thanksMentalActive, label: {
                    EmptyView()
                })
            
       
                NavigationLink(destination: SaySomethingNice5(user: user, friends: friends), isActive: $thanksDoActive, label: {
                    EmptyView()
                })
            
            // ***************************************************************
            
            NavigationLink(destination: SaySomethingNice5(user: user, friends: friends), isActive: $affirmationActive, label: {
                EmptyView()
            })
            }
                
               
                
                
                    
                    
                  
                    
                 
                
                    
                    
                    
                    
                    
                    
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
                    
                    
// *********** What are you doing?
                case "What are you doing? Send PhotoPoP!":
                    photoPopActive = true
                    
                    
           
                    
                    
                    // *********** Fight
// *********** Fight
                case "Just sent you a message in Chat - please look at it":
                    fixFightActive = true
                    
// *********** Fight (Meetup Coupon)
                case "You just got a 'Meetup Coupon' in Chat":
                    meetupCouponActive = true
                    
                    
                    
                    
            
                    
                    // *********** VIBE **********************************
// *********** Day Changed
                case "'Day' just changed! Check their atmosphere color to see if they need a CareHeart.":
                    newVibeActive = true
                    
// *********** Need to Talk
                case "I Need to Talk!":
                    needTalkActive = true
                    
                    
                    
                    
                    // *********** CareHearts  **********************************
// *********** Blowing Kisses
                case "Jump up and catch your fresh kisses! ... TAP":
                    kissesActive = true
                    
                case "Ahhh! Thanks for the Kisses!":
                    thanksKissesActive = true
                   
                    
// *********** Love / Hearts
                case "Just send you a Heart and a message in Chat ... TAP":
                    heartsActive = true
                    
                case "Said thanks for thinking about them and sending the Heart!":
                    thanksHeartActive = true
                
                
                    
// *********** Hugs
                case "Just sent you a warming Hug! ... TAP":
                    hugActive = true
                    
                case "Ahhh! Thanks for the Hug - it was just what I needed!":
                    thanksHugActive = true
                
                    
// *********** Song
                case "Just sent you 'That' song in Chat":
                    songActive = true
                    
                case "Thanks, your song really hit the spot!":
                    thanksSongActive = true
                    
                    
                    
// *********** Fist-pump
                case "You got a fist-pump":
                    fistPumpActive = true
// ************** No received page for fist-pump **************
                    
                    
                    
// *********** Well-being
                case "Wow, your friends really care about protecting you!":
                    mentalHealthActive = true
                    
                case "Ahhh! Thanks for the support!":
                    thanksMentalActive = true
                    
                    
// *********** You can do it
                case "Just sent you encouragement.":
                    canDoActive = true
                    
                case "said great - thanks for the encouragement":
                    thanksDoActive = true
                 
                    
                    
// *********** Congratulations
                case "Just sent you a Congratulations CareHeart ... TAP":
                    newCongratulationsActive = true
                    
                case "Just said thank you for the Congratulations!!!":
                    thanksCongratulationsActive = true
                    
                    
                case "just sent you an Affirmation in Chat":
                    affirmationActive = true
             
                    
                    
                    
//**************************************************
                case "Is redeaming ONE 'TalkCoupon'":
                    talkCouponActive = true
             
          
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


