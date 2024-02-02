//
//  RR56.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 10/29/23.
//


import Foundation
import SwiftUI
import AVKit

struct RR56: View {
    
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
            ColorManager .grey3
                .opacity(0.9)
                .ignoresSafeArea()
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
                .opacity(0.9)
            
            AdPlayerView(name: "girlFriends1")
                .ignoresSafeArea()
                .blendMode(.screen)
                .opacity(0.25)
            
            
            ZStack{
                
                VStack {
     
                    Spacer()
                        .frame(height: 70)
                    
                        HStack {
                            VStack {
                                NavigationLink(destination: CH9(user: user, friends: friends), label: {
                                    HugCircle (color: ColorManager .grey1, friendName: "Catching \nKisses")
                                })
                                .offset(x: showItems ? -80 : 0, y: showItems ? 220: 0)
                                .shadow(color: Color.white, radius: 5, x: -2, y: -2)
                                .opacity(0.8)
                            }
                            
                            
                            Spacer()
                                .frame(width: 35)
                            
                            NavigationLink(destination: RR13(user: user, friends: friends, groups: groups), label: {
                                HugCircle (color: ColorManager .grey1, friendName: "You \ngot \nHearts")
                            })
                            .offset(x: showItems ? -80 : 0, y: showItems ? 220: 0)
                            .shadow(color: Color.white, radius: 5, x: -2, y: -2)
                            .opacity(0.8)
                        }
                        
                        Spacer()
                            .frame(height: 20)
                        
                    VStack {
                           
                        HStack {
                            NavigationLink(destination: VirtualHug(user: user, friends: friends), label: {
                                HugCircle (color: ColorManager .grey1, friendName: "Holding \n your \nHugs")
                            })
                            .offset(x: showItems ? -80 : 0, y: showItems ? 220: 0)
                            .shadow(color: Color.white, radius: 5, x: -2, y: -2)
                            .opacity(0.8)
                            
                            Spacer ()
                                .frame(width: 200)
                            
                            
                            NavigationLink(destination: RRMissYou(user: user, friends: friends), label: {
                                HugCircle (color: ColorManager .grey1, friendName: "Missing \nyou")
                            })
                            .offset(x: showItems ? -80 : 0, y: showItems ? 220: 0)
                            .shadow(color: Color.white, radius: 5, x: -2, y: -2)
                            .opacity(0.8)
                            

                    }
                }

                    Spacer ()
                        .frame(height: 30)
                    
                    
                    HStack {
                        
                        ZStack {
                            NavigationLink(destination: RR29(user: user, friends: friends), label: {
                                HugCircle (color: ColorManager .grey1, friendName: "Wishing \nme \nLUCK!")
                            })
                            .offset(x: showItems ? -80 : 0, y: showItems ? 220: 0)
                            .shadow(color: Color.white, radius: 5, x: -2, y: -2)
                            .opacity(0.8)
                            
                        }
                        
                        Spacer()
                            .frame(width: 200)
                        
                        
                        
                        
                        ZStack {
                            
                            
                            NavigationLink(destination: CH7(user: user, friend: user, friends: friends, groups: groups), label: {
                                HugCircle (color: ColorManager .grey1, friendName: "You \ngot a \nSong")
                            })
                            .offset(x: showItems ? -80 : 0, y: showItems ? 220: 0)
                            .shadow(color: Color.white, radius: 5, x: -2, y: -2)
                            .opacity(0.8)
                      
                        }
                    }
                   
                    HStack {
                        VStack {
                            NavigationLink(destination: RR54(user: user, friends: friends), label: {
                                HugCircle (color: ColorManager .grey1, friendName: "Got a \nFist- \nPump")
                            })
                            .offset(x: showItems ? -80 : 0, y: showItems ? 220: 0)
                            .shadow(color: Color.white, radius: 5, x: -2, y: -2)
                            .opacity(0.8)
                        }
                        
                        
                        Spacer()
                            .frame(width: 35)
                        
                        NavigationLink(destination: RR14(user: user, friend: user, friends: friends, groups: groups), label: {
                            HugCircle (color: ColorManager .grey1, friendName: "Got \nCongrats")
                        })
                        .offset(x: showItems ? -80 : 0, y: showItems ? 220: 0)
                        .shadow(color: Color.white, radius: 5, x: -2, y: -2)
                        .opacity(0.8)
                    }
                    
                    
                    VStack {
                        
                        Spacer ()
                            .frame(height: 50)
                        

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
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(color)
                        .foregroundColor(ColorManager .grey2)
                        .frame(width: 80, height: 80)
                        .opacity(0.3)
                        .shadow(color: Color.white, radius: 10, x: 5, y: 5)
                    
//                    Image("iconSphere1")
//                        .resizable()
//                        .foregroundColor(color)
//                    //                            .foregroundColor(ColorManager .purple2)
//                        .frame(width: 100, height: 100)
//                        .shadow(color: Color.white, radius: 6, x: 0, y: 0)
                    
                    Text(friendName)
                        .fontWeight(.bold)
                        .font(.system(size: 15))
                        .italic()
                        .foregroundColor(.black)
                    
                }
            }
        }
    }
    
