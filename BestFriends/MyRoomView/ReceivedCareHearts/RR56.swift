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
            Color.black
                .opacity(0.9)
                .ignoresSafeArea()

            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
                .opacity(0.9)
            
            AdPlayerView(name: "girlFriends1")
                .ignoresSafeArea()
                .blendMode(.screen)
                .opacity(0.5)
            
            
            ZStack{
                
                VStack {
     
                    Spacer()
                        .frame(height: 70)
                    
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
                                HugCircle (color: Color.cyan, friendName: "coming \nsoon")
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
                                HugCircle (color: Color.cyan, friendName: "Holding \n your \nHugs")
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
                                HugCircle (color: Color.green, friendName: "You \ngot a \nSong")
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
                            HugCircle (color: ColorManager .purple5, friendName: "Got \nCongrats")
                        })
                        .offset(x: showItems ? -120 : 0, y: showItems ? 100: 0)
                        .shadow(color: Color.purple, radius: 10, x: -4, y: 4)
                        .opacity(0.99)
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
    
