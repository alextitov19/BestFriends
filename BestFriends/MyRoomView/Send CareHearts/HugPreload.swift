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
            
            
            
            Color.black
                .opacity(0.9)
                .ignoresSafeArea()
            
            Image("CHBk4")
                .ignoresSafeArea()
                .scaledToFit()
                .opacity(0.9)
            
            
            
//            AdPlayerView(name: "background_9")
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
                .opacity(0.5)
            
            
            ZStack{
                
                VStack {
                    
                    ZStack {
                        
                  
                        
                        Image(systemName: "circle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 225, height: 225)
                            .foregroundColor(Color.cyan)
//                            .glow(color: ColorManager.purple3, radius: 30)
                            .blinking(duration: 2.0)
                            .opacity(0.3)
                        
                        
                        
                        Spacer ()
                            .frame(height: 20)
                        
                        Text("'Friendship \nSupport'")
                            .font(.system(size: 40))
                            .foregroundColor(Color.white)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .blinking(duration: 2.0)
                        
              
                    }
                    
                    HStack {
                        
                        VStack {
                            
                            HStack {
                                
                                NavigationLink(destination: HugPushNotification(user: user, friends: friends), label: {
                                    HugCircle (color: Color.cyan, friendName: "\nHugs")
                                })
                                .offset(x: showItems ? -80 : 0, y: showItems ? 220: 0)
                                .shadow(color: Color.blue, radius: 2, x: 2, y: 2)
                                .opacity(0.9)
                                
                                
                        ZStack {
                                    NavigationLink(destination: RR24(user: user, friend: user, friends: friends, groups: groups), label: {
                                        HugCircle (color: Color.cyan, friendName: "\nWell-being")
                                    })
                                    .offset(x: showItems ? -120 : 0, y: showItems ? 100: 0)
                                    .shadow(color: Color.blue, radius: 2, x: 2, y: 2)
                                    .opacity(0.9)
                                    
//                            Spacer ()
                                .frame(height: 20)
//
//                                    Text("bad day \nsupport")
//                                        .fontWeight(.thin)
//                                        .foregroundColor(Color.white)
//                                        .font(.system(size: 20))
//                                        .multilineTextAlignment(.center)
//                                        .rotationEffect(.degrees(0))
//                                        .opacity(1.0)
//                                        .blinking(duration: 2.0)
                                }
//                            }
                                
                                
                                
                                NavigationLink(destination: CH4(user: user, friend: user, friends: friends, groups: groups), label: {
                                    HugCircle (color: Color.cyan, friendName: "Cheer-up \nSong")
                                })
                                .offset(x: showItems ? -120 : 0, y: showItems ? 100: 0)
                                .shadow(color: Color.blue, radius: 2, x: 2, y: 2)
                                .opacity(0.9)
                            }
                            
                            
                            
                            
                            //                      **********************************
                            
                            HStack {
                                NavigationLink(destination: SendKisses(user: user, friends: friends), label: {
                                    HugCircle (color: ColorManager .pmbc_blue, friendName: "Blowing \nKisses")
                                })
                                .offset(x: showItems ? 85 : 0, y: showItems ? 400: 0)
                                .shadow(color: Color .blue, radius: 2, x: 2, y: 2)
                                .opacity(0.9)
                                
                                
                                Spacer ()
                                    .frame(width: 15)
                                
                                VStack {

                                }
                                
                                NavigationLink(destination: RR11(user: user, friend: user, friends: friends, groups: groups), label: {
                                    HugCircle (color: ColorManager .pmbc_blue, friendName: "Hearts")
                                })
                                .offset(x: showItems ? -100 : 0, y: showItems ? -140: 0)
                                .shadow(color: Color .blue, radius: 2, x: 2, y: 2)
                                .opacity(0.9)
                                
                            }
                        }
                        
                        Spacer ()
                            .frame(width: 20)
                        
                    }
                    
                    
                    Spacer ()
                        .frame(height: 20)
                    
                HStack {
                        
                    ZStack {
                            NavigationLink(destination: RR20(user: user, friend: user, friends: friends, groups: groups), label: {
                                HugCircle (color: ColorManager .purple4, friendName: "Friendship \n Strengths")
                            })
                            .offset(x: showItems ? 85 : 0, y: showItems ? 400: 0)
                            .shadow(color: Color.blue, radius: 10, x: 10, y: 10)
                            .opacity(0.9)
//
//                            Text("Affirmations")
//                                .fontWeight(.thin)
//                                .foregroundColor(Color.white)
//                                .font(.system(size: 20))
//                                .multilineTextAlignment(.center)
//                                .rotationEffect(.degrees(0))
//                                .opacity(1.0)
//                                .blinking(duration: 2.0)
                        }
                        
                        
//                        NavigationLink(destination: PhotoPopFGPreload(user: user, friend: user, friends: friends, groups: groups), label: {
//                            HugCircle (color: ColorManager .grey1, friendName: "Let's \nMeetup")
//                        })
//                        .offset(x: showItems ? -120 : 0, y: showItems ? 100: 0)
//                        .shadow(color: Color .blue, radius: 10, x: 10, y: 10)
//                        .opacity(0.5)
                        
                        //                     ****************
                        
                    }
                    
                    Spacer ()
                        .frame(height: 20)
                    
                    
                    HStack {
                        
                        VStack {
                            
                            NavigationLink(destination: SendHomie(user: user, friends: friends), label: {
                                HugCircle (color: ColorManager .purple5, friendName: "Fist-pump")
                            })
                            .offset(x: showItems ? 30 : 0, y: showItems ? -170: 0)
                            .shadow(color: ColorManager .purple3, radius: 4, x: 4, y: 4)
                            //                    .opacity(0.65)
                            .opacity(0.65)
                            
                            
                        }
                        
                        
                        VStack {
                            ZStack {
                                NavigationLink(destination: RR27(user: user, friend: user, friends: friends, groups: groups), label: {
                                    HugCircle (color: ColorManager .purple5, friendName: "YOU CAN \nDO IT!")
                                })
                                .offset(x: showItems ? -120 : 0, y: showItems ? 100: 0)
                                .shadow(color: ColorManager .purple3, radius: 4, x: 4, y: 4)
                                .opacity(0.65)
                                
                                
                                
//                                Text("Motivation")
//                                    .fontWeight(.thin)
//                                    .foregroundColor(Color.white)
//                                    .font(.system(size: 20))
//                                    .multilineTextAlignment(.center)
//                                    .rotationEffect(.degrees(0))
//                                    .opacity(1.0)
//                                    .blinking(duration: 2.0)
                            }
                        }
                        
                        NavigationLink(destination: RR12(user: user, friend: user, friends: friends, groups: groups), label: {
                            HugCircle (color: ColorManager .purple5, friendName: "Congrats \nNice job!!!")
                        })
                        .offset(x: showItems ? -120 : 0, y: showItems ? 100: 0)
                        .shadow(color: ColorManager .purple3, radius: 4, x: 4, y: 4)
                        .opacity(0.65)
                        
                    }
                    
                    VStack {
 
                            Spacer ()
                                .frame(height: 50)
                            
                            
                            HStack {
                                
                                ZStack {

                                    Image(systemName: "")
                                        .resizable()
                                        .foregroundColor(Color.cyan)
                                        .frame(width: 150, height: 110)
                                        .rotationEffect(.degrees(7))
                                        .shadow(color: Color .blue, radius: 10, x: 10, y: 10)
                                        .opacity(0.5)
//                                        .blinking(duration: 2.0)


                                    NavigationLink(destination: RR31(user: user, friends: friends), label: {

                                        Text("")
                                            .fontWeight(.thin)
                                            .foregroundColor(Color.white)
                                            .font(.system(size: 20))
                                            .multilineTextAlignment(.center)
                                            .rotationEffect(.degrees(7))
                                            .opacity(1.0)
//                                            .blinking(duration: 2.0)


                                    }
                                    )}
                                
                                
                                
                                Spacer ()
                                    .frame(width: 20)
                                
                                ZStack {
                                    
                                    Image(systemName: "cube.fill")
                                        .resizable()
                                        .foregroundColor(ColorManager .grey3)
                                        .frame(width: 150, height: 110)
                                        .rotationEffect(.degrees(-20))
                                        .shadow(color: Color .blue, radius: 10, x: 10, y: 10)
                                        .opacity(0.5)
                                        .blinking(duration: 2.0)
                                    
                                    
                                    NavigationLink(destination: CH6(user: user, friend: user, friends: friends, groups: groups), label: {
                                        
                                        Text("Custom \n(in beta)")
                                            .fontWeight(.thin)
                                            .foregroundColor(Color.white)
                                            .font(.system(size: 20))
                                            .multilineTextAlignment(.center)
                                            .rotationEffect(.degrees(-7))
                                            .opacity(1.0)
                                            .blinking(duration: 2.0)
                                        
                                        
                                    }
                                    )}
                            }
                            
                            
                            VStack {
                                
//                                Spacer ()
//                                    .frame(height: 20)
                                
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
                    
                    Image(systemName: "cube")
                        .resizable()
                        .foregroundColor(color)
                    //                            .foregroundColor(ColorManager .purple2)
                        .frame(width: 120, height: 100)
                        .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                    
                    Text(friendName)
                        .fontWeight(.medium)
                        .font(.system(size: 19))
                        .italic()
                        .foregroundColor(.white)
                    
                }
            }
        }
    }
    
    

