//
//  CH10.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 7/11/23.
//


import Foundation
import SwiftUI
import AVKit

struct CH10: View {

    let user: User
    let friends: [User]
    let groups: [Group]
    let atmosphere: Atmosphere

    @State private var showItems: Bool = false
    @State private var offset: CGFloat = 200.0


    var body: some View {
        
        ZStack {
            
            Color.black
               .opacity(0.9)
                .ignoresSafeArea()
            

            Image("CareHeart 2")
                .ignoresSafeArea()
                .scaledToFit()
                .opacity(0.2)


            AdPlayerView(name: "Planet4")
                .ignoresSafeArea()
                .blendMode(.screen)
                .opacity(0.7)
            
            
            ZStack{
                
                
                
                
                VStack {
                    
                    VStack {
                        
                        Text("CareHearts")
                            .font(.system(size: 40))
                            .foregroundColor(Color.white)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                        
                        Text("from Friends")
                            .font(.system(size: 30))
                            .foregroundColor(Color.white)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                        
                       
                        
                        Spacer ()
                            .frame(height: 20)
                        
                        
                        
                        Text("Yep! Your friends care about you")
                            .font(.system(size: 17))
                            .foregroundColor(Color.white)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                        
                    }
                        
            VStack {
                    
                HStack {
                    
                    
                    NavigationLink(destination: CH9(user: user, friends: friends), label: {
                        HugCircle (color: Color.pink, friendName: "Jump up \nand catch your \n 'Kisses'")
                    })
                    .offset(x: showItems ? 85 : 0, y: showItems ? 400: 0)
                    .shadow(color: Color .pink, radius: 10, x: 10, y: 10)
                    .opacity(0.7)
                    
                    NavigationLink(destination: RR13(user: user, friends: friends, groups: groups), label: {
                        HugCircle (color: ColorManager .orange2, friendName: "Look! You got \n 'Hearts'")
                    })
                    .offset(x: showItems ? -100 : 0, y: showItems ? -140: 0)
                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                    
                    .opacity(0.7)
                    
                }
                
                HStack {
                    
                    NavigationLink(destination: VirtualHug(user: user, friends: friends), label: {
                        HugCircle (color: ColorManager.orange5, friendName: "Grab your \n'HUG'")
                    })
                    .offset(x: showItems ? -80 : 0, y: showItems ? 220: 0)
                    .shadow(color: Color.yellow, radius: 10, x: 10, y: 10)
                    //                    .opacity(0.6)
                    .opacity(0.7)
                    
                  
                    
                    
                    NavigationLink(destination: CH7(user: user, friend: user, friends: friends, groups: groups), label: {
                        HugCircle (color: ColorManager .grey1, friendName: "A 'Song' to match \nyour Day!")
                    })
                    .offset(x: showItems ? -120 : 0, y: showItems ? 100: 0)
                    .shadow(color: Color .blue, radius: 10, x: 10, y: 10)
                    .opacity(0.7)
                }
            }
                    
                    HStack {
                        
                        NavigationLink(destination: RR14(user: user, friend: user, friends: friends, groups: groups), label: {
                            HugCircle (color: ColorManager .purple3, friendName: "Congrats \nNice Job!!!")
                        })
                        .offset(x: showItems ? -100 : 0, y: showItems ? -140: 0)
                        .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                        
                        .opacity(0.7)
                        
                        
                        
                        NavigationLink(destination: RR22(user: user, friends: friends), label: {
                            HugCircle (color: ColorManager .purple3, friendName: "Your \nwell-being")
                        })
                        .offset(x: showItems ? -100 : 0, y: showItems ? -140: 0)
                        .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                        
                        .opacity(0.7)
                        
                    }
                    
                    
                    
                    
                    
                        VStack {
//                            
//                                                        Spacer ()
//                                                            .frame(height: 75)
                            
                            
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
                                    
                                    
                                    NavigationLink(destination: RR15(user: user, friends: friends, groups: groups), label: {
                                      
                                        Text("Customized \nCareHearts \n(in beta)")
                                            .fontWeight(.thin)
                                            .foregroundColor(Color.black)
                                            .font(.system(size: 20))
                                            .multilineTextAlignment(.center)
                                            .rotationEffect(.degrees(-7))
                                            .opacity(0.85)
                                        
                                        
                                        
                                        
                                        
                                        
                                    }
                                    )}
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
                        .frame(width: 175, height: 125)
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


