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
            Color.orange
                .opacity(0.1)
                .ignoresSafeArea()
  
            AdPlayerView(name: "background_7")
                .ignoresSafeArea()
                .blendMode(.screen)
                .opacity(0.5)
            
            
//            AdPlayerView(name: "easyHearts2")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//                .opacity(0.15)
            
            
            ZStack{
                
                VStack {
     
                    Spacer()
                        .frame(height: 40)
                    
                        HStack {
                            VStack {
                                NavigationLink(destination: CH9(user: user, friends: friends), label: {
                                    HugCircle (color: Color.cyan, friendName: "Catching \nKisses")
                                })
                                .offset(x: showItems ? -80 : 0, y: showItems ? 220: 0)
                                .shadow(color: Color.blue, radius: 5, x: -2, y: -2)
                                .opacity(0.99)
                            }
                            
                            
                            Spacer()
                                .frame(width: 35)
                            
                            NavigationLink(destination: EmptyView(), label: {
                                HugCircle (color: Color.cyan, friendName: "Missing \nyou")
                            })
                            .offset(x: showItems ? -100 : 0, y: showItems ? -140: 0)
                            .shadow(color: Color .blue, radius: 5, x: 2, y: -2)
                            .opacity(0.99)
                        }
                        
                        Spacer()
                            .frame(height: 20)
                        
                    VStack {
                           
                        HStack {
                            NavigationLink(destination: VirtualHug(user: user, friends: friends), label: {
                                HugCircle (color: Color.cyan, friendName: "Grabbing \nHugs")
                            })
                            .offset(x: showItems ? -80 : 0, y: showItems ? 220: 0)
                            .shadow(color: Color.blue, radius: 5, x: -2, y: -2)
                            .opacity(0.99)
                            
                            Spacer ()
                                .frame(width: 200)
                            
                            
                            NavigationLink(destination: RR13(user: user, friends: friends, groups: groups), label: {
                                HugCircle (color: Color.pink, friendName: "Nice! \nyou got \nHearts")
                            })
                            .offset(x: showItems ? -100 : 0, y: showItems ? -140: 0)
                            .shadow(color: Color .pink, radius: 5, x: 2, y: -2)
                            .opacity(0.99)
                            

                    }
                }

                    Spacer ()
                        .frame(height: 30)
                    
                    
                    HStack {
                        
                        ZStack {
                            NavigationLink(destination: RR29(user: user, friends: friends), label: {
                                HugCircle (color: Color.purple, friendName: "Wishing \nme \nLUCK!")
                            })
                            .offset(x: showItems ? -120 : 0, y: showItems ? 100: 0)
                            .shadow(color: Color.purple, radius: 10, x: -4, y: 4)
                            .opacity(0.99)
                            
                        }
                        
                        Spacer()
                            .frame(width: 200)
                        
                        
                        
                        
                        ZStack {
                            
                            
                            NavigationLink(destination: CH7(user: user, friend: user, friends: friends, groups: groups), label: {
                                HugCircle (color: Color.green, friendName: "Song")
                            })
                            .offset(x: showItems ? -120 : 0, y: showItems ? 100: 0)
                            .shadow(color: Color.green, radius: 10, x: -4, y: 4)
                            .opacity(0.99)
                      
                        }
                    }
                   
                    HStack {
                        VStack {
                            NavigationLink(destination: RR54(user: user, friends: friends), label: {
                                HugCircle (color: Color.purple, friendName: "Got a \nFist- \nPump")
                            })
                            .offset(x: showItems ? 30 : 0, y: showItems ? -170: 0)
                            .shadow(color: Color.purple, radius: 10, x: -4, y: 4)
                            .opacity(0.99)
                        }
                        
                        
                        Spacer()
                            .frame(width: 35)
                        
                        NavigationLink(destination: RR14(user: user, friend: user, friends: friends, groups: groups), label: {
                            HugCircle (color: ColorManager .purple5, friendName: "Purple \nAtmo- \nsphere")
                        })
                        .offset(x: showItems ? -120 : 0, y: showItems ? 100: 0)
                        .shadow(color: Color.purple, radius: 10, x: -4, y: 4)
                        .opacity(0.99)
                    }
                    
                    
                    VStack {
                        
                        Spacer ()
                            .frame(height: 50)
                        
//
//                        HStack {
//
//                            ZStack {
//
//                                NavigationLink(destination: CH7(user: user, friend: user, friends: friends, groups: groups), label: {
//                                    HugCircle (color: Color.cyan, friendName: "Song \nfor you")
//                                })
//                                .offset(x: showItems ? -100 : 0, y: showItems ? -140: 0)
//                                .shadow(color: Color .blue, radius: 5, x: 2, y: -2)
//                                .opacity(0.99)
                             
//                                Image("")
//                                    .aspectRatio(contentMode: .fit)
//                            }
//                            Spacer()
//                                .frame(width: 180)
//
//                            ZStack {
//                                NavigationLink(destination: RR26(user: user, friend: user, friends: friends, groups: groups), label: {
//                                    HugCircle (color: ColorManager .grey1, friendName: "Friends")
//                                })
//                                .offset(x: showItems ? 85 : 0, y: showItems ? 400: 0)
//                                .shadow(color: Color.cyan, radius: 4, x: 2, y: 3)
//                                .opacity(0.99)
//
//
//                            }
//                        }
                    
                        VStack {
                            
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
                                            Image("CoolGuy")
                                            //                                            .aspectRatio(contentMode: .fit)
                                                .frame(width: 120, height: 120)
                                                .blinking(duration: 7.0)
                                            
                                            Text("You got CareHeart")
                                                .fontWeight(.medium)
                                                .frame(width: 200, height: 40)
                                                .foregroundColor(Color.white)
                                                .font(.system(size: 20))
                                                .background(Color.cyan)
                                                .cornerRadius(7)
                                                .rotationEffect(.degrees(-38))
                                                .opacity(0.8)
                                            //                                            .glow(color: ColorManager .grey4, radius: 3)
                                                .shadow(color: ColorManager .purple3, radius: 2, x: 0, y: 3)
                                                .blinking(duration: 7.0)
                                            
                                            //**********************************************************
                                            Spacer()
                                                .frame(height: 5)
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
                    
                    Image("iconSphere1")
                        .resizable()
                        .foregroundColor(color)
                    //                            .foregroundColor(ColorManager .purple2)
                        .frame(width: 100, height: 100)
                        .shadow(color: Color.white, radius: 6, x: 0, y: 0)
                    
                    Text(friendName)
                        .fontWeight(.bold)
                        .font(.system(size: 15))
                        .italic()
                        .foregroundColor(.black)
                    
                }
            }
        }
    }
    
