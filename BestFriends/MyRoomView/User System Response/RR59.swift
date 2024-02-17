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
  
//            AdPlayerView(name: "background_7")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//                .opacity(0.5)
            
            AdPlayerView(name: "background_8")
                .ignoresSafeArea()
                .blendMode(.screen)
                .opacity(0.7)
         
//            AdPlayerView(name: "moonShots")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//                .opacity(0.9)
            
//            AdPlayerView(name: "dreams")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//                .opacity(0.0)
            
            ZStack{
                
                VStack {
     
                    Spacer()
                        .frame(height: 70)
//  *************************************************
       
                    HStack {
                        
                        Spacer()
                            .frame(width: 170)
                        
                        VStack {
                            
//                            Text("Off Planet")
//                                .font(.system(size: 35))
//                                .fontWeight(.bold)
//                                .multilineTextAlignment(.center)
//                                .foregroundColor(ColorManager .grey1)
//                                .shadow(color: Color.white, radius: 6, x: 3, y: 5)
//                                .opacity(0.7)
//    
//                            Text("When friends aren't around")
//                                .font(.system(size: 17))
//                                .fontWeight(.regular)
//                                .multilineTextAlignment(.center)
//                                .foregroundColor(Color.white)
//                                .shadow(color: Color.white, radius: 3, x: 3, y: 5)
//                                .opacity(0.7)
//                            
//
//                            
//                            Text("in the quiet of space")
//                                .font(.system(size: 17))
//                                .fontWeight(.regular)
//                                .multilineTextAlignment(.center)
//                                .foregroundColor(Color.white)
//                                .shadow(color: Color.white, radius: 3, x: 3, y: 5)
//                                .opacity(0.7)
                            
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
                        .frame(height: 50)
                
//    *******************************************
           
                    HStack {
                        VStack {
                            
                        
                            
                            NavigationLink(destination: WhyFiveFriends(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups), label: {
                                HugCircle (color: ColorManager .grey1, friendName: "Hurt \nFeelings")
                            })
                            .offset(x: showItems ? -120 : 0, y: showItems ? 100: 0)
                            .shadow(color: Color.white, radius: 10, x: -4, y: 4)
                            .opacity(0.75)

                      
                        }
                        
                        
                        Spacer()
                            .frame(width: 50)
                        
                        //                            NavigationLink(destination: ChatInfo(user: user), label: {
                        
                        ZStack {
                            
//                            
//                            Image(systemName: "heart")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 110, height: 110)
//                                .foregroundColor(Color.white)
//                                .opacity(0.025)
//                                .glow(color: Color.white, radius: 1)
//                                .shadow(color: Color.white, radius: 2, x: 0, y: 3)
//                                .blinking(duration: 2.0)
                            
                            
                            NavigationLink(destination:  BestFriendMessages(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres), label: {
                                HugCircle (color: ColorManager .grey1, friendName: "my \nSpecial \nmessages")
                            })
                            .offset(x: showItems ? -100 : 0, y: showItems ? -140: 0)
                            .shadow(color: Color .white, radius: 5, x: 2, y: -2)
                            .opacity(0.75)
                            
                            
//                            NavigationLink(destination: InfoSilence(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres), label: {
//                                HugCircle (color: ColorManager .grey1, friendName: "Love \nTarts")
//                            })
//                            .offset(x: showItems ? -100 : 0, y: showItems ? -140: 0)
//                            .shadow(color: Color .white, radius: 5, x: 2, y: -2)
//                            .opacity(0.75)
                            
                        }
                            
//           ***************
                            
                            
                            
                            
//                   ****************
                            
                        }
                        
                        Spacer()
                            .frame(height: 30)
                        
                    VStack {
                           
                        HStack {
                            NavigationLink(destination: InfoSafeChat(user: user, friends: friends), label: {
                                HugCircle (color: ColorManager .grey1, friendName: "Send me \na Hug")
                            })
                            .offset(x: showItems ? -80 : 0, y: showItems ? 220: 0)
                            .shadow(color: Color.white, radius: 5, x: -2, y: -2)
                            .opacity(0.75)
                            
                           
                            
                            Spacer ()
                                .frame(width: 50)

        ZStack {

            
            
            NavigationLink(destination: RR32(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups), label: {
                HugCircle (color: ColorManager .grey1, friendName: "request \nCareHearts")
            })
            .offset(x: showItems ? -100 : 0, y: showItems ? -140: 0)
            .shadow(color: Color .white, radius: 5, x: 2, y: -2)
            .opacity(0.75)
            
            
            
            
            
            
            }

                            
                            Spacer ()
                                .frame(width: 60)
                            
                            
                            NavigationLink(destination: RRDidGood(user: user, friends: friends), label: {
                                HugCircle (color: ColorManager .grey1, friendName: "Yep \nyou did\n it!!!")
                            })
                            .offset(x: showItems ? -100 : 0, y: showItems ? -140: 0)
                            .shadow(color: Color .white, radius: 5, x: 2, y: -2)
                            .opacity(0.75)
                            

                    }
                }
                  
                    Spacer ()
                        .frame(height: 30)

                   HStack {
                        
                  

                       NavigationLink(destination: FH2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups), label: {
                           HugCircle (color: ColorManager .grey1, friendName: "AI \ncoming \n2024")
                       })
                       .offset(x: showItems ? 85 : 0, y: showItems ? 400: 0)
                       .shadow(color: Color.white, radius: 4, x: 2, y: 3)
                       .opacity(0.75)


                        
                       Spacer()
                           .frame(width: 50)

                        ZStack {
                            
                            NavigationLink(destination: InfoView(user: user, friends: friends), label: {
                                HugCircle (color: ColorManager .grey1, friendName: "my \nDreams")
                            })
                            .offset(x: showItems ? -80 : 0, y: showItems ? 220: 0)
                            .shadow(color: Color.white, radius: 5, x: -2, y: -2)
                            .opacity(0.8)
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
                                  
                                            
//                                            NavigationLink(destination: FH2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups), label: {
//                                                HugCircle (color: ColorManager .grey1, friendName: "AI \ncoming \n2024")
//                                            })
//                                            .offset(x: showItems ? 85 : 0, y: showItems ? 400: 0)
//                                            .shadow(color: Color.cyan, radius: 4, x: 2, y: 3)
//                                            .opacity(0.99)
//
                                    }
                                }
                            }
                        
                        
            VStack {
                                
                Spacer ()
                    .frame(height: 250)
                                
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
    


//ZStack {
//
//    NavigationLink(
//        destination: RRBrokenHeart(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
//        label: {
//
//            ZStack {
//                Text("Dented \nHeart")
//                    .font(.system(size: 14))
//                    .foregroundColor(ColorManager .grey4)
//                    .fontWeight(.bold)
//                    .opacity(0.99)
//                    .multilineTextAlignment(.center)
//                //                        .blinking(duration: 2.0)
//
//                Image(systemName: "heart")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 120, height: 120)
//                    .foregroundColor(Color.cyan)
//                    .opacity(0.1)
//                    .rotationEffect(.degrees(10))
//                    .glow(color: Color.purple, radius: 1)
//                    .shadow(color: Color.purple, radius: 2, x: 0, y: 3)
//
//                Image(systemName: "heart.fill")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 110, height: 110)
//                    .foregroundColor(ColorManager .purple3)
//                    .opacity(0.1)
//                //                                        .rotationEffect(.degrees(10))
//                    .glow(color: Color.white, radius: 1)
//                    .shadow(color: Color.white, radius: 2, x: 0, y: 3)
//            }
//
//        })
//    }
