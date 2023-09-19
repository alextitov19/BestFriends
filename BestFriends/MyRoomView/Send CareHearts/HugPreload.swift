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
            
            AdPlayerView(name: "background_9")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            ZStack{
                
                
                
                VStack {
                    
                    Text("Sending")
                        .font(.system(size: 30))
                    //                            .italic()
                        .foregroundColor(ColorManager .grey1)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                    
                    Text("CareHearts")
                        .font(.system(size: 30))
                    //                            .italic()
                        .foregroundColor(ColorManager .grey1)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                    
                    Spacer ()
                        .frame(height: 20)
                    
                    HStack {
                        
                        VStack {
                            
                            
                            NavigationLink(destination: SendKisses(user: user, friends: friends), label: {
                                HugCircle (color: ColorManager .red, friendName: "Blowing \nKisses")
                            })
                            .offset(x: showItems ? 85 : 0, y: showItems ? 400: 0)
                            .shadow(color: Color .pink, radius: 10, x: 10, y: 10)
                            .opacity(0.5)
                            
                            
                            NavigationLink(destination: HugPushNotification(user: user, friends: friends), label: {
                                HugCircle (color: ColorManager.orange5, friendName: "Digital \nHUGS")
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
                                HugCircle (color: ColorManager .orange2, friendName: "Sending \nLove")
                            })
                            .offset(x: showItems ? -100 : 0, y: showItems ? -140: 0)
                            .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                            
                            .opacity(0.5)
                            
                            
                            //                    SendSongPush(user: user, friends: friends
                            
                            NavigationLink(destination: CH4(user: user, friend: user, friends: friends, groups: groups), label: {
                                HugCircle (color: ColorManager .grey1, friendName: "'That' \nSong")
                            })
                            .offset(x: showItems ? -120 : 0, y: showItems ? 100: 0)
                            .shadow(color: Color .blue, radius: 10, x: 10, y: 10)
                            .opacity(0.5)
                            
                        }
                    }
                    
                    
                    
                    HStack {
                        
                        Spacer ()
                            .frame(height: 20)
                        
                        
                        NavigationLink(destination: SendHomie(user: user, friends: friends), label: {
                            HugCircle (color: ColorManager .grey3, friendName: "send a \nfist pump")
                        })
                        .offset(x: showItems ? 30 : 0, y: showItems ? -170: 0)
                        .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                        //                    .opacity(0.65)
                        .opacity(0.65)
                        
                        
                        
                        
                        NavigationLink(destination: RR21(user: user, friends: friends), label: {
                            HugCircle (color: ColorManager .purple4, friendName: "Protect your \nwell-being")
                        })
                        .offset(x: showItems ? -120 : 0, y: showItems ? 100: 0)
                        .shadow(color: Color .blue, radius: 10, x: 10, y: 10)
                        .opacity(0.5)
                        
                    }
                        
                        Spacer ()
                            .frame(height: 20)
                        
                        
                        VStack {
                            
                            NavigationLink(destination: RR12(user: user, friend: user, friends: friends, groups: groups), label: {
                                HugCircle (color: ColorManager .purple4, friendName: "Congrats \nNice job!!!")
                            })
                            .offset(x: showItems ? -120 : 0, y: showItems ? 100: 0)
                            .shadow(color: Color .blue, radius: 10, x: 10, y: 10)
                            .opacity(0.5)
                            
                            
                            
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
                                        .blinking(duration: 2.0)
                                    
                                    
                                    NavigationLink(destination: CH6(user: user, friend: user, friends: friends, groups: groups), label: {
                                        
                                        Text("Customizing \nCareHearts \n(in beta)")
                                            .fontWeight(.thin)
                                            .foregroundColor(Color.black)
                                            .font(.system(size: 20))
                                            .multilineTextAlignment(.center)
                                            .rotationEffect(.degrees(-7))
                                            .opacity(1.0)
                                            .blinking(duration: 2.0)
                                        
                                        
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
                        .frame(width: 120, height: 100)
                        .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                    
                    Text(friendName)
                        .fontWeight(.light)
                        .font(.system(size: 17))
                        .italic()
                        .foregroundColor(.black)
                    
                }
            }
        }
    }

  
