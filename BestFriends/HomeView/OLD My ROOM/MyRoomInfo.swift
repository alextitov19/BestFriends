//
//  MyRoomInfo.swift
//  BestFriends
//
//  Created by Social Tech on 11/4/22.
//




import Foundation
import SwiftUI
import AVKit

struct MyRoomInfo: View {
    
    //    let user: User
    //    let friends: [User]
    //    let groups: [Group]
    //    let atmosphere: Atmosphere
    //
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    let groups: [Group]
    
    @State private var showItems: Bool = false
    @State private var offset: CGFloat = 200.0
    
    
    var body: some View {
        
        ZStack {
            //
            //            ColorManager.purple1
            //                .ignoresSafeArea()
            //                .onAppear()
            
            
            
            //            Image("purpleBackground")
            //                .resizable()
            //                .ignoresSafeArea()
            //                .scaledToFill()
            //                .opacity(0.5)
            //
            //
            //
            //            AdPlayerView(name: "AloneBeach")
            //                .ignoresSafeArea()
            //                .blendMode(.screen)
            //
            //
            //            ColorManager .purple5
            //                    .ignoresSafeArea()
            //                    .onAppear()
            
            Color .black
                .ignoresSafeArea()
            
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
            
//
//            Button(action: {
//                sessionManager.showLogin()
//            },
//                   label: {
//                Image("home-alt2")
//                    .frame(width: 50, height: 25)
//                    .foregroundColor(.white)
//                    .font(.system(size: 20))
//                    .background(Color .black)
//                    .cornerRadius(15)
//                    .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
//                    .opacity(0.70)
//
//            })
            
            ZStack{
                
                
                
                NavigationLink(destination: AtmosphereInfo1(user: user, atmosphere: atmosphere, friends: friends), label: {
                    MyRoomCircle (color: Color .white, friendName: "request \na song")
                })
                .offset(x: showItems ? 100 : 0, y: showItems ? 200: 0)
                .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
                .opacity(0.6)
                
                
                
                
                NavigationLink(destination: HugPushNotification3(user: user, friends: friends), label: {
                    MyRoomCircle (color: ColorManager .grey1, friendName: "request \na hug")
                })
                .offset(x: showItems ? -120 : 0, y: showItems ? 10: 0)
                .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
                .opacity(0.6)
                
                
                
                NavigationLink(destination: BuggingPreload1(user: user, friends: friends, groups: groups), label: {
                    MyRoomCircle (color: ColorManager .red, friendName: "somethings \n bugging \nme \n(not here)")
                })
                .offset(x: showItems ? -100 : 0, y: showItems ? -270: 0)
                .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
                .opacity(0.25)
                
                
//                NavigationLink(destination: BuggingPreload1(user: user, friends: friends, groups: groups), label: {
//                    MyRoomCircle (color: ColorManager .red, friendName: "worldwide \nteen advice \nGPT (AI)")
//                })
//                .offset(x: showItems ? 100 : 0, y: showItems ? -100: 0)
//                .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
//                .opacity(0.25)
                
                
                
                NavigationLink(destination: BestFriendMessages(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres), label: {
                    MyRoomCircle (color: Color .white, friendName: "SmileVault")
                })
                .offset(x: showItems ? -120 : 0, y: showItems ? -120: 0)
                .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
                .opacity(0.6)
                
                
                
                
                NavigationLink(destination: FriendVaultTrackMoods(calendar: .current), label: {
                    MyRoomCircle (color: Color .white, friendName: "'Vibe' \ntracker")
                })
                .offset(x: showItems ? 130 : 0, y: showItems ? 30: 0)
                .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
                .opacity(0.6)
                
                
                
                
                NavigationLink(destination: MyFears(user: user, friends: friends), label: {
                    MyRoomCircle (color: Color .white, friendName: "I can't \nbreathe")
                })
                .offset(x: showItems ? 100 : 0, y: showItems ? -250: 0)
                .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
                .opacity(0.6)
                
                
                
                
                NavigationLink(destination: BuiltByTeens2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups), label: {
                    MyRoomCircle (color: Color .green, friendName: "ready to talk; \nalert friends")
                })
                .offset(x: showItems ? -50 : 0, y: showItems ? 270: 0)
                .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
                .opacity(0.5)
                
//                NavigationLink(destination: EmptyView(), label: {
//                    MyRoomCircle (color: Color .purple, friendName: "We got you! \nTAP")
//                })
//                .offset(x: showItems ? 0 : 0, y: showItems ? 500: 0)
//                .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
//                .opacity(0.8)
                
                
              
                
              
                NavigationLink(destination: EmptyView(), label: {
                    MyRoomCircle (color: Color .green, friendName: "TAP")
                })
                .offset(x: showItems ? 0 : 0, y: showItems ? 0: 0)
                .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
                .opacity(0.8)
                
                
                
                VStack {
                    
                    NavigationLink(destination: HorizonPromoPage(user: user, friends: friends, atmosphere: atmosphere), label: {
                        MyRoomCircle (color: ColorManager .purple4, friendName: "my \njournal")
                    })
                    .offset(x: showItems ? 0 : 0, y: showItems ? 400: 0)
                    .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
                    .opacity(0.5)
                    
                    
                    NavigationLink(destination: BuggingPreload1(user: user, friends: friends, groups: groups), label: {
                        MyRoomCircle (color: Color .green, friendName: "worldwide \nteen advice \nGPT (AI)")
                    })
                    .offset(x: showItems ? 100 : 0, y: showItems ? 100: 0)
                    .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
                    .opacity(0.5)
                    
                    
                    
//
//                                            Text("Ready to Chat")
//
//                                              .font(.system(size: 15))
//                                              .fontWeight(.light)
//                                              .multilineTextAlignment(.center)
//                                              .foregroundColor(ColorManager .grey3)
                    
                    
                    Button(action: {
                        sessionManager.showLogin()
                    },
                           label: {
                        Image("home-alt2")
                            .frame(width: 50, height: 25)
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .background(Color .black)
                            .cornerRadius(15)
                            .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                            .opacity(0.70)
                        
                    })
                    
                    
                    
                    //
                    //                NavigationLink(destination: EmptyView(), label: {
                    //                    HugCircle (color: ColorManager .pmbc_green, friendName: "????")
                    //                })
                    //                .offset(x: showItems ? -150 : 0, y: showItems ? -290: 0)
                    //                .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                    //                .opacity(0.3)
                    //
                    //
                    //                    NavigationLink(destination: EmptyView(), label: {
                    //                        HugCircle (color: ColorManager.purple1, friendName: "Coupon")
                    //                    })
                    //                    .offset(x: showItems ? 120 : 0, y: showItems ? -270: 0)
                    //                    .shadow(color: ColorManager .purple2, radius: 10, x: 10, y: 10)
                    ////                    .opacity(0.6)
                    //                    .opacity(0.65)
                    //
                    //
                    //                    NavigationLink(destination: SaySomethingNice5(user: user, friends: friends), label: {
                    //                        HugCircle (color: ColorManager .orange2, friendName: "missing \nyou")
                    //                    })
                    //                    .offset(x: showItems ? -100 : 0, y: showItems ? -140: 0)
                    //                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                    ////
                    //                    .opacity(065)
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
                    //
                    //                NavigationLink(destination: HurtFeelings(user: user, friends: friends), label: {
                    //                    HugCircle (color: ColorManager .grey1, friendName: "PhotoPOP")
                    //                })
                    //                .offset(x: showItems ? -100 : 0, y: showItems ? 200: 0)
                    //                .shadow(color: ColorManager .grey1, radius: 10, x: 10, y: 10)
                    ////                .opacity(0.85)
                    //                .opacity(0.65)
                    //
                    //
                    //
                    //                NavigationLink(destination: SaySomethingNice8(user: user, atmosphere: atmosphere, friends: friends), label: {
                    //                    HugCircle (color: ColorManager .grey1, friendName: "say \nsomething \nnice")
                    //                })
                    //                .offset(x: showItems ? -00 : 0, y: showItems ? -370: 0)
                    //                .shadow(color: ColorManager .grey1, radius: 10, x: 10, y: 10)
                    //                .opacity(0.65)
                    //
                    //
                    //
                    //                NavigationLink(destination: EmptyView(), label: {
                    //                    HugCircle (color: ColorManager .pmbc_blue, friendName: "????")
                    //                })
                    //                .offset(x: showItems ? 130 : 0, y: showItems ? 350: 0)
                    //                .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                    //                .opacity(0.3)
                    //
                    //
                    //
                    //
                    //
                    //                    NavigationLink(destination: EmptyView(), label: {
                    //                        HugCircle (color: ColorManager .purple4, friendName: "TAP Here")
                    //                    })
                    //                    .offset(x: showItems ? 0 : 0, y: showItems ? 0: 0)
                    //                    .shadow(color: ColorManager .grey1, radius: 10, x: 10, y: 10)
                    //                    .opacity(0.65)
                    //
                    //
                    //
                    //
                    //
                    //
                    //                VStack {
                    //
                    //                    NavigationLink(destination: HugPushNotification(user: user, friends: friends), label: {
                    //                        HugCircle (color: ColorManager.purple1, friendName: "hugs")
                    //                    })
                    //                    .offset(x: showItems ? 0 : 0, y: showItems ? 570: 0)
                    //                    .shadow(color: ColorManager .purple2, radius: 10, x: 10, y: 10)
                    ////                    .opacity(0.6)
                    //                    .opacity(0.65)
                    //
                    //                        NavigationLink(destination: SendKisses(user: user, friends: friends), label: {
                    //                            HugCircle (color: ColorManager .red, friendName: "kisses")
                    //                        })
                    //                        .offset(x: showItems ? 100 : 0, y: showItems ? 290: 0)
                    //                        .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                    //                        .opacity(0.3)
                    //
                    //
                    //                    NavigationLink(destination: SendKisses(user: user, friends: friends), label: {
                    //                        HugCircle (color: ColorManager .red, friendName: "kisses")
                    //                    })
                    //                    .offset(x: showItems ? 100 : 0, y: showItems ? 290: 0)
                    //                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                    //                    .opacity(0.3)
                    //
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(ColorManager .purple1)
                        .frame(width: 140, height: 110)
                    //                    .blur(radius: 2)
                        .shadow(color: ColorManager .purple5, radius: 65, x: 30, y: 50) .opacity(0.99)
                        .opacity(0.3)
                    
                    
                    VStack {
                        
                        
                        
                        
                        
                        Spacer ()
                            .frame(height: 255)
                        
//                        Button(action: {
//                            sessionManager.showLogin()
//                        },
//                               label: {
//                            Image("home-alt2")
//                                .frame(width: 50, height: 25)
//                                .foregroundColor(.white)
//                                .font(.system(size: 20))
//                                .background(Color .black)
//                                .cornerRadius(15)
//                                .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
//                                .opacity(0.70)
//
//                        })
                        
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
    
    
    
    
    
    struct MyRoomCircle: View {
        var color: Color
        var friendName: String
        
        var body: some View {
            
            ZStack {
                
                Image(systemName: "circle.fill")
                    .resizable()
                    .foregroundColor(color)
                //                            .foregroundColor(ColorManager .purple2)
                    .frame(width: 140, height: 110)
                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                
                Text(friendName)
                    .fontWeight(.light)
                    .italic()
                    .foregroundColor(.black)
                
                
                
                
            }
        }
    }
    
}
    





//**************************************************************
//**************************************************************************
//import Foundation
//import SwiftUI
//import AVKit
//
//struct MyRoomInfo: View {
//
//    //    let user: User
//    //    let friends: [User]
//    //    let groups: [Group]
//    //    let atmosphere: Atmosphere
//    //
//
//    let user: User
//    let atmosphere: Atmosphere
//    let friends: [User]
//    let friendAtmospheres: [Atmosphere]
//    let groups: [Group]
//
//    @State private var showItems: Bool = false
//    @State private var offset: CGFloat = 200.0
//
//
//    var body: some View {
//
//        ZStack {
//            ColorManager .purple5
//                .ignoresSafeArea()
//                .onAppear()
//
//            Color .black
//                .ignoresSafeArea()
//
//
//            AdPlayerView(name: "sky2")
//                .ignoresSafeArea()
//
//
//            ZStack{
//
//
//
//
//                NavigationLink(destination: AtmosphereInfo1(user: user, atmosphere: atmosphere, friends: friends), label: {
//                    MyRoomCircle (color: Color .white, friendName: "Cupcakes")
//                })
//                .offset(x: showItems ? 100 : 0, y: showItems ? 150: 0)
//                .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
//                .opacity(0.4)
//
//
//
//
//                NavigationLink(destination: HugPushNotification3(user: user, friends: friends), label: {
//                    MyRoomCircle (color: ColorManager .grey1, friendName: "Need a Hug")
//                })
//                .offset(x: showItems ? 0 : 0, y: showItems ? -170: 0)
//                .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
//                .opacity(0.25)
//
//
//
//                NavigationLink(destination: BuggingPreload1(user: user, friends: friends, groups: groups), label: {
//                    MyRoomCircle (color: ColorManager .grey1, friendName: "Something \n Bugging \nMe")
//                })
//                .offset(x: showItems ? -100 : 0, y: showItems ? -270: 0)
//                .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
//                .opacity(0.25)
//
//
//
//
//                NavigationLink(destination: BestFriendMessages(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres), label: {
//                    MyRoomCircle (color: Color .white, friendName: "SmileVault")
//                })
//                .offset(x: showItems ? -120 : 0, y: showItems ? -120: 0)
//                .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
//                .opacity(0.25)
//
//
//
//
//                NavigationLink(destination: FriendVaultTrackMoods(user: user, atmosphere: atmosphere, friends: friends), label: {
//                    MyRoomCircle (color: Color .white, friendName: "'Vibe' \nTracker")
//                })
//                .offset(x: showItems ? 130 : 0, y: showItems ? 30: 0)
//                .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
//                .opacity(0.4)
//
//
//
//
//                NavigationLink(destination: MyFears(user: user, friends: friends), label: {
//                    MyRoomCircle (color: Color .white, friendName: "I can't \nBreathe")
//                })
//                .offset(x: showItems ? 100 : 0, y: showItems ? -250: 0)
//                .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
//                .opacity(0.4)
//
//
//
//
//
//
//                NavigationLink(destination: EmptyView(), label: {
//                    MyRoomCircle (color: Color .white, friendName: "Send a Song")
//                })
//                .offset(x: showItems ? -100 : 0, y: showItems ? 200: 0)
//                .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
//                .opacity(0.4)
//
//
//
//                //
//                //
//                //                                    NavigationLink(destination: EmptyView(), label: {
//                //                                        MyRoomCircle (color: ColorManager .purple4, friendName: "TAP Here")
//                //                                    })
//                //                                    .offset(x: showItems ? 0 : 0, y: showItems ? 0: 0)
//                //                                    .shadow(color: ColorManager .grey1, radius: 10, x: 10, y: 10)
//                //                                    .opacity(0.65)
//                //
//                //
//
//                VStack {
//                    //
//                    //                    NavigationLink(destination: HugPushNotification(user: user, friends: friends), label: {
//                    //                        HugCircle (color: ColorManager.purple1, friendName: "hugs")
//                    //                    })
//                    //                    .offset(x: showItems ? 0 : 0, y: showItems ? 570: 0)
//                    //                    .shadow(color: ColorManager .purple2, radius: 10, x: 10, y: 10)
//                    ////                    .opacity(0.6)
//                    //                    .opacity(0.65)
//                    //
//                    //                        NavigationLink(destination: SendKisses(user: user, friends: friends), label: {
//                    //                            HugCircle (color: ColorManager .red, friendName: "kisses")
//                    //                        })
//                    //                        .offset(x: showItems ? 100 : 0, y: showItems ? 290: 0)
//                    //                        .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
//                    //                        .opacity(0.3)
//
//                    //
//                    //                    NavigationLink(destination: SendKisses(user: user, friends: friends), label: {
//                    //                        HugCircle (color: ColorManager .red, friendName: "kisses")
//                    //                    })
//                    //                    .offset(x: showItems ? 100 : 0, y: showItems ? 290: 0)
//                    //                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
//                    //                    .opacity(0.3)
//                    //
//
//
//
//
//
//
//
//
//
//                    Image(systemName: "circle.fill")
//                        .resizable()
//                        .foregroundColor(ColorManager .orange1)
//                        .frame(width: 155, height: 120)
//                    //                    .blur(radius: 2)
//                        .shadow(color: ColorManager .orange5, radius: 65, x: 30, y: 50) .opacity(0.99)
//                        .opacity(0.93)
//
//
//
//                    VStack {
////
//
//
////                        Spacer ()
////                            .frame(height: 20)
////
////
//                    }
//                }
//
//
//                .onTapGesture {
//                    withAnimation {
//                        self.showItems.toggle()
//                    }
//                    print("tap function is working")
//                }
//
//                .animation(Animation.easeInOut(duration: 1.7), value: showItems)
//
//            }
//        }
//    }
//
//
//    struct MyRoomCircle: View {
//        var color: Color
//        var friendName: String
//
//        var body: some View {
//
//            ZStack {
//
//                Image(systemName: "star.fill")
//                    .resizable()
//                    .foregroundColor(color)
//                //                            .foregroundColor(ColorManager .purple2)
//                    .frame(width: 140, height: 110)
//                    .shadow(color: ColorManager .purple3, radius: 10, x: 10, y: 10)
//
//                Text(friendName)
//                    .fontWeight(.light)
//                    .italic()
//                    .foregroundColor(.black)
//
//            }
//        }
//    }
//}
//
//





//*****************************************************************

//******************************************************************************
//
//import Foundation
//import SwiftUI
//import AVKit
//
//struct MyRoomInfo: View {
//
//    @EnvironmentObject var sessionManager: SessionManager
//
//    let user: User
//    let atmosphere: Atmosphere
//    let friends: [User]
//    let friendAtmospheres: [Atmosphere]
//    let groups: [Group]
//
//    @State private var showItems: Bool = false
//    @State private var offset: CGFloat = 200.0
//    @State private var isLockTapped = false
//
//
//    var body: some View {
//
//        ZStack {
//
//            ColorManager.purple7
//                .ignoresSafeArea()
//                .onAppear()
//            //
//            //            Image("blueBackground")
//            //                .resizable()
//            //                .ignoresSafeArea()
//            //                .scaledToFill()
//            //                .opacity(0.5)
//            //
//            //
//
//
//            AdPlayerView(name: "MyRoom5")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//
//
//
//
//
//            ZStack{
//
//
//
//
//
//
//
//                ZStack {
//
//
//                    NavigationLink(destination: AtmosphereInfo1(user: user, atmosphere: atmosphere, friends: friends), label: {
//                        MyRoomCircle (color: Color .white, friendName: "Cupcakes \ninstead of \ngrades")
//                    })
//                    .offset(x: showItems ? 100 : 0, y: showItems ? 150: 0)
//                    .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
//                    .opacity(0.4)
//
//
//
//
//                    NavigationLink(destination: HugPushNotification3(user: user, friends: friends), label: {
//                        MyRoomCircle (color: ColorManager .grey1, friendName: "I need a \n Hug")
//                    })
//                    .offset(x: showItems ? 0 : 0, y: showItems ? -170: 0)
//                    .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
//                    .opacity(0.25)
//
//
//
//                    NavigationLink(destination: BuggingPreload1(user: user, friends: friends, groups: groups), label: {
//                        MyRoomCircle (color: ColorManager .grey1, friendName: "Something \n Bugging \nYou?")
//                    })
//                    .offset(x: showItems ? -100 : 0, y: showItems ? -270: 0)
//                    .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
//                    .opacity(0.25)
//
//
//
//
//                    NavigationLink(destination: BestFriendMessages(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres), label: {
//                        MyRoomCircle (color: Color .white, friendName: "SmileVault")
//                    })
//                    .offset(x: showItems ? -120 : 0, y: showItems ? -120: 0)
//                    .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
//                    .opacity(0.25)
//
//
//
//
//                    NavigationLink(destination: FriendVaultTrackMoods(user: user, atmosphere: atmosphere, friends: friends), label: {
//                        MyRoomCircle (color: Color .white, friendName: "'Vibe' \nTracker")
//                    })
//                    .offset(x: showItems ? 130 : 0, y: showItems ? 30: 0)
//                    .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
//                    .opacity(0.4)
//
//
//
//
//                    NavigationLink(destination: MyFears(user: user, friends: friends), label: {
//                        MyRoomCircle (color: Color .white, friendName: "I can't \nBreathe")
//                    })
//                    .offset(x: showItems ? 100 : 0, y: showItems ? -250: 0)
//                    .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
//                    .opacity(0.4)
//
//
//
//
//
//
//                    NavigationLink(destination: EmptyView(), label: {
//                        MyRoomCircle (color: Color .white, friendName: "Im Sad \n Send a Song")
//                    })
//                    .offset(x: showItems ? -100 : 0, y: showItems ? 200: 0)
//                    .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
//                    .opacity(0.4)
//
//
//                    //
//                    //
//                    //                        NavigationLink(destination: PickMediator(user: user, atmosphere: atmosphere,                           friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
//                    //                          label: {
//                    //                        MyRoomCircle (color: Color .white, friendName: "my precious \ndreams")
//                    //                        })
//                    //                        .offset(x: showItems ? -120 : 0, y: showItems ? 170: 0)
//                    //                        .shadow(color: ColorManager .purple2, radius: 10, x: 10, y: 10)
//                    //                        .opacity(0.4)
//                    //
//
//                    //  NavigationLink(destination: SendSongChat2(user: user, friend: friend, friends: friends, groups: groups, friendAtmospheres: friendAtmospheres), label: {
//                    //  MyRoomCircle (color: Color .white, friendName: "Im Sad \n Send a Song")
//                    //  })
//                    //  .offset(x: showItems ? -100 : 0, y: showItems ? 200: 0)
//                    //  .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
//                    //  .opacity(0.4)
//
//
//                    //  NavigationLink(destination: SendSongChat2(user: user, friend: friend, friends: friends, groups: groups, friendAtmospheres: friendAtmospheres), label: {
//                    //  MyRoomCircle (color: Color .white, friendName: "Fun Day \n Coupon")
//                    //  })
//                    //  .offset(x: showItems ? -100 : 0, y: showItems ? 200: 0)
//                    //  .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
//                    //  .opacity(0.4)
//
//
//
//
//
//
//                    NavigationLink(destination: EmptyView(), label: {
//                        MyRoomCircle (color: ColorManager .grey1, friendName: "")
//                    })
//                    .offset(x: showItems ? 0 : 0, y: showItems ? 0: 0)
//                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
//                    //
//
//
//
//
//                    Image(systemName: "triangle.fill")
//                        .resizable()
//                        .foregroundColor(ColorManager .grey2)
//                        .frame(width: 220, height: 180)
//                        .shadow(color: ColorManager .purple4, radius: 65, x: 30, y: 50)
//                        .opacity(0.7)
//
//
//                    VStack {
//
//
//                        Spacer ()
//                            .frame(height: 65)
//
//                        Text("safe in my")
//                            .font(.system(size: 20))
//                            .foregroundColor(.white)
//                            .fontWeight(.ultraLight)
//                            .multilineTextAlignment(.center)
//                        Text("ROOM")
//                            .font(.system(size: 22))
//                            .foregroundColor(.white)
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//
//                        Spacer ()
//                            .frame(height: 35)
//
//                        Text("Lock Room")
//                            .fontWeight(.light)
//                            .frame(width: 85, height: 21)
//                            .foregroundColor(.white)
//                            .font(.system(size: 15))
//                            .background(ColorManager.grey3)
//                            .cornerRadius(15)
//                            .onTapGesture(perform: {
//                                let updatedUser = User(id: user.id, firstName: user.firstName, lastName: user.lastName, APNToken: user.APNToken, friends: user.friends, groups: user.groups, hiddenGroups: user.hiddenGroups, atmosphere: user.atmosphere, chatPin: user.chatPin, chatBackground: user.chatBackground, smileNotes: user.smileNotes, roomHidden: true)
//                                RestApi.instance.updateUser(user: updatedUser).then({ response in
//                                    print("Got update response: ", response)
//                                    isLockTapped.toggle()
//                                })
//                            })
//                            .onAppear(perform: {
//                                if user.roomHidden != nil {
//                                    if user.roomHidden == true {
//                                        isLockTapped.toggle()
//                                    }
//                                }
//                            })
//                            .fullScreenCover(isPresented: $isLockTapped) {
//                                HideMyRoom(user: user)
//                            }
//                    }
//                }
//
//
//                VStack {
//
//                    Spacer ()
//                        .frame(height: 230)
//                    Button(action: {
//                        sessionManager.showLogin()
//                    },
//                           label: {
//                        Image("home-alt2")
//                            .frame(width: 50, height: 25)
//                            .foregroundColor(.white)
//                            .font(.system(size: 20))
//                            .background(Color .black)
//                            .cornerRadius(15)
//                            .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
//                            .opacity(0.70)
//
//                    })
//                }
//
//                    .onTapGesture {
//                        withAnimation {
//                            self.showItems.toggle()
//                        }
//                        print("tap function is working")
//                    }
//
//                    .animation(Animation.easeInOut(duration: 2.5), value: showItems)
//
//                }
//            }
//        }
//
//
//        struct MyRoomCircle: View {
//            var color: Color
//            var friendName: String
//
//            var body: some View {
//
//                ZStack {
//
//                    Circle()
//                        .frame(width: 120, height: 120)
//                        .clipShape(Circle())
//                        .foregroundColor(Color .white)
//                        .opacity(0.7)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 5, x: 0, y: 5)
//
//                    Text(friendName)
//                        .fontWeight(.light)
//                        .italic()
//                        .foregroundColor(.black)
//
//                }
//
//
//            }
//        }
//    }
//
//
