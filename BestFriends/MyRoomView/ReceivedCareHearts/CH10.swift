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
            
        

            Image("CareHeart 2")
                .ignoresSafeArea()
                .scaledToFit()


            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            
            ZStack{
                
                
                
                
                VStack {
                    
                    VStack {
                        
                        Text("Friends Sending")
                            .font(.system(size: 40))
                            .foregroundColor(Color.white)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                        
                        Text("you CareHearts")
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
                    
                    NavigationLink(destination: VirtualHug(user: user, friends: friends), label: {
                        HugCircle (color: ColorManager.orange5, friendName: "Grab your \n'HUG'")
                    })
                    .offset(x: showItems ? -80 : 0, y: showItems ? 220: 0)
                    .shadow(color: Color.yellow, radius: 10, x: 10, y: 10)
                    //                    .opacity(0.6)
                    .opacity(0.7)
                    
                }
                
                HStack {
                    NavigationLink(destination: CH6(user: user, friends: friends), label: {
                        HugCircle (color: ColorManager .orange2, friendName: "Look! You got \n 'Hearts'")
                    })
                    .offset(x: showItems ? -100 : 0, y: showItems ? -140: 0)
                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                    
                    .opacity(0.7)
                    
                    
                    NavigationLink(destination: CH7(user: user, friend: user, friends: friends, groups: groups), label: {
                        HugCircle (color: ColorManager .grey1, friendName: "A 'Song' to match \nyour Vibe!")
                    })
                    .offset(x: showItems ? -120 : 0, y: showItems ? 100: 0)
                    .shadow(color: Color .blue, radius: 10, x: 10, y: 10)
                    .opacity(0.7)
                }
            }
                    
                  
                    
                    NavigationLink(destination: CH6(user: user, friends: friends), label: {
                        HugCircle (color: ColorManager .purple3, friendName: "Custom \nCareHeart")
                    })
                    .offset(x: showItems ? -100 : 0, y: showItems ? -140: 0)
                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                    
                    .opacity(0.7)
                    
                    
                    
                        VStack {
                            
                                                        Spacer ()
                                                            .frame(height: 75)
                            
                            
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




//  ***************************************
      

//                    NavigationLink(destination: SendHomie(user: user, friends: friends), label: {
//                        HugCircle (color: ColorManager .grey3, friendName: "send a \nfist pump")
//                    })
//                    .offset(x: showItems ? 30 : 0, y: showItems ? -170: 0)
//                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
////                    .opacity(0.65)
//                    .opacity(0.3)








//                    NavigationLink(destination: EmptyView(), label: {
//                        HugCircle (color: ColorManager.grey3, friendName: "CareHeart \nCoupons")
//                    })
//                    .offset(x: showItems ? -80 : 0, y: showItems ? 220: 0)
//                    .shadow(color: ColorManager .orange4, radius: 10, x: 10, y: 10)
//    //                    .opacity(0.6)
//                    .opacity(0.65)
//

//




//
//                        Image(systemName: "heart.fill")
//                            .resizable()
//                            .foregroundColor(ColorManager .purple1)
//                            .frame(width: 250, height: 200)
//                        //                    .blur(radius: 2)
//                            .shadow(color: ColorManager .purple3, radius: 65, x: 30, y: 50) .opacity(0.99)
//                            .opacity(0.70)



      //                    NavigationLink(destination: HurtFeelings(user: user, friends: friends, groups: groups, atmosphere: atmosphere), label: {
      //                        HugCircle (color: ColorManager .grey1, friendName: "MORE \nCareHearts")
      //                    })
      //                    .offset(x: showItems ? 50 : 0, y: showItems ? 50: 0)
      //                    .shadow(color: ColorManager .grey1, radius: 10, x: 10, y: 10)
      //                    .opacity(0.65)
      
//                    NavigationLink(destination: PhotoPopView(user: user, friends: friends), label: {
//                        HugCircle (color: ColorManager .purple4, friendName: "send a \nPhotoPOP")
//                    })
//                    .offset(x: showItems ? -60 : 0, y: showItems ? 350: 0)
//                    .shadow(color: ColorManager .purple5, radius: 10, x: 10, y: 10)
//    //                .opacity(0.85)
//                    .opacity(0.65)



//
//                    NavigationLink(destination: InfoWhyLoveBF(user: user, friends: friends), label: {
//                        HugCircle (color: ColorManager.purple1, friendName: "you looked \nnice \ntoday")
//                    })
//                    .offset(x: showItems ? 120 : 0, y: showItems ? -270: 0)
//                    .shadow(color: ColorManager .purple2, radius: 10, x: 10, y: 10)
////                    .opacity(0.6)
//                    .opacity(0.65)
//
//

//
//
//
//                    NavigationLink(destination: SendHomie(user: user, friends: friends), label: {
//                        HugCircle (color: ColorManager .grey3, friendName: "send a \nfist pump")
//                    })
//                    .offset(x: showItems ? 30 : 0, y: showItems ? -170: 0)
//                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
////                    .opacity(0.65)
//                    .opacity(0.65)

//
//                NavigationLink(destination: HurtFeelings(user: user, friends: friends, groups: groups, atmosphere: atmosphere), label: {
//                    HugCircle (color: Color .green, friendName: "MORE \nCareHearts")
//                })
//                .offset(x: showItems ? 0 : 0, y: showItems ? -100: 0)
//                .shadow(color: ColorManager .grey1, radius: 10, x: 10, y: 10)
//                .opacity(0.8)

//
//                NavigationLink(destination: HugPushNotification(user: user, friends: friends), label: {
//                    HugCircle (color: ColorManager.purple1, friendName: "send a \nhug")
//                })
//                .offset(x: showItems ? 80 : 0, y: showItems ? -200: 0)
//                .shadow(color: ColorManager .orange4, radius: 10, x: 10, y: 10)
////                    .opacity(0.6)
//                .opacity(0.65)



//
//                    NavigationLink(destination: EmptyView(), label: {
//                        HugCircle (color: ColorManager .purple5, friendName: "MORE \nCareHearts")
//                    })
//                    .offset(x: showItems ? 50 : 0, y: showItems ? 50: 0)
//                    .shadow(color: ColorManager .grey1, radius: 10, x: 10, y: 10)
//                    .opacity(0.65)
//

