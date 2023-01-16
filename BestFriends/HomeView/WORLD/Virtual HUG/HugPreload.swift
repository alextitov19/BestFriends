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
                    HugCircle (color: ColorManager.purple1, friendName: "send HUGS")
                })
                .offset(x: showItems ? 120 : 0, y: showItems ? -270: 0)
                .shadow(color: ColorManager .purple2, radius: 10, x: 10, y: 10)
                .opacity(0.8)
                
                
                
                NavigationLink(destination: HugPushNotification2(user: user, friends: friends), label: {
                    HugCircle (color: ColorManager .grey1, friendName: "need a \n HUG")
                })
                .offset(x: showItems ? 30 : 0, y: showItems ? -170: 0)
                .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                .opacity(0.8)
                
               
                
                NavigationLink(destination: SendKisses(user: user, friends: friends), label: {
                    HugCircle (color: ColorManager .red, friendName: "send Kisses")
                })
                .offset(x: showItems ? -30 : 0, y: showItems ? 170: 0)
                .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                .opacity(0.25)
                
                
                
                NavigationLink(destination: EmptyView(), label: {
                    HugCircle (color: ColorManager .grey1, friendName: "")
                })
                .offset(x: showItems ? 0 : 0, y: showItems ? 0: 0)
                .shadow(color: ColorManager .grey1, radius: 10, x: 10, y: 10)
                
                
                
                    
               
                    
                    
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(ColorManager .purple1)
                        .frame(width: 250, height: 200)
                    //                    .blur(radius: 2)
                        .shadow(color: ColorManager .purple3, radius: 65, x: 30, y: 50) .opacity(0.99)
                        .opacity(0.70)
                    
                    
                    VStack {
                        
                        Spacer ()
                            .frame(height: 10)
                        
                        Text("Do you")
                            .font(.system(size: 25))
                        
                            .foregroundColor(ColorManager .grey2)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                        //                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                        
                        Text("or a Friend")
                            .font(.system(size: 25))
                        
                            .foregroundColor(ColorManager .grey2)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                        
                        Text("need a")
                            .font(.system(size: 25))
                        
                            .foregroundColor(ColorManager .grey2)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                        //                                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                        
                        Text("HUG?")
                            .font(.system(size: 45))
                        
                            .foregroundColor(ColorManager .grey3)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
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


