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
                    
                    ZStack {
                        
                  
                        
                        Image(systemName: "cube.fill")
                            .resizable()
                            .foregroundColor(Color.purple)
                            .frame(width: 280, height: 170)
                            .shadow(color: ColorManager .purple3, radius: 65, x: 30, y: 50)
                            .opacity(0.5)
                        

                        VStack {
                            
                            Text("Sending CareHearts")
                                .font(.system(size: 30))
                                .foregroundColor(Color.white)
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                          
                            Text("(back n' forth)")
                                .font(.system(size: 15))
                                .italic()
                                .foregroundColor(Color.white)
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                     
                            
                            
                            Text("Creating Smiles")
                                .font(.system(size: 23))
                                .foregroundColor(Color.white)
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                        }
                    }
                    
HStack {
                        
    VStack {
      
        HStack {
                    
            Spacer ()
                .frame(width: 25)
                        
            NavigationLink(destination: SendKisses(user: user, friends: friends), label: {
                HugCircle (color: Color.cyan, friendName: "Blowing \nKisses")
            })
            .offset(x: showItems ? 85 : 0, y: showItems ? 400: 0)
            .shadow(color: Color .blue, radius: 2, x: 2, y: 2)
            .opacity(0.9)
            
               

            NavigationLink(destination: RR11(user: user, friend: user, friends: friends, groups: groups), label: {
                HugCircle (color: Color.cyan, friendName: "Care \nHearts")
            })
            .offset(x: showItems ? -100 : 0, y: showItems ? -140: 0)
            .shadow(color: Color .blue, radius: 2, x: 2, y: 2)
            .opacity(0.9)
                          
//            Spacer ()
//                .frame(width: 15)

            }
                       
//                      **********************************
                            
        HStack {
            Spacer ()
                .frame(width: 25)
                
            NavigationLink(destination: HugPushNotification(user: user, friends: friends), label: {
                HugCircle (color: Color.cyan, friendName: "\nHugs")
            })
            .offset(x: showItems ? -80 : 0, y: showItems ? 220: 0)
            .shadow(color: Color.blue, radius: 2, x: 2, y: 2)
            .opacity(0.9)

            NavigationLink(destination: CH4(user: user, friend: user, friends: friends, groups: groups), label: {
                HugCircle (color: Color.cyan, friendName: "Perfect \nSong")
            })
            .offset(x: showItems ? -120 : 0, y: showItems ? 100: 0)
            .shadow(color: Color.blue, radius: 2, x: 2, y: 2)
            .opacity(0.9)
                          
                            
            }
        }
                        
                        Spacer ()
                            .frame(width: 20)
    }
                    
                    
//                    Spacer ()
//                        .frame(height: 20)
                    
                HStack {
                        
                    ZStack {
                            NavigationLink(destination: RR20(user: user, friend: user, friends: friends, groups: groups), label: {
                                HugCircle (color: Color.gray, friendName: "Friendship \n Strengths")
                            })
                            .offset(x: showItems ? 85 : 0, y: showItems ? 400: 0)
                            .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                            .opacity(0.9)

                        }
                        

                    }
                    
                    Spacer ()
                        .frame(height: 20)
                    
                    
                    HStack {
                 
                        VStack {
                            ZStack {
                                NavigationLink(destination: RR27(user: user, friend: user, friends: friends, groups: groups), label: {
                                    HugCircle (color: ColorManager .purple5, friendName: "YOU CAN \nDO IT!")
                                })
                                .offset(x: showItems ? -120 : 0, y: showItems ? 100: 0)
                                .shadow(color: ColorManager .purple3, radius: 4, x: 4, y: 4)
                                .opacity(0.65)
                                
 
                            }
                        }
                        
                        NavigationLink(destination: RR12(user: user, friend: user, friends: friends, groups: groups), label: {
                            HugCircle (color: ColorManager .purple5, friendName: "Say \nCONGRATS")
                        })
                        .offset(x: showItems ? -120 : 0, y: showItems ? 100: 0)
                        .shadow(color: ColorManager .purple2, radius: 4, x: 4, y: 4)
                        .opacity(0.65)
                        
                    
                    
                    NavigationLink(destination: SendHomie(user: user, friends: friends), label: {
                        HugCircle (color: ColorManager .purple5, friendName: "Fist-pump")
                    })
                        .offset(x: showItems ? 30 : 0, y: showItems ? -170: 0)
                        .shadow(color: ColorManager .purple2, radius: 2, x: 2, y: 2)
                        .opacity(0.9)
            }
                    
                    VStack {
 
                            Spacer ()
                                .frame(height: 7)
                            
                            
                            HStack {
                                
                                ZStack {

                                    ZStack {
                                            NavigationLink(destination: RR33(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups), label: {
                                                HugCircle (color: ColorManager .orange3, friendName: "Hurt \nFeelings")
                                            })
                                            .offset(x: showItems ? 85 : 0, y: showItems ? 400: 0)
                                            .shadow(color: Color.orange, radius: 10, x: 10, y: 10)
                                            .opacity(0.9)

                                        }


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
                                    .frame(width: 1)
                                
                                ZStack {
                                    
                                    Image(systemName: "cube.fill")
                                        .resizable()
                                        .foregroundColor(ColorManager .grey3)
                                        .frame(width: 100, height: 80)
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
                        .frame(width: 100, height: 80)
                        .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                    
                    Text(friendName)
                        .fontWeight(.medium)
                        .font(.system(size: 15))
                        .italic()
                        .foregroundColor(.white)
                    
                }
            }
        }
    }
    
