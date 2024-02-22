//
//  WorldPreload2.swift
//  BestFriends
//
//  Created by Social Tech on 10/24/22.
//


import Foundation
import SwiftUI
import AVKit

struct WorldPreload2: View {

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

//            ColorManager.purple1
//                .ignoresSafeArea()
//                .onAppear()

            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()

            //            AdPlayerView(name: "Planet6")
            //                .ignoresSafeArea()
            //                .blendMode(.screen)

            AdPlayerView(name: "PaperAirplanes")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            
            
            ZStack{



              NavigationLink(destination: SaySomethingNice3(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres), label: {
                  SomethingNiceCircle (color: ColorManager.purple2, friendName: "Just say \nsomething \nNICE")
            })
              .offset(x: showItems ? 120 : 0, y: showItems ? -200: 0)
              .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)

                
                
                
                NavigationLink(destination: HugPreload(user: user, friends: friends, groups: groups, atmosphere: atmosphere, friendAtmospheres: friendAtmospheres), label: {
                SomethingNiceCircle (color: ColorManager.pmbc_green, friendName: "send \ncomforting \nHUG")
            })
                .offset(x: showItems ? -20 : 0, y: showItems ? -150: 0)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
                
                
                
                NavigationLink(destination:  PhotoPopView(user: user, friends: friends), label: {
                    SomethingNiceCircle (color: ColorManager.grey2, friendName: "PhotoPOP \n'shake \niPhone'")
                })
                .offset(x: showItems ? -100 : 0, y: showItems ? 150: 0)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
            
                
                
                
                NavigationLink(destination:  SendSongPush(user: user, friends: friends), label: {
                    SomethingNiceCircle (color: ColorManager.orange3, friendName: "found \nNEW \nMusic")
                })
                .offset(x: showItems ? 80 : 0, y: showItems ? 90: 0)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
              
                
                
//                
//                NavigationLink(destination:  AtmosphereInfo1(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres:  friendAtmospheres, groups: groups), label: {
//                    SomethingNiceCircle (color: ColorManager.red, friendName: "Something \nJUST \nHappened")
//                })
//                .offset(x: showItems ? -90 : 0, y: showItems ? -240: 0)
//                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
//                
//                


                NavigationLink(destination: BuggingPreload1(user: user, friends: friends, groups: groups), label: {
                    SomethingNiceCircle (color: ColorManager.grey1, friendName: "Something's \nBUGGING \nme")
                    })
                .offset(x: showItems ? 0 : 0, y: showItems ? 225: 0)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)

            
               
              
//                NavigationLink(destination: StoriesPreLoad(user: user, friends: friends), label: {
//                    AtmosphereCircle (color: ColorManager.orange5, friendName: "MomentPOP \n(stories)")
//                })
//                .offset(x: showItems ? 110 : 0, y: showItems ? 170: 0)
//                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
                
               
                
                
                
                
                NavigationLink(destination: EmptyView(), label: {
                    SomethingNiceCircle (color: ColorManager.purple4, friendName: "")
                    })
                .offset(x: showItems ? 0 : 0, y: showItems ? 0: 0)
                
                
                
                
                
                Image(systemName: "heart.fill")
                    .resizable()
                    .foregroundColor(ColorManager .purple4)
                    .frame(width: 250, height: 200)
                //                    .blur(radius: 2)
                
                    .shadow(color: .purple, radius: 65, x: 30, y: 50)
                    .opacity(0.95)


           VStack {

            Spacer ()
                   .frame(height: 120)
              
//               Text("Teen-designed")
//                             .font(.system(size: 20))
//                             .italic()
//                            .foregroundColor(.white)
//                             .fontWeight(.thin)
//                             .multilineTextAlignment(.center)
////                             .shadow(color: .black, radius: 1, x: 0, y: 1)

               Text("building")
                             .font(.system(size: 20))
                             .italic()
                             .foregroundColor(.white)
                             .fontWeight(.thin)
                             .multilineTextAlignment(.center)
//                             .shadow(color: .black, radius: 1, x: 0, y: 1)
              
               Spacer ()
                      .frame(height: 7)
               
               Text("HARMONIOUS")
                             .font(.system(size: 30))
                             .foregroundColor(ColorManager .purple1)
//                            .foregroundColor(.green)
                             .fontWeight(.light)
                             .multilineTextAlignment(.center)
//                             .shadow(color: .black, radius: 1, x: 0, y: 1)
               
               
               Text("'FriendGroups'")
                             .font(.system(size: 25))
                             .foregroundColor(ColorManager .purple1)
//                            .foregroundColor(.white)
                             .fontWeight(.light)
                             .multilineTextAlignment(.center)
                             .shadow(color: .black, radius: 1, x: 0, y: 1)
               
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


struct WorldPreloadCircle: View {
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
