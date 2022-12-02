//
//  StartHere1.swift
//  BestFriends
//
//  Created by Social Tech on 11/21/22.
//

import Foundation

import Foundation
import SwiftUI
import AVKit

struct StartHere1: View {

//    @EnvironmentObject var sessionManager: SessionManager

    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    let groups: [Group]
//    let friendAtmospheres: [Atmosphere]

    @State private var showItems: Bool = false
    @State private var offset: CGFloat = 200.0


    var body: some View {

        ZStack {
            
            Color .black
              .ignoresSafeArea()
              .onAppear()
            
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
            
//
//             Image("purpleBackground")
//                 .resizable()
//                 .scaledToFill()
//                 .ignoresSafeArea()
//
//             Image("ballons")
//                 .frame(width: 320, height: 20)
//
////            ColorManager.purple1
////                .ignoresSafeArea()
////                .onAppear()
//
//            Image("purpleBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
//
//            //            AdPlayerView(name: "Planet6")
//            //                .ignoresSafeArea()
//            //                .blendMode(.screen)
//
//            AdPlayerView(name: "sky2")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//
//
//
            ZStack{


//
//                NavigationLink(destination: ShaylaPage(user: user), label: {
//                  StartHereCircle (color: ColorManager.purple2, friendName: "Envisioned \nby \nTeens")
//            })
//              .offset(x: showItems ? -120 : 0, y: showItems ? -200: 0)
//              .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)

                
                
                
                NavigationLink(destination: InviteView(user: user), label: {
                StartHereCircle (color: ColorManager.pmbc_green, friendName: "ADD \nfive \nFriends")
            })
                .offset(x: showItems ? -90 : 0, y: showItems ? -270: 0)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
                
                
                
                NavigationLink(destination:  SurveyStickersPreload(), label: {
                    StartHereCircle (color: ColorManager.grey2, friendName: "Take \n Survey, \nget \nSTICKERS")
                })
                .offset(x: showItems ? 100 : 0, y: showItems ? -110: 0)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
            
                
                
                
                NavigationLink(destination:  SettingsView(user: user, friends: friends, atmosphere: atmosphere), label: {
                    StartHereCircle (color: ColorManager.orange3, friendName: "SETTINGS")
                })
                .offset(x: showItems ? 70 : 0, y: showItems ? -235: 0)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
              
                


                NavigationLink(destination: MyRoomInfo(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups), label: {
                    StartHereCircle (color: ColorManager.grey1, friendName: "Coming \nSoon!")
                    })
                .offset(x: showItems ? 80 : 0, y: showItems ? 190: 0)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)

            


                NavigationLink(destination: WhyFiveFriends(), label: {
                    StartHereCircle (color: ColorManager.pmbc_blue, friendName: "Why \nonly 5 \nfriends?")
                    })
                .offset(x: showItems ? -80 : 0, y: showItems ? -130: 0)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)

                
              
                NavigationLink(destination: TeenBoysUsing(), label: {
                    BuggingCircle (color: ColorManager.orange3, friendName: "Are \nteen boys \nusing app?")
                })
                .offset(x: showItems ? -30 : 0, y: showItems ? 175: 0)
                
                
                
                
                NavigationLink(destination: EmptyView(), label: {
                    StartHereCircle (color: ColorManager.purple4, friendName: "")
                    })
                .offset(x: showItems ? 0 : 0, y: showItems ? 0: 0)
                
                
                
                
                
                Image(systemName: "circle.fill")
                    .resizable()
                    .foregroundColor(ColorManager .purple2)
                    .frame(width: 150, height: 150)
                    .blur(radius: 2)
                   .shadow(color: .purple, radius: 65, x: 30, y: 50)
                    .opacity(0.90)


           VStack {

            Spacer ()
                   .frame(height: 120)
              
               Text("tap \nhere")
                             .font(.system(size: 18))
                             .italic()
                             .foregroundColor(ColorManager .grey4)
                             .fontWeight(.thin)
                             .multilineTextAlignment(.center)
////                             .shadow(color: .black, radius: 1, x: 0, y: 1)
//
//               Text("My")
//                             .font(.system(size: 20))
//                             .italic()
//                             .foregroundColor(.white)
//                             .fontWeight(.thin)
//                             .multilineTextAlignment(.center)
////                             .shadow(color: .black, radius: 1, x: 0, y: 1)
//
//               Spacer ()
//                      .frame(height: 7)
//
//               Text("GEAR")
//                             .font(.system(size: 30))
//                             .foregroundColor(ColorManager .purple1)
////                            .foregroundColor(.green)
//                             .fontWeight(.light)
//                             .multilineTextAlignment(.center)
////                             .shadow(color: .black, radius: 1, x: 0, y: 1)
               
//
//               Text("'FriendGroups'")
//                             .font(.system(size: 25))
//                             .foregroundColor(ColorManager .purple1)
////                            .foregroundColor(.white)
//                             .fontWeight(.light)
//                             .multilineTextAlignment(.center)
//                             .shadow(color: .black, radius: 1, x: 0, y: 1)
               
//
//
//               Text("together")
//                             .font(.system(size: 20))
//                             .italic()
//                             .foregroundColor(.white)
//                             .fontWeight(.thin)
//                             .multilineTextAlignment(.center)
//
               Spacer ()
                      .frame(height: 130)

                }
            }


           
            
            
            
           .onTapGesture {
               withAnimation {
               self.showItems.toggle()
               }
               print("tap function is working")
           }

           .animation(Animation.easeInOut(duration: 1.5), value: showItems)

            }
        }
    }


struct StartHereCircle: View {
    var color: Color
    var friendName: String

    var body: some View {

        ZStack {

        Rectangle()
        .frame(width: 110, height: 110)
        .clipShape(Circle())
        .foregroundColor(color)
      
        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
        .opacity(0.7)


        Text(friendName)
                .fontWeight(.light)
                .italic()
                .foregroundColor(.black)

        }
    }
}
