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
    let friendAtmospheres: [Atmosphere]
    
    
    
    @State private var showItems: Bool = false
    @State private var offset: CGFloat = 200.0
    
    //**************************
        @State var animate: Bool = false
        let animation: Animation = Animation.linear(duration:3.0).repeatForever(autoreverses: false)
    //**************************
    
    
    var body: some View {
        
        ZStack {
            Color.black
                .opacity(0.9)
                .ignoresSafeArea()
  
//            AdPlayerView(name: "background_7")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//                .opacity(0.99)
            
            AdPlayerView(name: "moonShots2")
                .ignoresSafeArea()
                .blendMode(.screen)
                .opacity(0.6)
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
                .opacity(0.7)
            
            
//            AdPlayerView(name: "CHsSend2")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//                .opacity(0.15)
            
//            AdPlayerView(name: "dramaLights")
//                .opacity(0.1)
//                .ignoresSafeArea()
//                .blendMode(.screen)
//
            ZStack{
                
                VStack {
     
                    Spacer()
                        .frame(height: 230)
//  *************************************************
       

//    *******************************************
           
                        HStack {
                            
                            Spacer ()
                                .frame(width: 30)
                            
                            VStack {
                                NavigationLink(destination: CH4(user: user, friend: user, friends: friends, groups: groups), label: {
                                    HugCircle (color: Color.cyan, friendName: "Send \nComfort \nSong")
                                })
                                .offset(x: showItems ? -80 : 0, y: showItems ? 220: 0)
                                .shadow(color: Color.blue, radius: 5, x: -2, y: -2)
                                .opacity(0.3)
//                                .blinking(duration: 4.0)
                            }
                            
                            
                            Spacer()
                                .frame(width: 30)
                            
                            NavigationLink(destination: HugPushNotification(user: user, friends: friends), label: {
                                HugCircle (color: Color.cyan, friendName: "Sending \nHugs")
                            })
                            .offset(x: showItems ? -100 : 0, y: showItems ? -140: 0)
                            .shadow(color: Color .blue, radius: 5, x: 2, y: -2)
                            .opacity(0.2)
//                            .blinking(duration: 4.0)
                        }
                        
                        Spacer()
                            .frame(height: 15)
                        
                    VStack {
                           
                        HStack {
//                            NavigationLink(destination: CH4(user: user, friend: user, friends: friends, groups: groups), label: {
//                                HugCircle (color: Color.cyan, friendName: "Send \nComfort \nSong")
//                            })
//                            .offset(x: showItems ? -80 : 0, y: showItems ? 220: 0)
//                            .shadow(color: Color.blue, radius: 5, x: -2, y: -2)
//                            .opacity(0.99)
                            
                            Spacer ()
                                .frame(width: 100)
                            
                            ZStack {

                                NavigationLink(
                                    destination: RRBrokenHeart(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                    label: {
                                        
                                        ZStack {
                                            Text("Why \nCareHearts?")
                                                .font(.system(size: 14))
                                                .foregroundColor(ColorManager .grey4)
                                                .fontWeight(.bold)
                                                .opacity(0.99)
                                                .multilineTextAlignment(.center)
                                            //                        .blinking(duration: 2.0)
                                            
                                            Image(systemName: "heart")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 120, height: 120)
                                                .foregroundColor(Color.cyan)
                                                .opacity(0.1)
//                                                .rotationEffect(.degrees(10))
                                                .glow(color: Color.purple, radius: 1)
                                                .shadow(color: Color.purple, radius: 2, x: 0, y: 3)
                                            
                                            Image(systemName: "heart.fill")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 105, height: 105)
                                                .foregroundColor(ColorManager .purple3)
                                                .opacity(0.1)
                                            //                                        .rotationEffect(.degrees(10))
                                                .glow(color: Color.white, radius: 1)
                                                .shadow(color: Color.white, radius: 2, x: 0, y: 3)
                                        }
                                             
                                    })
                                }

                               
                            
                            Spacer ()
                                .frame(width: 60)
//                            NavigationLink(destination: RRWantToTalk(user: user, friend: user, friends: friends, groups: groups), label: {
//                                HugCircle (color: Color.cyan, friendName: "Want to \ntalk \nor text?")
//                            })
//                            .offset(x: showItems ? -80 : 0, y: showItems ? 220: 0)
//                            .shadow(color: Color.blue, radius: 5, x: -2, y: -2)
//                            .opacity(0.3)

                    }
                }
                   
//                    Spacer()
//                        .frame(height: 10)
                    
//        *************************** Center
                    HStack {
                       
                        Spacer ()
                            .frame(width: 6)
                        
                        NavigationLink(destination: RRWantToTalk(user: user, friend: user, friends: friends, groups: groups), label: {
                            HugCircle (color: Color.cyan, friendName: "Want to \ntalk \nor text?")
                        })
                        .offset(x: showItems ? -80 : 0, y: showItems ? 220: 0)
                        .shadow(color: Color.blue, radius: 5, x: -2, y: -2)
                        .opacity(0.3)
                        
                        Spacer()
                            .frame(width: 40)
                        
                        ZStack {
                            
                            //                            Image("planet_6")
                            //
                            //                                .resizable()
                            //                                .scaledToFit()
                            //                                .frame(width: 120, height: 120)
                            //                                .foregroundColor(Color.orange)
                            //                                .opacity(0.95)
                            
                            ZStack {
//                                NavigationLink(destination: EmptyView(), label: {
//                                    HugCircle (color: Color.cyan, friendName: "")
//                                })
//                                .offset(x: showItems ? -100 : 0, y: showItems ? -140: 0)
//                                .shadow(color: Color .blue, radius: 5, x: 2, y: -2)
//                                .opacity(0.99)
//
//
//                                NavigationLink(
//                                    destination:  PhotoPopView(user: user, friends: friends),
//                                    label: {
//
//                                        Image("IconPhotoNew")
//                                            .resizable()
//                                            .scaledToFit()
//                                            .frame(width: 70, height: 70)
//                                            .foregroundColor(Color.purple)
//                                            .glow(color: Color.white, radius: 0.3)
//                                            .shadow(color: .white, radius: 1, x: 3, y: -0.5)
//                                            .opacity(0.95)
//
//                                    })
                            }
                        }
                    }
                        
//      *************************
//                        Spacer()
//                            .frame(width: 75)
//
////
//                        NavigationLink(destination: CH4(user: user, friend: user, friends: friends, groups: groups), label: {
//                            HugCircle (color: Color.cyan, friendName: "Sad \nDay \nSong")
//                        })
//                        .offset(x: showItems ? -100 : 0, y: showItems ? -140: 0)
//                        .shadow(color: Color .blue, radius: 5, x: 2, y: -2)
//                        .opacity(0.99)
//                    }
//
//
//                    HStack {
//
//                        ZStack {
//                            NavigationLink(destination: RR27(user: user, friend: user, friends: friends, groups: groups), label: {
//                                HugCircle (color: Color.purple, friendName: "Wishing \nLuck")
//                            })
//                            .offset(x: showItems ? -120 : 0, y: showItems ? 100: 0)
//                            .shadow(color: Color.purple, radius: 10, x: -4, y: 4)
//                            .opacity(0.99)
//
//                       }
//
//                        Spacer()
//                            .frame(width: 200)
                        
                        
                        
//  ********************************************
//                        ZStack {
//
//
//                            NavigationLink(destination: InfoWhyLoveBF(user: user, friend: user, friends: friends, groups: groups), label: {
//                                HugCircle (color: Color.cyan, friendName: "You look \nnice \ntoday")
//                            })
//                            .offset(x: showItems ? -120 : 0, y: showItems ? 100: 0)
//                            .shadow(color: Color.blue, radius: 10, x: -4, y: 4)
//                            .opacity(0.99)
//
//                        }
//                    }
//
//                    HStack {
//                        VStack {
//                            NavigationLink(destination: SendHomie(user: user, friends: friends), label: {
//                                HugCircle (color: Color.purple, friendName: "Send a \nFist- \nPump")
//                            })
//                            .offset(x: showItems ? 30 : 0, y: showItems ? -170: 0)
//                            .shadow(color: Color.purple, radius: 10, x: -4, y: 4)
//                            .opacity(0.99)
//                        }
//
//
//                        Spacer()
//                            .frame(width: 35)
//
//                        NavigationLink(destination: RR12(user: user, friend: user, friends: friends, groups: groups), label: {
//                            HugCircle (color: ColorManager .purple5, friendName: "Say \nCongrats!")
//                        })
//                        .offset(x: showItems ? -120 : 0, y: showItems ? 100: 0)
//                        .shadow(color: Color.purple, radius: 10, x: -4, y: 4)
//                        .opacity(0.99)
//                    }
                    
//      ********************************
                    VStack {
     
                        Spacer()
                            .frame(width: 140)
                        
                        
                        ZStack {
                            
                            //*********************************************** Motion
                            GeometryReader { geo in
                                HStack(spacing: 280) {
                                    
                                    Image("")
                                        .aspectRatio(contentMode: .fit)
//                                        .blinking(duration: 6.0)
                                    
                                    Spacer()
                                        .frame(width: 50)
                                    
//                                    ZStack {
//
//
////                                        NavigationLink(destination: RR12(user: user, friend: user, friends: friends, groups: groups), label: {
//                                            Image("FatGuy")
//                                            //                                            .aspectRatio(contentMode: .fit)
//                                                .frame(width: 120, height: 120)
//                                                .blinking(duration: 7.0)
//
//                                            Text("Helping friends on bad days")
//                                                .fontWeight(.medium)
//                                                .frame(width: 250, height: 40)
//                                                .foregroundColor(Color.black)
//                                                .font(.system(size: 17))
//                                                .background(ColorManager .purple1)
//                                                .cornerRadius(7)
//                                                .rotationEffect(.degrees(-25))
//                                                .opacity(0.8)
//                                            //                                            .glow(color: ColorManager .grey4, radius: 3)
//                                                .shadow(color: ColorManager .purple3, radius: 2, x: 0, y: 3)
//                                                .blinking(duration: 7.0)
//
//
//                                        }
////                                    )}
//
//    //**********************************************************
//                                    Image("")
//                                        .aspectRatio(contentMode: .fit)
//                                        .frame(width: geo.size.width, alignment: .leading)
//
//
//
//                                }
//                                .frame(width: geo.size.width, height: geo.size.height,
//                                       alignment: animate ? .trailing : .leading)
//                            }
//                            .ignoresSafeArea()
//                            .onAppear {
//                                withAnimation(animation) {
//                                    animate.toggle()
                                }

                            }
                        }

                        
    //    ********************************************
                        
                        //    ********************************************
                        
                        
                        VStack {
                            
                            Spacer ()
                                .frame(height: 100)
                            
                            
                            HStack {
                                
                                ZStack {
                                    Image("")
//
//
//                                    NavigationLink(destination: CH4(user: user, friend: user, friends: friends, groups: groups), label: {
//                                        HugCircle (color: Color.cyan, friendName: "Sad \nDay \nSong")
//                                    })
//                                    .offset(x: showItems ? -100 : 0, y: showItems ? -140: 0)
//                                    .shadow(color: Color .blue, radius: 5, x: 2, y: -2)
//                                    .opacity(0.99)
                                
                                }
                                
                                Spacer()
                                    .frame(width: 190)

//                                ZStack {
//
//                                    NavigationLink(destination: CH6(user: user, friend: user, friends: friends, groups: groups), label: {
//                                        HugCircle (color: ColorManager .grey1, friendName: "Build \nyour own \n'in-beta'")
//                                    })
//                                    .offset(x: showItems ? 85 : 0, y: showItems ? 400: 0)
//                                    .shadow(color: Color.cyan, radius: 4, x: 2, y: 3)
//                                    .opacity(0.99)
//                                }
                                
                            }
    
                            ZStack {
                                
                             
                                
                            }
                   
                        }
                        
            VStack {
                                
                Spacer ()
                    .frame(height: 80)
                                
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
                    
                    Image("iconSphere2")
                        .resizable()
                        .foregroundColor(color)
                    //                            .foregroundColor(ColorManager .purple2)
                        .frame(width: 95, height: 95)
                        .shadow(color: Color.white, radius: 6, x: 0, y: 0)
                    
                    Text(friendName)
                        .fontWeight(.bold)
                        .font(.system(size: 13))
                        .italic()
                        .foregroundColor(.black)
                    
                }
            }
        }
    }
    
