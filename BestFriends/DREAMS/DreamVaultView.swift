//
//  DreamVaultView.swift
//  BestFriends
//
//  Created by Social Tech on 9/13/22.
//



import Foundation
import SwiftUI
import AVKit

struct DreamVaultView: View {
    
    let user: User
    let atmosphere: Atmosphere
    
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    
    @State private var showItems: Bool = false
    @State private var offset: CGFloat = 200.0

    
    var body: some View {
        
        ZStack {
           
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
          
           
            AdPlayerView(name: "PlanetSound")
                .ignoresSafeArea()
                .blendMode(.screen)

        
        ZStack {
            NavigationLink(destination: Neuroscience(user: user, friends: friends), label: { WhoFightingCircle (color: .orange, friendName: "Neuro- \nscience")
            })
                .offset(x: showItems ? -130 : 0, y: showItems ? 240: 0)
            
            NavigationLink(destination: TwinkieDream(user: user, friends: friends), label: {
                DreamCircle (color: ColorManager.purple5, friendName: "twinkie \ndreams")
            })
               .offset(x: showItems ? 150 : 0, y: showItems ? -100: 0)

            NavigationLink(destination: MiroWhiteboard(user: user, friends: friends), label: {
                WhoFightingCircle (color: ColorManager.purple2, friendName: "trajectory")
            })
                .offset(x: showItems ? 75 : 0, y: showItems ? -335: 0)

            
            NavigationLink(destination: DreamMap(), label: { WhoFightingCircle (color: ColorManager.orange3, friendName: "around \nthe next \nstar")
            })
                .offset(x: showItems ? -25 : 0, y: showItems ? -345: 0)
            
            
            NavigationLink(destination: EverybodyOk(user: user), label: {
                WhoFightingCircle (color: ColorManager.pmbc_green, friendName: "passion \nvs. \ndisipline")
            })
               .offset(x: showItems ? -130 : 0, y: showItems ? 150: 0)

            
            NavigationLink(destination: AudioCode(), label: {
                WhoFightingCircle (color: ColorManager.grey2, friendName: "embracing \nour \nunknown")
            })
               .offset(x: showItems ? -140 : 0, y: showItems ? -260: 0)
            
           
            NavigationLink(destination: DreamsWeDare(), label: {
                WhoFightingCircle (color: ColorManager.pmbc_pink, friendName: "dreams \nwe \ndare")
            })
            .offset(x: showItems ? 50 : 0, y: showItems ? -190: 0)
            
            NavigationLink(destination: EmptyView(), label: {
                WhoFightingCircle (color: ColorManager.grey3, friendName: "open")
            })
            .offset(x: showItems ? -120 : 0, y: showItems ? -190: 0)
            
            
         
            
            Image(systemName: "rectangle.fill")
                                .resizable()
                                .foregroundColor(ColorManager .grey4)
                                .frame(width: 100, height: 230)
            //                    .blur(radius: 2)
                                .opacity(0.90)
            
                                .shadow(color: .white, radius: 65, x: 30, y: 50)
            
            
                                VStack {
            
                          Text("our \ndream's")
                                        .font(.system(size: 12))
                                        .foregroundColor(ColorManager.grey2)
                                        .fontWeight(.medium)
                                        .multilineTextAlignment(.center)
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    
                                                  Text("somewhere \nout \nthere")
                                                                .font(.system(size: 12))
                                                                .foregroundColor(ColorManager.grey2)
                                                                .fontWeight(.medium)
                                                                .multilineTextAlignment(.center)
                                                                .shadow(color: .black, radius: 1, x: 0, y: 1)
                              
                    
                }
            }
            
            
           .onTapGesture {
               withAnimation {
               self.showItems.toggle()
               }
               print("tap function is working")
           }
            
           .animation(Animation.easeInOut(duration: 3.0), value: showItems)

            }
        }
    }
   

struct DreamCircle: View {
    var color: Color
    var friendName: String
    
    var body: some View {
       
        ZStack {
          
        Rectangle()
        .frame(width: 100, height: 100)
        .clipShape(Circle())
        .foregroundColor(color)
        .opacity(0.7)
        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 5, x: 0, y: 5)
        
        Text(friendName)
                .fontWeight(.light)
                .italic()
                .foregroundColor(ColorManager.grey1)

        }
       
    
        
    }
}










//
//
//import Foundation
//import SwiftUI
//import AVKit
//
//struct DreamVaultView: View {
//
//    @State private var showItems: Bool = false
//    @State private var offset: CGFloat = 200.0
////    @EnvironmentObject var sessionManager: SessionManager
//
//    let user: User
//    let atmosphere: Atmosphere
//
//    let friends: [User]
//    let friendAtmospheres: [Atmosphere]
//
//
//    var body: some View {
//
//        ZStack {
//
//
//            Image("purpleBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
//
//            AdPlayerView(name: "PlanetSound")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//
//            ZStack {
//
//            NavigationLink(destination: Heart(user: user), label: {
//                WhoFightingCircle (color: .gray, friendName: "twinkie \ndreams")
//            })
//               .offset(x: showItems ? 150 : 0, y: showItems ? -100: 0)
//
//            NavigationLink(destination: MiroWhiteboard(user: user, friends: friends), label: {
//                WhoFightingCircle (color: .gray, friendName: "sticky \nnotes")
//            })
//                .offset(x: showItems ? 75 : 0, y: showItems ? -300: 0)
//
//
//            NavigationLink(destination: DreamMap(user: user, friends: friends), label: { WhoFightingCircle (color: .gray, friendName: "after \nthe \nstart")
//            })
//                .offset(x: showItems ? -25 : 0, y: showItems ? -325: 0)
//
//
//            NavigationLink(destination: EverybodyOk(user: user), label: {
//                WhoFightingCircle (color: .gray, friendName: "passion")
//            })
//               .offset(x: showItems ? -50 : 0, y: showItems ? -150: 0)
//
//
//
//
//
//            NavigationLink(destination: Heart(user: user), label: {
//                WhoFightingCircle (color: .gray, friendName: "heart \nto \ncontinue")
//            })
//               .offset(x: showItems ? -110 : 0, y: showItems ? -260: 0)
//
//            NavigationLink(destination: HorizonsPreload1(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres:  friendAtmospheres), label: {
//                WhoFightingCircle (color: .gray, friendName: "dreams \nwe \ndare")
//            })
////            .frame(width: 185, height: 85)
//            .offset(x: showItems ? 50 : 0, y: showItems ? -160: 0)
//
//            VStack {
//                Spacer()
//                    .frame(height: 30)
////
              
//
//
//
//
//
//
//                Spacer()
//                    .frame(height: 300)
//
//            }
//
//            VStack {
//
////                ZStack {
//        Image(systemName: "rectangle.fill")
//                    .resizable()
//                    .foregroundColor(ColorManager .grey4)
//                    .frame(width: 90, height: 220)
////                    .blur(radius: 2)
//                    .opacity(0.90)
//
//                    .shadow(color: .white, radius: 65, x: 30, y: 50)
//
//
//                    VStack {
////               Spacer ()
////                      .frame(height: 35)
////
//
//              Text("Explore \nbefore \nSleep")
//                            .font(.system(size: 20))
//                            .foregroundColor(.white)
//                            .fontWeight(.medium)
//                            .multilineTextAlignment(.center)
//                            .shadow(color: .black, radius: 1, x: 0, y: 1)
//
//
//
//                    }
//                }
//
//
//               .onTapGesture {
//                   withAnimation {
//                   self.showItems.toggle()
//                   }
//                   print("tap function is working")
//               }
//
//               .animation(Animation.easeInOut(duration: 1.0), value: showItems)
//
//                }
//            }
//        }
//
//
//    struct WhoFightingCircle: View {
//        var color: Color
//        var friendName: String
//
//        var body: some View {
//
//            ZStack {
//
//            Rectangle()
//            .frame(width: 80, height: 80)
//            .clipShape(Circle())
//            .foregroundColor(color)
//            .opacity(0.7)
//            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 5, x: 0, y: 5)
//
//            Text(friendName)
//                    .fontWeight(.light)
//                    .italic()
//                    .foregroundColor(.black)
//
//            }
//        }
//    }
//
//}
//
//
////
////                }
////            }
////
////                .onTapGesture {
////                    withAnimation {
////                    self.showItems.toggle()
////                    }
////                    print("tap function is working")
////                }
////
////                .animation(Animation.easeInOut(duration: 3.0), value: showItems)
////
////            }
////            }
////        }
////
////
////
////struct HideoutsViewCircle: View {
////    var color: Color
////    var friendName: String
////
////    var body: some View {
////
////        ZStack {
////
////        Rectangle()
////        .frame(width: 85, height: 85)
////        .clipShape(Circle())
////        .foregroundColor(color)
////        .opacity(0.3)
////        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 5, x: 0, y: 5)
////
////        Text(friendName)
////                .fontWeight(.light)
////                .italic()
////                .foregroundColor(ColorManager.grey1)
////
////        }
////    }
////}
////}
////
