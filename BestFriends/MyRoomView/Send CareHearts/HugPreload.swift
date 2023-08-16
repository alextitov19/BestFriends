//
//  HugPreload.swift
//  BestFriends
//
//  Created by Social Tech on 10/25/22.
//



import Foundation
import SwiftUI
import AVKit

struct HugPreload: View {
    
    let user: User
    let friends: [User]
    let groups: [Group]
    let atmosphere: Atmosphere
    
    @State private var showItems: Bool = false
    @State private var offset: CGFloat = 200.0
    
    
    var body: some View {
        
        ZStack {
            
            //            Image("CareHeartBalloon 1")
            //                .ignoresSafeArea()
            //                .scaledToFit()
            //                .opacity(0.6)
            
            Color.black
                .opacity(0.9)
                .ignoresSafeArea()
            
            
            //            AdPlayerView(name: "MainPgEarth")
            //                .ignoresSafeArea()
            //                .blendMode(.screen)
            
            AdPlayerView(name: "Planet5")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            ZStack{
                
                
                //                    NavigationLink(destination: InfoWhyLoveBF(user: user, friends: friends), label: {
                //                        HugCircle (color: ColorManager.purple1, friendName: "you looked \nnice \ntoday")
                //                    })
                //                    .offset(x: showItems ? 120 : 0, y: showItems ? -270: 0)
                //                    .shadow(color: ColorManager .purple2, radius: 10, x: 10, y: 10)
                ////                    .opacity(0.6)
                //                    .opacity(0.65)
                ////
                ////
                
                //
                //
                //
                //                    NavigationLink(destination: SendHomie(user: user, friends: friends), label: {
                //                        HugCircle (color: ColorManager .grey3, friendName: "send a \nfist pump")
                //                    })
                //                    .offset(x: showItems ? 30 : 0, y: showItems ? -170: 0)
                //                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                ////                    .opacity(0.65)
                //                    .opacity(0.65)
                
                //
                //                NavigationLink(destination: HurtFeelings(user: user, friends: friends, groups: groups, atmosphere: atmosphere), label: {
                //                    HugCircle (color: Color .green, friendName: "MORE \nCareHearts")
                //                })
                //                .offset(x: showItems ? 0 : 0, y: showItems ? -100: 0)
                //                .shadow(color: ColorManager .grey1, radius: 10, x: 10, y: 10)
                //                .opacity(0.8)
                
                //
                //                NavigationLink(destination: HugPushNotification(user: user, friends: friends), label: {
                //                    HugCircle (color: ColorManager.purple1, friendName: "send a \nhug")
                //                })
                //                .offset(x: showItems ? 80 : 0, y: showItems ? -200: 0)
                //                .shadow(color: ColorManager .orange4, radius: 10, x: 10, y: 10)
                ////                    .opacity(0.6)
                //                .opacity(0.65)
                
                
                
                //
                //                    NavigationLink(destination: EmptyView(), label: {
                //                        HugCircle (color: ColorManager .purple5, friendName: "MORE \nCareHearts")
                //                    })
                //                    .offset(x: showItems ? 50 : 0, y: showItems ? 50: 0)
                //                    .shadow(color: ColorManager .grey1, radius: 10, x: 10, y: 10)
                //                    .opacity(0.65)
                //
                
                
                
                
                
                VStack {
                    
                    Text("Sending CareHearts")
                        .font(.system(size: 40))
                    //                            .italic()
                        .foregroundColor(ColorManager .grey1)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                    
                    Text("letting friends know you care")
                        .font(.system(size: 20))
                        .italic()
                        .foregroundColor(ColorManager .grey1)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                    
                    Spacer ()
                        .frame(height: 40)
                    
                    HStack {
                        
                        VStack {
                            
                            
                            NavigationLink(destination: SendKisses(user: user, friends: friends), label: {
                                HugCircle (color: ColorManager .red, friendName: "Blowing \nKisses")
                            })
                            .offset(x: showItems ? 85 : 0, y: showItems ? 400: 0)
                            .shadow(color: Color .pink, radius: 10, x: 10, y: 10)
                            .opacity(0.5)
                            
                            
                            NavigationLink(destination: HugPushNotification(user: user, friends: friends), label: {
                                HugCircle (color: ColorManager.orange5, friendName: "Sending \nHUGS")
                            })
                            .offset(x: showItems ? -80 : 0, y: showItems ? 220: 0)
                            .shadow(color: ColorManager .orange4, radius: 10, x: 10, y: 10)
                            //                    .opacity(0.6)
                            .opacity(0.5)
                            
                        }
                        
                        Spacer ()
                            .frame(width: 20)
                        
                        VStack {
                            
                            
                            NavigationLink(destination: RR11(user: user, friend: user, friends: friends, groups: groups), label: {
                                HugCircle (color: ColorManager .orange2, friendName: "Sending \nHearts")
                            })
                            .offset(x: showItems ? -100 : 0, y: showItems ? -140: 0)
                            .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                            
                            .opacity(0.5)
                            
                            
                            //                    SendSongPush(user: user, friends: friends
                            
                            NavigationLink(destination: CH4(user: user, friend: user, friends: friends, groups: groups), label: {
                                HugCircle (color: ColorManager .grey1, friendName: "Sending \nMusic")
                            })
                            .offset(x: showItems ? -120 : 0, y: showItems ? 100: 0)
                            .shadow(color: Color .blue, radius: 10, x: 10, y: 10)
                            .opacity(0.5)
                            
                        }
                    }
                    
                    
                    
                    
                    //                    NavigationLink(destination: SendHomie(user: user, friends: friends), label: {
                    //                        HugCircle (color: ColorManager .grey3, friendName: "send a \nfist pump")
                    //                    })
                    //                    .offset(x: showItems ? 30 : 0, y: showItems ? -170: 0)
                    //                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                    ////                    .opacity(0.65)
                    //                    .opacity(0.3)
                    
                    
                    
                    
                    //  ***************************************
                    
                    //                    NavigationLink(destination: HurtFeelings(user: user, friends: friends, groups: groups, atmosphere: atmosphere), label: {
                    //                        HugCircle (color: ColorManager .grey1, friendName: "MORE \nCareHearts")
                    //                    })
                    //                    .offset(x: showItems ? 50 : 0, y: showItems ? 50: 0)
                    //                    .shadow(color: ColorManager .grey1, radius: 10, x: 10, y: 10)
                    //                    .opacity(0.65)
                    
                    //                    NavigationLink(destination: PhotoPopView(user: user, friends: friends), label: {
                    //                        HugCircle (color: ColorManager .purple4, friendName: "send a \nPhotoPOP")
                    //                    })
                    //                    .offset(x: showItems ? -60 : 0, y: showItems ? 350: 0)
                    //                    .shadow(color: ColorManager .purple5, radius: 10, x: 10, y: 10)
                    //    //                .opacity(0.85)
                    //                    .opacity(0.65)
                    
                    
                    
                    
                    
                    
                    //                    NavigationLink(destination: EmptyView(), label: {
                    //                        HugCircle (color: ColorManager.grey3, friendName: "CareHeart \nCoupons")
                    //                    })
                    //                    .offset(x: showItems ? -80 : 0, y: showItems ? 220: 0)
                    //                    .shadow(color: ColorManager .orange4, radius: 10, x: 10, y: 10)
                    //    //                    .opacity(0.6)
                    //                    .opacity(0.65)
                    //
                    
                    //
                    
                    
                    
                    
                    //
                    //                        Image(systemName: "heart.fill")
                    //                            .resizable()
                    //                            .foregroundColor(ColorManager .purple1)
                    //                            .frame(width: 250, height: 200)
                    //                        //                    .blur(radius: 2)
                    //                            .shadow(color: ColorManager .purple3, radius: 65, x: 30, y: 50) .opacity(0.99)
                    //                            .opacity(0.70)
                    
                    
                    VStack {
                        
                        Spacer ()
                            .frame(height: 20)
                        
                        
                        NavigationLink(destination: RR12(user: user, friend: user, friends: friends, groups: groups), label: {
                            HugCircle (color: ColorManager .purple4, friendName: "Congrats \nNice job!!!")
                        })
                        .offset(x: showItems ? -120 : 0, y: showItems ? 100: 0)
                        .shadow(color: Color .blue, radius: 10, x: 10, y: 10)
                        .opacity(0.5)
                        
                     
                        
//
//                        NavigationLink(destination: RR12(user: user, friend: user, friends: friends, groups: groups), label: {
//                            HugCircle (color: ColorManager .purple5, friendName: "My Custom \nCareHearts")
//                        })
//                        .offset(x: showItems ? -120 : 0, y: showItems ? 100: 0)
//                        .shadow(color: Color .blue, radius: 10, x: 10, y: 10)
//                        .opacity(0.5)
                        
                        Spacer ()
                            .frame(height: 50)
                        
                        
                        
                        HStack {
                            Text("")
                                .font(.system(size: 15))
                                .foregroundColor(Color.white)
                                .fontWeight(.thin)
                                .multilineTextAlignment(.center)
                            
                            Spacer ()
                                .frame(width: 280)
                            
                            ZStack {
                                
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .foregroundColor(Color.purple)
                                    .frame(width: 150, height: 110)
                                    .rotationEffect(.degrees(-7))
                                    .shadow(color: Color .blue, radius: 10, x: 10, y: 10)
                                    .opacity(0.5)
                                
                                
                                NavigationLink(destination: CH6(user: user, friends: friends, groups: groups), label: {
                                  
                                    Text("My Custon \nCareHearts... ")
                                        .fontWeight(.thin)
                                        .foregroundColor(Color.black)
                                        .font(.system(size: 20))
                                        .multilineTextAlignment(.center)
                                        .rotationEffect(.degrees(-7))
                                        .opacity(0.85)
                                  
                                    
                                }
                                )}
                        }
                        
                        
                        VStack {
                            
                            //                            Spacer ()
                            //                                .frame(height: 100)
                            
                            
                        }
                    }
                }
                
                
                .onTapGesture {
                    withAnimation {
                        self.showItems.toggle()
                    }
                    print("tap function is working")
                }
                
                .animation(Animation.easeInOut(duration: 1.7), value: showItems)
                
            }
        }
    }
    
    
    struct HugCircle: View {
        var color: Color
        var friendName: String
        
        var body: some View {
            
            ZStack {
                
                Image(systemName: "heart.fill")
                    .resizable()
                    .foregroundColor(color)
                //                            .foregroundColor(ColorManager .purple2)
                    .frame(width: 150, height: 120)
                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                
                Text(friendName)
                    .fontWeight(.light)
                    .font(.system(size: 20))
                    .italic()
                    .foregroundColor(.black)
                
            }
        }
    }
}

    





//  *******************************************************************//  *******************************************************************//  *******************************************************************//  *******************************************************************//  *******************************************************************


//  *******************************************************************

//import SwiftUI
//
//struct HugPreload: View {
//    
//    @EnvironmentObject var sessionManager: SessionManager
//    
//    //        let user: User
//    //        let friends: [User]
//    //        let atmosphere: Atmosphere
//       let user: User
//        let friends: [User]
//        let groups: [Group]
//        let atmosphere: Atmosphere
//    
//    @State private var showItems: Bool = false
//    @State private var offset: CGFloat = 200.0
//    
//    
//    @State private var homeData: HomeData?
//    @State private var groups: [Group] = []
//    @State private var planets: [Planet] = []
//    
//    @State private var selectedPlanet: Planet?
//    
//    @State private var focusPlanet = false
//    @State private var showNewRoomNameDialog = false
//    
//    @State private var newGroupMembers: [String] = []
//    
//    @State private var chatGroupsView = ChatGroupsView(user: User(id: "", firstName: "", lastName: "", APNToken: "", atmosphere: "", chatPin: "", chatBackground: ""), groups: [])
//    
//    @State private var presentingPhotoPop = false
//    @State private var presentingIANs = false
//
//    let reloadingTimer = Timer.publish(every: 30, on: .main, in: .common).autoconnect()
//    
//    var body: some View {
//        NavigationView {
//            
//            
//            ZStack {
//                Color .black
//                    .ignoresSafeArea()
////                    .onAppear()
//                
////                Image("purpleBackground")
////                    .resizable()
////                    .ignoresSafeArea()
////                    .scaledToFill()
////                    .ignoresSafeArea()
//                    .onAppear {
//                        if RestApi.instance.needLogin {
//                            sessionManager.showLogin()
//                        } else {
//                            getHomeData()
//                        }
//                    }
//                    .onShake {
//                        presentingPhotoPop = true
//                    }
//                    .fullScreenCover(isPresented: $presentingPhotoPop, content: ShakePhotoPopView.init)
//                    .fullScreenCover(isPresented: $presentingIANs, content: NotificationsView.init)
//                    .onReceive(reloadingTimer) { time in
//                        getHomeData()
//                    }
//                
//                // Stars animation...
//                AdPlayerView(name: "CareHeart")
//                    .ignoresSafeArea()
//                //                    .scaledToFill()
//                    .blendMode(.screen)
//                    .onTapGesture(perform: backgroundTapped)
//                
//                VStack {
//                    if ((homeData) != nil) {
//                        HStack {
//                            Image(systemName: "bell")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 25, height: 25)
//                                .foregroundColor(.white)
//                                .onTapGesture {
//                                    print("Clicked notification bell")
//                                    presentingIANs.toggle()
//                                }
//                            
//                            Spacer()
//                            
//                            NavigationLink(
//                                destination: StartHere1(user: homeData!.user, atmosphere: homeData!.atmosphere, friends: homeData!.friends, friendAtmospheres: homeData!.friendAtmospheres, groups: homeData!.groups),
//                                label: {
//                                    
//                                    Image(systemName: "gear")
//                                        .resizable()
//                                        .scaledToFit()
//                                        .frame(width: 25, height: 25)
//                                        .foregroundColor(.white)
//                                })
//                        }
//                        .padding(10)
//                    }
//                    
//                    Spacer()
//                }
//                
//                VStack {
////                    Text("received notification - tap friend's planet")
////                        .font(.system(size: 15))
////                        .italic()
////                    //                            .foregroundColor(ColorManager .grey2)
////                        .fontWeight(.thin)
////                        .multilineTextAlignment(.center)
////                        .frame(width: 280, height: 30)
////                        .foregroundColor(.white)
////                        .font(.system(size: 20))
////                        .background(Color .black)
////                        .cornerRadius(10)
////                        .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
////                        .opacity(0.30)
////
////                    Spacer()
////                        .frame(height: 50)
////                    **************************************** this is out ^^^^
//                    
////                    ************************* This below is the Hug Page code
//                    
//                    //   **************************************************************//   **************************************************************//   **************************************************************
//                    
//           
//                    ZStack{
//                        
//                        NavigationLink(destination: EmptyView(), label: {
//                            HugCircle (color: ColorManager .pmbc_green, friendName: "????")
//                        })
//                        .offset(x: showItems ? -150 : 0, y: showItems ? -290: 0)
//                        .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
//                        .opacity(0.3)
//
//                            
//                            NavigationLink(destination: EmptyView(), label: {
//                                HugCircle (color: ColorManager.purple1, friendName: "coupon")
//                            })
//                            .offset(x: showItems ? 120 : 0, y: showItems ? -270: 0)
//                            .shadow(color: ColorManager .purple2, radius: 10, x: 10, y: 10)
//        //                    .opacity(0.6)
//                            .opacity(0.65)
//                         
//                            
//                            NavigationLink(destination: SaySomethingNice5(user: user, friends: friends), label: {
//                                HugCircle (color: ColorManager .orange2, friendName: "thinking \nof you")
//                            })
//                            .offset(x: showItems ? -100 : 0, y: showItems ? -140: 0)
//                            .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
//        //
//                            .opacity(065)
//                            
//                            
//                            
//                            NavigationLink(destination: SendHomie(user: user, friends: friends), label: {
//                                HugCircle (color: ColorManager .grey3, friendName: "send a \nfist pump")
//                            })
//                            .offset(x: showItems ? 30 : 0, y: showItems ? -170: 0)
//                            .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
//        //                    .opacity(0.65)
//                            .opacity(0.65)
//                            
//                      
//                        NavigationLink(destination: HurtFeelings(user: user, friends: friends), label: {
//                            HugCircle (color: ColorManager .grey1, friendName: "PhotoPOP")
//                        })
//                        .offset(x: showItems ? -100 : 0, y: showItems ? 200: 0)
//                        .shadow(color: ColorManager .grey1, radius: 10, x: 10, y: 10)
//        //                .opacity(0.85)
//                        .opacity(0.65)
//                        
//                        
//                        
//                        NavigationLink(destination: SaySomethingNice8(user: user, atmosphere: atmosphere, friends: friends), label: {
//                            HugCircle (color: ColorManager .grey1, friendName: "being \nnice")
//                        })
//                        .offset(x: showItems ? -00 : 0, y: showItems ? -370: 0)
//                        .shadow(color: ColorManager .grey1, radius: 10, x: 10, y: 10)
//                        .opacity(0.65)
//                        
//                        
//
//                        NavigationLink(destination: EmptyView(), label: {
//                            HugCircle (color: ColorManager .pmbc_blue, friendName: "????")
//                        })
//                        .offset(x: showItems ? 130 : 0, y: showItems ? 350: 0)
//                        .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
//                        .opacity(0.3)
//
//
//                        
//
//
//                            NavigationLink(destination: EmptyView(), label: {
//                                HugCircle (color: ColorManager .purple4, friendName: "Help a friend \nhaving a \nbad day")
//                            })
//                            .offset(x: showItems ? 0 : 0, y: showItems ? 0: 0)
//                            .shadow(color: ColorManager .grey1, radius: 10, x: 10, y: 10)
//                            .opacity(0.65)
//
//
//                       
//                        
//                        
//                        
//                        VStack {
//                                
//                            NavigationLink(destination: HugPushNotification(user: user, friends: friends), label: {
//                                HugCircle (color: ColorManager.purple1, friendName: "send a \nhug")
//                            })
//                            .offset(x: showItems ? 0 : 0, y: showItems ? 570: 0)
//                            .shadow(color: ColorManager .purple2, radius: 10, x: 10, y: 10)
//        //                    .opacity(0.6)
//                            .opacity(0.65)
//                                
//                                NavigationLink(destination: SendKisses(user: user, friends: friends), label: {
//                                    HugCircle (color: ColorManager .red, friendName: "blowing \nkisses")
//                                })
//                                .offset(x: showItems ? 100 : 0, y: showItems ? 290: 0)
//                                .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
//                                .opacity(0.3)
//                                
//        //
//        //                    NavigationLink(destination: SendKisses(user: user, friends: friends), label: {
//        //                        HugCircle (color: ColorManager .red, friendName: "kisses")
//        //                    })
//        //                    .offset(x: showItems ? 100 : 0, y: showItems ? 290: 0)
//        //                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
//        //                    .opacity(0.3)
//        //
//                                
//                                
//                                
//                                
//                                
//                                
//                                
//                                
//                                
//                                Image(systemName: "heart.fill")
//                                    .resizable()
//                                    .foregroundColor(ColorManager .purple1)
//                                    .frame(width: 250, height: 200)
//                                //                    .blur(radius: 2)
//                                    .shadow(color: ColorManager .purple3, radius: 65, x: 30, y: 50) .opacity(0.99)
//                                    .opacity(0.70)
//                                
//                                
//                                VStack {
//                                    
//                                    Spacer ()
//                                        .frame(height: 255)
//                                    
//                                    
//                                }
//                            }
//                            
//                        
//                            
//                            .onTapGesture {
//                                withAnimation {
//                                    self.showItems.toggle()
//                                }
//                                print("tap function is working")
//                            }
//                            
//                            .animation(Animation.easeInOut(duration: 1.7), value: showItems)
//                            
//                        }
//                    }
//                }
//                
//                
//                struct HugCircle: View {
//                    var color: Color
//                    var friendName: String
//                    
//                    var body: some View {
//                        
//                        ZStack {
//                            
//                            Image(systemName: "heart.fill")
//                                .resizable()
//                                .foregroundColor(color)
//                            //                            .foregroundColor(ColorManager .purple2)
//                                .frame(width: 130, height: 100)
//                                .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
//                            
//                            Text(friendName)
//                                .fontWeight(.light)
//                                .italic()
//                                .foregroundColor(.black)
//                            
//                        }
//                    }
//                }
//                
//                
//            }
//
//
//                    
//                    
//                    
//                    
//                    
//                    
//                    
//                    
//                    
//                    
//                    
////   **************************************************************
//                    //   **************************************************************//   **************************************************************//   **************************************************************//   **************************************************************//   **************************************************************
//                    
//
//                    if newGroupMembers.count > 0 && !focusPlanet {
//                        Button(action: {
//                            chatButtonTapped()
//                        }, label: {
//                            Text("create Chat rooms - see SetUp")
//                                .fontWeight(.light)
//                                .frame(width: 255, height: 30)
//                                .foregroundColor(.white)
//                                .background(ColorManager .purple7)
//                                .cornerRadius(10)
//                                .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
//                                .opacity(0.5)
//                        })
//                        
//                    }
//                    
//                    
//                    Spacer()
//                        .frame(height: 0)
//                    
//                    
////                    if selectedPlanet != nil {
////                        if homeData!.groups.count > 0 {
////                            NavigationLink(destination: UrgentChatInvite(user: homeData!.user, owner: homeData!.user, group: homeData!.groups[0]),
////                                           label: {
////                                Text("Song 4 Playlist - coming soon")
////                                    .fontWeight(.light)
////                                    .frame(width: 0, height: 0)
////                                    .foregroundColor(.white)
////                                    .background(ColorManager.purple3)
////                                    .cornerRadius(10)
////                                    .opacity(0.7)
////                            })
////                        }
////
////
//                        
//                        Spacer()
//                            .frame(height: 20)
//                        
//                        
//                        HStack {
//                            
//
////
//                                Spacer()
//                                    .frame(height: 15)
//                                
///
//                      
//               
//                if homeData?.groups != nil && homeData?.user != nil {
//                    ChatGroupsView(user: homeData!.user, groups: groups)
//                        .environmentObject(sessionManager)
//                    
//                    //  MARK: When toggle between Home view and Planet the [Atmosphere] and [FiendValult] buttons show up on Plant view and do not go away on Home view when the fiend's planet is tapped.
//                    //     MARK: Can not get the BlueMode to link to BlueMode page
//                    
//                    //                    if selectedPlanet != nil {
//                    //                        AtmosphereMain2(user: homeData!.user, atmosphere: homeData!.atmosphere, friends: homeData!.friends)
//                    //
//                }
//                
//            }
//        }.navigationViewStyle(StackNavigationViewStyle())
//    }
//    
//    private func getHomeData() {
//        RestApi.instance.getHomeData().then{ data in
//            print("Got HomeData: ", data)
//            homeData = data
//            RestApi.instance.setStatusToOnline(id: data.user.id)
//            RestApi.instance.registerAPNToken()
//            groups = homeData!.groups.sorted(by: { $0.createdOn > $1.createdOn })
//            
//            
//            createPlanets()
//            //            print("Got groups: ", data.groups.count)
//            //            chatGroupsView = ChatGroupsView(groups: data.groups)
//        }.catch { err in
//            print("Got error")
//            print(err)
//        }
//        
//    }
//    
//    // Create plantes and populate the planets array
//    private func createPlanets() {
//        planets = []
//        let friends: [User] = homeData?.friends ?? []
//        let atmosperes: [Atmosphere] = homeData?.friendAtmospheres ?? []
//        
//        for friend in friends {
//            for atmosphere in atmosperes {
//                if friend.atmosphere == atmosphere.id {
//                    // Found the friend - atmosphere pair
//                    let planet = Planet(user: friend, atmosphere: atmosphere)
//                    planets.append(planet)
//                }
//            }
//        }
//    }
//    
//    // Preform when main planet is tapped
//    private func mainPlanetTapped() {
//        if !focusPlanet {
//            withAnimation {
//                focusPlanet = true
//            }
//        }
//    }
//    
//    // Preform when background (stars) is tapped
//    private func backgroundTapped() {
//        if focusPlanet {
//            withAnimation {
//                focusPlanet = false
//            }
//        }
//    }
//    
//    // Get glow color for main planet
//    private func glowColor(mood: Int) -> Color {
//        switch mood {
//        case 0:
//            return Color(.systemBlue)
//        case 1:
//            return Color(.systemBlue)
//        case 2:
//            return Color(.systemBlue)
//        case 3:
//            return Color(.systemBlue)
//        case 4:
//            return Color(.systemGreen)
//        case 5:
//            return Color(.orange)
//        case 6:
//            return Color(.systemYellow)
//        case 7:
//            return Color(.systemYellow)
//        case 8:
//            return Color(.systemYellow)
//        case 9:
//            return Color(.systemYellow)
//        default:
//            return ColorManager.pmbc_blue
//            
//        }
//    }
//    
//    private func friendPlanetTapped(id: String) {
//        // Add/remove friend to group memebrs
//        if newGroupMembers.contains(id) {
//            newGroupMembers.remove(at: newGroupMembers.firstIndex(of: id) ?? 0)
//        } else {
//            newGroupMembers.append(id)
//        }
//        print(newGroupMembers.count)
//    }
//    
//    private func chatButtonTapped() {
//        if newGroupMembers.count > 0 {
//            for newId in newGroupMembers {
//                for f in homeData!.friends {
//                    if f.id == newId {
//                        //MARK: Sending push notification to friend "f"
//                        RestApi.instance.sendPushNotification(title: "Group chat", body: homeData!.user.firstName + " " +  String(homeData!.user.lastName.first!) + "needs to talk", APNToken: f.APNToken )
//                    }
//                }
//            }
//            
//            newGroupMembers.append(homeData!.user.id)
//            for group in homeData!.groups {
//                if group.members.containsSameElements(as: newGroupMembers) {
//                    sessionManager.showChat(user: homeData!.user, group: group)
//                    return
//                }
//            }
//            showNewRoomNameDialog = true
//        }
//    }
//    
//    private func createGroup(name: String) {
//        RestApi.instance.createGroup(name: name, members: newGroupMembers).then { response in
//            print("Create Group response: ", response)
//            sessionManager.showChat(user: homeData!.user, group: response)
//        }
//    }
//    
//    private func friendSentPlaylist(friend: User) {
//        let arr = [friend.id, homeData!.user.id]
//        for group in homeData!.groups {
//            if group.members.containsSameElements(as: arr) {
//                sessionManager.showChat(user: homeData!.user, group: group)
//            }
//            
//            
//            
//        }
//    }
//    
//
//
//
