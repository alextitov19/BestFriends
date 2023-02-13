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
            //
            //            ColorManager.purple1
            //                .ignoresSafeArea()
            //                .onAppear()
            
            
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
                .opacity(0.5)
            
            
            
            AdPlayerView(name: "AloneBeach")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            
            ZStack{
                
                
                    
                    NavigationLink(destination: HugPushNotification(user: user, friends: friends), label: {
                        HugCircle (color: ColorManager.purple1, friendName: "send a \nHug")
                    })
                    .offset(x: showItems ? 120 : 0, y: showItems ? -270: 0)
                    .shadow(color: ColorManager .purple2, radius: 10, x: 10, y: 10)
                    .opacity(0.6)
                    
                 
                    
                    NavigationLink(destination: SaySomethingNice5(user: user, friends: friends), label: {
                        HugCircle (color: ColorManager .orange2, friendName: "missing \nyou")
                    })
                    .offset(x: showItems ? -130 : 0, y: showItems ? 170: 0)
                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                    .opacity(0.65)
                    
                    
                    
                    NavigationLink(destination: SendHomie(user: user, friends: friends), label: {
                        HugCircle (color: ColorManager .grey3, friendName: "send a \nfist pump")
                    })
                    .offset(x: showItems ? 30 : 0, y: showItems ? -170: 0)
                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                    .opacity(0.65)
                    
                    
                    //
                    //                NavigationLink(destination: HugPushNotification3(user: user, friends: friends), label: {
                    //                    HugCircle (color: ColorManager .grey1, friendName: "I need a \n Hug")
                    //                })
                    ////                NavigationLink(destination: SendHomie(user: user, friends: friends), label: {
                    ////                    HugCircle (color: ColorManager .grey4, friendName: "send a \nHomie")
                    ////                })
                    //                .offset(x: showItems ? -75 : 0, y: showItems ? -210: 0)
                    //                .shadow(color: ColorManager .purple3, radius: 10, x: 10, y: 10)
                    //                .opacity(0.6)
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    NavigationLink(destination: EmptyView(), label: {
                        HugCircle (color: ColorManager .grey1, friendName: "hugs")
                    })
                    .offset(x: showItems ? 0 : 0, y: showItems ? 0: 0)
                    .shadow(color: ColorManager .grey1, radius: 10, x: 10, y: 10)
                    .opacity(0.85)
                    
                    VStack {
                        
                        
                        
                        NavigationLink(destination: SendKisses(user: user, friends: friends), label: {
                            HugCircle (color: ColorManager .red, friendName: "kisses")
                        })
                        .offset(x: showItems ? 100 : 0, y: showItems ? 290: 0)
                        .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                        .opacity(0.3)
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        Image(systemName: "circle.fill")
                            .resizable()
                            .foregroundColor(ColorManager .purple1)
                            .frame(width: 250, height: 200)
                        //                    .blur(radius: 2)
                            .shadow(color: ColorManager .purple3, radius: 65, x: 30, y: 50) .opacity(0.99)
                            .opacity(0.70)
                        
                        
                        VStack {
                            
                            Spacer ()
                                .frame(height: 120)
                            
                            //                        Text("Do you")
                            //                            .font(.system(size: 25))
                            //
                            //                            .foregroundColor(ColorManager .grey2)
                            //                            .fontWeight(.thin)
                            //                            .multilineTextAlignment(.center)
                            //                        //                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                            //
                            //                        Text("or a Friend")
                            //                            .font(.system(size: 25))
                            //
                            //                            .foregroundColor(ColorManager .grey2)
                            //                            .fontWeight(.thin)
                            //                            .multilineTextAlignment(.center)
                            //
                            //                        Text("need a")
                            //                            .font(.system(size: 25))
                            //
                            //                            .foregroundColor(ColorManager .grey2)
                            //                            .fontWeight(.thin)
                            //                            .multilineTextAlignment(.center)
                            //                                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                            
                            //                        Text("Hugs")
                            //                            .font(.system(size: 45))
                            //
                            //                            .foregroundColor(ColorManager .grey3)
                            //                            .fontWeight(.thin)
                            //                            .multilineTextAlignment(.center)
                            //
                            //                        Text("and")
                            //                            .font(.system(size: 20))
                            //                            .italic()
                            //                            .foregroundColor(ColorManager .grey2)
                            //                            .fontWeight(.thin)
                            //                            .multilineTextAlignment(.center)
                            //
                            //                        Text("Kisses")
                            //                            .font(.system(size: 45))
                            //
                            //                            .foregroundColor(ColorManager .grey3)
                            //                            .fontWeight(.thin)
                            //                            .multilineTextAlignment(.center)
                            //                                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                            
                            
                            
                            
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
                        .frame(width: 130, height: 100)
                        .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                    
                    Text(friendName)
                        .fontWeight(.light)
                        .italic()
                        .foregroundColor(.black)
                    
                }
            }
        }
        
        
    }

