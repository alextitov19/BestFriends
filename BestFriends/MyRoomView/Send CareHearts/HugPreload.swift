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
  
            AdPlayerView(name: "background_7")
                .ignoresSafeArea()
                .blendMode(.screen)
                .opacity(0.9)
            
         
            
            ZStack{
                
                VStack {
     
                    Spacer()
                        .frame(height: 207)
//  *************************************************
       
//                    HStack {
//
//                        ZStack {
//                            Image(systemName: "")
//
//                        }
//
//                        Spacer()
//                            .frame(width: 300)
//
//
//
//                            NavigationLink(
//                                destination: RR40Info2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
//                                label: {
//                                    Image(systemName: "info.circle")
//                                        .resizable()
//                                        .scaledToFit()
//                                        .frame(width: 32, height: 32)
//                                        .foregroundColor(ColorManager .purple3)
//    //                                        .glow(color: Color.purple, radius: 2)
//                                        .opacity(0.9)
//                                })
//                        }
           
                
//    *******************************************
           
                        HStack {
                            VStack {
                                NavigationLink(destination: SendKisses(user: user, friends: friends), label: {
                                    HugCircle (color: Color.cyan, friendName: "Blowing \nKisses")
                                })
                                .offset(x: showItems ? -80 : 0, y: showItems ? 220: 0)
                                .shadow(color: Color.blue, radius: 5, x: -2, y: -2)
                                .opacity(0.99)
                            }
                            
                            
                            Spacer()
                                .frame(width: 35)
                            
                            NavigationLink(destination: NEWSFeedPergion(user: user, friends: friends), label: {
                                HugCircle (color: Color.cyan, friendName: "Missing \nYou")
                            })
                            .offset(x: showItems ? -100 : 0, y: showItems ? -140: 0)
                            .shadow(color: Color .blue, radius: 5, x: 2, y: -2)
                            .opacity(0.99)
                        }
                        
                        Spacer()
                            .frame(height: 10)
                        
                    VStack {
                           
                        HStack {
                            NavigationLink(destination: HugPushNotification(user: user, friends: friends), label: {
                                HugCircle (color: Color.cyan, friendName: "Sending \nhugs")
                            })
                            .offset(x: showItems ? -80 : 0, y: showItems ? 220: 0)
                            .shadow(color: Color.blue, radius: 5, x: -2, y: -2)
                            .opacity(0.99)
                            
                            Spacer ()
                                .frame(width: 220)
                            
                            
                            NavigationLink(destination: SaySomethingNice5(user: user, friends: friends), label: {
                                HugCircle (color: Color.cyan, friendName: "Hearts")
                            })
                            .offset(x: showItems ? -100 : 0, y: showItems ? -140: 0)
                            .shadow(color: Color .blue, radius: 5, x: 2, y: -2)
                            .opacity(0.99)
                            

                    }
                }
                    
                    HStack {
                        
                        Spacer()
                            .frame(width: 10)
                        
                        NavigationLink(
                            destination:  PhotoPopView(user: user, friends: friends),
                            label: {
                                
                                Image("IconPhotoNew")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 60, height: 60)
                                    .rotationEffect(.degrees(-7))
                                    .foregroundColor(ColorManager .purple5)
                                    .glow(color: Color.purple, radius: 2)
                                    .opacity(0.9)
                                
                            })
                        
                        
                    }

                    HStack {
                        
                        ZStack {
                            NavigationLink(destination: RR27(user: user, friend: user, friends: friends, groups: groups), label: {
                                HugCircle (color: Color.purple, friendName: "Thumbs \nUp!")
                            })
                            .offset(x: showItems ? -120 : 0, y: showItems ? 100: 0)
                            .shadow(color: Color.purple, radius: 10, x: -4, y: 4)
                            .opacity(0.99)
                            
                        }
                        
                        Spacer()
                            .frame(width: 220)
                        
                        
                        
                        
                        ZStack {
                            
                            
                            NavigationLink(destination: InfoWhyLoveBF(user: user, friends: friends), label: {
                                HugCircle (color: Color.cyan, friendName: "You look \nnice \ntoday")
                            })
                            .offset(x: showItems ? -120 : 0, y: showItems ? 100: 0)
                            .shadow(color: Color.blue, radius: 10, x: -4, y: 4)
                            .opacity(0.99)
                      
                        }
                    }
                   
                    HStack {
                        VStack {
                            NavigationLink(destination: SendHomie(user: user, friends: friends), label: {
                                HugCircle (color: Color.purple, friendName: "Send \nFist-pump")
                            })
                            .offset(x: showItems ? 30 : 0, y: showItems ? -170: 0)
                            .shadow(color: Color.purple, radius: 10, x: -4, y: 4)
                            .opacity(0.99)
                        }
                        
                        
                        Spacer()
                            .frame(width: 35)
                        
                        NavigationLink(destination: RR12(user: user, friend: user, friends: friends, groups: groups), label: {
                            HugCircle (color: ColorManager .purple5, friendName: "Send \nCongrats!")
                        })
                        .offset(x: showItems ? -120 : 0, y: showItems ? 100: 0)
                        .shadow(color: Color.purple, radius: 10, x: -4, y: 4)
                        .opacity(0.99)
                    }
                    
                    
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
                                    
                                    ZStack {
                                        
                                        //    ********************************************
                                        Image("FatGuy")
//                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 120, height: 120)
                                            .blinking(duration: 7.0)
                                        
                                        Text("Send CareHearts")
                                            .fontWeight(.medium)
                                            .frame(width: 200, height: 40)
                                            .foregroundColor(Color.black)
                                            .font(.system(size: 20))
                                            .background(ColorManager .purple1)
                                            .cornerRadius(7)
                                            .rotationEffect(.degrees(-25))
                                            .opacity(0.8)
                                        //                                            .glow(color: ColorManager .grey4, radius: 3)
                                            .shadow(color: ColorManager .purple3, radius: 2, x: 0, y: 3)
                                            .blinking(duration: 7.0)
                                        
                                        //**********************************************************
                                        
                                    }
                                    
                                    Image("")
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: geo.size.width, alignment: .leading)
                                    
                                    
                                    
                                }
                                .frame(width: geo.size.width, height: geo.size.height,
                                       alignment: animate ? .trailing : .leading)
                            }
                            .ignoresSafeArea()
                            .onAppear {
                                withAnimation(animation) {
                                    animate.toggle()
                                }
                                
                            }
                        }
  
                        
                        VStack {
                            
                            Spacer ()
                                .frame(height: 100)
                            
                            
                            HStack {
                                
                                ZStack {
                                    Image("")
//
//
                                    NavigationLink(destination: CH4(user: user, friend: user, friends: friends, groups: groups), label: {
                                        HugCircle (color: Color.cyan, friendName: "Sad n' \nLonly")
                                    })
                                    .offset(x: showItems ? -100 : 0, y: showItems ? -140: 0)
                                    .shadow(color: Color .blue, radius: 5, x: 2, y: -2)
                                    .opacity(0.99)
                                
                                }
                                
                                Spacer()
                                    .frame(width: 50)
                                
                                NavigationLink(destination: RR20(user: user, friend: user, friends: friends, groups: groups), label: {
                                    HugCircle (color: Color.cyan, friendName: "Friends")
                                })
                                .offset(x: showItems ? -100 : 0, y: showItems ? -140: 0)
                                .shadow(color: Color .blue, radius: 5, x: 2, y: -2)
                                .opacity(0.99)
                                
                                
                                
                                Spacer()
                                    .frame(width: 50)
                                
                                ZStack {
                                    
                                    NavigationLink(destination: CH6(user: user, friend: user, friends: friends, groups: groups), label: {
                                        HugCircle (color: ColorManager .grey1, friendName: "Build \nyour own \n'in-beta'")
                                    })
                                    .offset(x: showItems ? 85 : 0, y: showItems ? 400: 0)
                                    .shadow(color: Color.cyan, radius: 4, x: 2, y: 3)
                                    .opacity(0.99)
                                    
                                }
                                
                            }
    //
                            }
                        
            VStack {
                                
                Spacer ()
                    .frame(height: 170)
                                
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
                    
                    Image("planet_6")
                        .resizable()
                        .foregroundColor(color)
                    //                            .foregroundColor(ColorManager .purple2)
                        .frame(width: 80, height: 80)
                        .shadow(color: Color.white, radius: 4, x: 0, y: 0)
                    
                    Text(friendName)
                        .fontWeight(.bold)
                        .font(.system(size: 14))
                        .italic()
                        .foregroundColor(.black)
                    
                }
            }
        }
    }
    
