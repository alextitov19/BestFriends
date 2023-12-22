//
//  RR59.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 10/29/23.
//

//import SwiftUI
//
//struct RR59: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct RR59_Previews: PreviewProvider {
//    static var previews: some View {
//        RR59()
//    }
//}


import Foundation
import SwiftUI
import AVKit

struct RR59: View {
    
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
  
            AdPlayerView(name: "background_7")
                .ignoresSafeArea()
                .blendMode(.screen)
                .opacity(0.5)
            
            AdPlayerView(name: "offPlanet1")
                .ignoresSafeArea()
                .blendMode(.screen)
                .opacity(0.9)
            ZStack{
                
                VStack {
     
                    Spacer()
                        .frame(height: 7)
//  *************************************************
       
                    HStack {
                        
                        Spacer()
                            .frame(width: 170)
                        
                        VStack {
                            
                            Text("Off Planet")
                                .font(.system(size: 35))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .foregroundColor(ColorManager .grey1)
                                .shadow(color: Color.white, radius: 6, x: 3, y: 5)
                                .opacity(0.25)
    
                            Text("when friends aren't around")
                                .font(.system(size: 17))
                                .fontWeight(.regular)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.white)
                                .shadow(color: Color.white, radius: 3, x: 3, y: 5)
                                .opacity(0.25)
                          
                        }
                        
//                        Spacer()
//                            .frame(width: 50)
                        
//                            NavigationLink(
//                                destination: FH2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
//                                label: {
//                                    Image(systemName: "info.circle")
//                                        .resizable()
//                                        .scaledToFit()
//                                        .frame(width: 32, height: 32)
//                                        .foregroundColor(ColorManager .grey1)
//    //                                        .glow(color: Color.purple, radius: 2)
//                                        .opacity(0.9)
//                                })
                       }
                    
                    
                    Spacer()
                        .frame(height: 90)
                
//    *******************************************
           
                    HStack {
                        VStack {
                            NavigationLink(destination: InfoView(user: user, friends: friends), label: {
                                HugCircle (color: ColorManager .grey1, friendName: "My \nDreams")
                            })
                            .offset(x: showItems ? -80 : 0, y: showItems ? 220: 0)
                            .shadow(color: Color.white, radius: 5, x: -2, y: -2)
                            .opacity(0.8)
                        }
                        
                        
                        Spacer()
                            .frame(width: 50)
                        
                        //                            NavigationLink(destination: ChatInfo(user: user), label: {
                        
                        ZStack {
                            
                            
                            Image(systemName: "heart")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 110, height: 110)
                                .foregroundColor(Color.white)
                                .opacity(0.025)
                                .glow(color: Color.white, radius: 1)
                                .shadow(color: Color.white, radius: 2, x: 0, y: 3)
//                                .blinking(duration: 2.0)
                            
                            NavigationLink(destination: InfoSilence(user: user, friends: friends), label: {
                                HugCircle (color: ColorManager .grey1, friendName: "Love \nTarts")
                            })
                            .offset(x: showItems ? -100 : 0, y: showItems ? -140: 0)
                            .shadow(color: Color .white, radius: 5, x: 2, y: -2)
                            .opacity(0.75)
                            
                        }
                            
//           ***************
                            
                            
                            
                            
//                   ****************
                            
                        }
                        
                        Spacer()
                            .frame(height: 30)
                        
                    VStack {
                           
                        HStack {
                            NavigationLink(destination: InfoSafeChat(user: user, friends: friends), label: {
                                HugCircle (color: ColorManager .grey1, friendName: "I need \na Hug")
                            })
                            .offset(x: showItems ? -80 : 0, y: showItems ? 220: 0)
                            .shadow(color: Color.white, radius: 5, x: -2, y: -2)
                            .opacity(0.75)
                            
                           
                            
                            Spacer ()
                                .frame(width: 75)

        ZStack {

            NavigationLink(
                destination: RRDidGood(user: user, friends: friends),
                label: {
                    Text("YES")
                        .font(.system(size: 30))
                        .foregroundColor(ColorManager .grey3)
                        .fontWeight(.bold)
                        .opacity(0.8)
                        .multilineTextAlignment(.center)
//                        .blinking(duration: 2.0)
            })
        }

                            
                            Spacer ()
                                .frame(width: 70)
                            
                            
                            NavigationLink(destination: BestFriendMessages(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres), label: {
                                HugCircle (color: ColorManager .grey1, friendName: "Smile \nVault")
                            })
                            .offset(x: showItems ? -100 : 0, y: showItems ? -140: 0)
                            .shadow(color: Color .white, radius: 5, x: 2, y: -2)
                            .opacity(0.75)
                            

                    }
                }
                    

                   HStack {
                        
                       

                       NavigationLink(destination: WhyFiveFriends(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups), label: {
                           HugCircle (color: ColorManager .grey1, friendName: "Hurt \nFeelings")
                       })
                       .offset(x: showItems ? 85 : 0, y: showItems ? 400: 0)
                       .shadow(color: Color.white, radius: 4, x: 2, y: 3)
                       .opacity(0.75)


                        
                       Spacer()
                           .frame(width: 50)
                        
                        ZStack {
                            
                            
                            NavigationLink(destination: RR20(user: user, friend: user, friends: friends, groups: groups), label: {
                                HugCircle (color: ColorManager .grey1, friendName: "Friend \naffirmation")
                            })
                            .offset(x: showItems ? -120 : 0, y: showItems ? 100: 0)
                            .shadow(color: Color.white, radius: 10, x: -4, y: 4)
                            .opacity(0.75)
                      
                        }
                    }

                    
                    VStack {
     
                        Spacer()
                            .frame(width: 140)
               
                        VStack {
                            
                            Spacer ()
                                .frame(height: 100)
                            
                            
                            HStack {
                            
                                Spacer()
                                    .frame(width: 160)
                                
                                ZStack {
                                  
                                            
                                            NavigationLink(destination: FH2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups), label: {
                                                HugCircle (color: ColorManager .grey1, friendName: "AI \ncoming \n2024")
                                            })
                                            .offset(x: showItems ? 85 : 0, y: showItems ? 400: 0)
                                            .shadow(color: Color.cyan, radius: 4, x: 2, y: 3)
                                            .opacity(0.99)
                                            
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
                    
//                    Image("planet_6")
//                        .resizable()
//                        .foregroundColor(color)
////                        .foregroundColor(ColorManager .purple2)
//                        .frame(width: 80, height: 80)
//                        .shadow(color: Color.white, radius: 4, x: 0, y: 0)
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(color)
                        .foregroundColor(ColorManager .grey2)
                        .frame(width: 80, height: 80)
                        .opacity(0.3)
                        .shadow(color: Color.white, radius: 10, x: 5, y: 5)
                    
                    
                    
                    
                    
                    Text(friendName)
                        .fontWeight(.bold)
                        .font(.system(size: 14))
                        .italic()
                        .foregroundColor(ColorManager .grey4)
                    
                }
            }
        }
    }
    
