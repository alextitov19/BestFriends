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
                .opacity(0.9)
            
            
            ZStack{
                
                VStack {
     
                    Spacer()
                        .frame(height: 7)
//  *************************************************
       
                    HStack {
                        
                        ZStack {
                            Image(systemName: "")
    
                        }
                        
                        Spacer()
                            .frame(width: 300)
                        

                            
                            NavigationLink(
                                destination: RR40Info2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                label: {
                                    Image(systemName: "info.circle")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 32, height: 32)
                                        .foregroundColor(ColorManager .purple3)
    //                                        .glow(color: Color.purple, radius: 2)
                                        .opacity(0.9)
                                })
                        }
                    Spacer()
                        .frame(height: 70)
                
//    *******************************************
           
                        HStack {
                            VStack {
                                NavigationLink(destination: InfoView(user: user, friends: friends), label: {
                                    HugCircle (color: Color.cyan, friendName: "My \nDreams")
                                })
                                .offset(x: showItems ? -80 : 0, y: showItems ? 220: 0)
                                .shadow(color: Color.blue, radius: 5, x: -2, y: -2)
                                .opacity(0.99)
                            }
                            
                            
                            Spacer()
                                .frame(width: 50)
                            
                            NavigationLink(destination: ChatInfo(user: user), label: {
                                HugCircle (color: Color.cyan, friendName: "Proud \nof \nMyself")
                            })
                            .offset(x: showItems ? -100 : 0, y: showItems ? -140: 0)
                            .shadow(color: Color .blue, radius: 5, x: 2, y: -2)
                            .opacity(0.99)
                        }
                        
                        Spacer()
                            .frame(height: 30)
                        
                    VStack {
                           
                        HStack {
                            NavigationLink(destination: InfoSafeChat(user: user, friends: friends), label: {
                                HugCircle (color: Color.cyan, friendName: "Sad \nn' \nLonely")
                            })
                            .offset(x: showItems ? -80 : 0, y: showItems ? 220: 0)
                            .shadow(color: Color.blue, radius: 5, x: -2, y: -2)
                            .opacity(0.99)
                            
                           
                            
                            Spacer ()
                                .frame(width: 70)

        ZStack {
//            NavigationLink(destination: EmptyView(), label: {
//                HugCircle (color: Color.purple, friendName: "AI")
//            })
//            .offset(x: showItems ? -120 : 0, y: showItems ? 100: 0)
//            .shadow(color: Color.purple, radius: 10, x: -4, y: 4)
//            .opacity(0.99)
            
            
            NavigationLink(
                destination: EmptyView(),
                label: {
//                    Image(systemName: "info.circle")
                    Text("AI")
                        .font(.system(size: 40))
                        .foregroundColor(ColorManager .grey4)
                        .fontWeight(.medium)
                        .opacity(0.5)
                        .multilineTextAlignment(.center)
//                        .blinking(duration: 2.0)
                })

        }

                            Spacer ()
                                .frame(width: 70)
                            
                            
                            NavigationLink(destination: BestFriendMessages(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres), label: {
                                HugCircle (color: Color.pink, friendName: "Smile \nVault")
                            })
                            .offset(x: showItems ? -100 : 0, y: showItems ? -140: 0)
                            .shadow(color: Color .pink, radius: 5, x: 2, y: -2)
                            .opacity(0.99)
                            

                    }
                }
                    

                   HStack {
                        
                        ZStack {
                            NavigationLink(destination: RR13(user: user, friends: friends, groups: groups), label: {
                                HugCircle (color: Color.purple, friendName: "Empty")
                            })
                            .offset(x: showItems ? -120 : 0, y: showItems ? 100: 0)
                            .shadow(color: Color.purple, radius: 10, x: -4, y: 4)
                            .opacity(0.99)
                            
                       }
                        
                       Spacer()
                           .frame(width: 50)
                        
                        ZStack {
                            
                            
                            NavigationLink(destination: EmptyView(), label: {
                                HugCircle (color: Color.green, friendName: "Empty")
                            })
                            .offset(x: showItems ? -120 : 0, y: showItems ? 100: 0)
                            .shadow(color: Color.green, radius: 10, x: -4, y: 4)
                            .opacity(0.99)
                      
                        }
                    }

                    
                    VStack {
     
                        Spacer()
                            .frame(width: 140)
                        
                        
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
                                        Image("FatGuy")
//                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 120, height: 120)
                                            .blinking(duration: 7.0)
                                        
                                        Text("When friends not around")
                                            .fontWeight(.medium)
                                            .frame(width: 200, height: 40)
                                            .foregroundColor(Color.black)
                                            .font(.system(size: 15))
                                            .background(ColorManager .purple1)
                                            .cornerRadius(7)
                                            .rotationEffect(.degrees(-25))
                                            .opacity(0.8)
                                        //                                            .glow(color: ColorManager .grey4, radius: 3)
                                            .shadow(color: ColorManager .purple3, radius: 2, x: 0, y: 3)
                                            .blinking(duration: 7.0)
                                        
                                        //**********************************************************
                                        
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
  
                        
                        VStack {
                            
                            Spacer ()
                                .frame(height: 100)
                            
                            
                            HStack {
                                
                                ZStack {
//                                    Image("")
//
//
//
//                                    NavigationLink(destination: RR33(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups), label: {
//                                        HugCircle (color: ColorManager .grey1, friendName: "Hurt \nFeelings")
//                                    })
//                                    .offset(x: showItems ? 85 : 0, y: showItems ? 400: 0)
//                                    .shadow(color: Color.cyan, radius: 4, x: 2, y: 3)
//                                    .opacity(0.99)
//
//
                                    
                                }
                                Spacer()
                                    .frame(width: 160)
                                
//                                ZStack {
//
//                                    NavigationLink(destination: CH6(user: user, friend: user, friends: friends, groups: groups), label: {
//                                        HugCircle (color: ColorManager .grey1, friendName: "Build \nyour own \n'in-beta'")
//                                    })
//                                    .offset(x: showItems ? 85 : 0, y: showItems ? 400: 0)
//                                    .shadow(color: Color.cyan, radius: 4, x: 2, y: 3)
//                                    .opacity(0.99)
//
//                                }
                                
                            }
    //
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
                    
                    Image("planet_6")
                        .resizable()
                        .foregroundColor(color)
                    //                            .foregroundColor(ColorManager .purple2)
                        .frame(width: 80, height: 80)
                        .shadow(color: Color.white, radius: 4, x: 0, y: 0)
                    
                    Text(friendName)
                        .fontWeight(.bold)
                        .font(.system(size: 14))
                        .italic()
                        .foregroundColor(.black)
                    
                }
            }
        }
    }
    
