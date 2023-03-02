//
//  INFOPreloadA.swift
//  BestFriends
//
//  Created by Social Tech on 12/16/22.
//



import Foundation
import SwiftUI


struct INFOPreloadA: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
   let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let groups: [Group]
    let friendAtmospheres: [Atmosphere]

    var body: some View {
        ZStack {
            
            Color .black
                .ignoresSafeArea()
                .onAppear()
            
//            Image("purpleBackground")
//                 .resizable()
//                 .ignoresSafeArea()
//                 .scaledToFill()
//
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)

            
            VStack {
         
                Text("BestFriends is about")
                    .font(.system(size: 20))
                    .italic()
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                
                Text("friendships")
                    .font(.system(size: 65))
                    
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 100)
                
             
                
                Text("If you want simple reassurances \nyour friends truely like you")
                    .font(.system(size: 22))
                
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                
                
                Spacer()
                    .frame(height: 25)
                
                Text("If you want your friends \nto be there for you on bad days")
                    .font(.system(size: 22))
                
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 25)
                
                Text("If you want closer, \nmore meaningful friendships")
                    .font(.system(size: 22))
                
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
            
                Spacer()
                    .frame(height: 70)
                
            VStack {
           
              
            
          NavigationLink(
              
              destination: SaySomethingNice6(user: user, atmosphere: atmosphere, friends: friends, groups: groups, friendAtmospheres: friendAtmospheres),
              label: {
                  Text("then TAP here")
                      .fontWeight(.light)
                      .foregroundColor(Color.white)
                      .frame(width: 230, height: 60)
                      .font(.system(size: 25))
                      .background(ColorManager.pmbc_green)
                      .cornerRadius(7)
                      .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                      
              })
          
                
//
//
//
//                Spacer()
//                    .frame(height: 50)
//
//
//                        NavigationLink(
//                            destination: INFOMainHowWorks(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
//                            label: {
//                                Text("Walk-through")
//                                    .fontWeight(.light)
//                                    .frame(width: 220, height: 60)
//                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                    .font(.system(size: 25))
//                                    .background(ColorManager.purple3)
//                                    .cornerRadius(7)
//                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                                    .opacity(0.50)
//                            })
//
//
//
//                Spacer()
//                    .frame(height: 30)
//
//
//
//                NavigationLink(
//                    destination: INFOPreload2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
//                    label: {
//                        Text("University 'Launch Party' schedule")
//                            .fontWeight(.light)
//                            .frame(width: 220, height: 90)
//                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                            .font(.system(size: 25))
//                            .background(ColorManager.purple3)
//                            .cornerRadius(7)
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                            .opacity(0.50)
//                    })
//
//
                        
                        
                        Spacer()
                            .frame(height: 15)
                        
     
                 
                    }
                }
                
            }
      }
}

        
    
    


//
//
//import Foundation
//import SwiftUI
//import AVKit
//
//struct INFOPreloadA: View {
//
////    let user: User
////    let friends: [User]
////    let groups: [Group]
//
//    let user: User
//    let atmosphere: Atmosphere
//    let friends: [User]
//    let friendAtmospheres: [Atmosphere]
//    let groups: [Group]
//
//
//
//    @State private var showItems: Bool = false
//    @State private var offset: CGFloat = 200.0
//
//
//    var body: some View {
//
//        ZStack {
//
//
//
//            Image("purpleBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
//                .opacity(0.5)
//
//
////
////            AdPlayerView(name: "PaperAirplanes")
////                .ignoresSafeArea()
////                .blendMode(.screen)
//
//
//            ZStack{
////
////                NavigationLink(destination: INFOPreload2(user: user), label: {
////                    InfoCircle (color: ColorManager.purple1, friendName: "Enjoying \nhappier \nFriendships \n\nmore...")
////                })
////                .offset(x: showItems ? -80 : 0, y: showItems ? -200: 0)
////                .shadow(color: ColorManager .purple1, radius: 4, x: 4, y: 4)
//
//
////
////
////                NavigationLink(destination: EmptyView(), label: {
////                    InfoCircle (color: ColorManager .purple1, friendName: "Friendship \nFeed \n\nmore...")
////                })
////                .offset(x: showItems ? 120 : 0, y: showItems ? -150: 0)
////                .shadow(color: ColorManager .purple1, radius: 4, x: 4, y: 4)
////
//
//                NavigationLink(destination: INFOMainHowWorks(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups), label: {
//                    InfoCircle (color: ColorManager .pmbc_green, friendName: "How World \nFriendGroups \nworks \n\nmore...")
//                })
//                .offset(x: showItems ? 30 : 0, y: showItems ? -310: 0)
//                .shadow(color: ColorManager .purple1, radius: 4, x: 4, y: 4)
//
//
//                ZStack {
//
////
////                    NavigationLink(destination: INFOPreload2(user: user), label: {
////                        InfoCircle (color: ColorManager.purple3, friendName: "World FriendGroups... \nAll of us, \nat same time, \ntogether")
////                    })
////                    .offset(x: showItems ? -75 : 0, y: showItems ? 180: 0)
////                    .shadow(color: ColorManager .purple1, radius: 4, x: 4, y: 4)
//
//
//                    NavigationLink(destination: INFOPreload4(user: user, atmosphere: atmosphere, friends: friends,  friendAtmospheres: friendAtmospheres, groups: groups), label: {
//                        InfoCircle (color: ColorManager.purple3, friendName: "See who's\nusing \nBestFriends \n\nmore...")
//                    })
//                    .offset(x: showItems ? -20 : 0, y: showItems ? 220: 0)
//                    .shadow(color: ColorManager .purple1, radius: 4, x: 4, y: 4)
//
//
//
//
//
//
//
//
//                    Image(systemName: "triangle.fill")
//                        .resizable()
//                        .foregroundColor(ColorManager .grey2)
//                        .frame(width: 270, height: 270)
//                    //                    .blur(radius: 2)
//                        .shadow(color: ColorManager .purple5, radius: 65, x: 30, y: 50) .opacity(0.99)
//                        .opacity(0.95)
//                    VStack {
//
//                        Spacer ()
//                            .frame(height: 280)
//
//                        Text("Just \n5 minutes,")
//                            .font(.system(size: 25))
//
//                            .foregroundColor(.white)
//                            .fontWeight(.regular)
//                            .multilineTextAlignment(.center)
//                            .shadow(color: .black, radius: 1, x: 0, y: 1)
//
//                        Spacer ()
//                            .frame(height: 15)
//
//                        Text("all of us together, \nat the same time")
//                            .font(.system(size: 20))
//
//                            .foregroundColor(.white)
//                            .fontWeight(.regular)
//                            .multilineTextAlignment(.center)
//                            .shadow(color: .black, radius: 1, x: 0, y: 1)
//
//                        Spacer ()
//                            .frame(height: 15)
//
//                        Text("TAP")
//                            .font(.system(size: 20))
//                            .italic()
//                            .foregroundColor(.green)
//                            .fontWeight(.bold)
//                            .multilineTextAlignment(.center)
//                            .shadow(color: .black, radius: 1, x: 0, y: 1)
//
//                        Spacer ()
//                            .frame(height: 57)
//
//
//
//
//
//
//                        Spacer ()
//                            .frame(height: 100)
//
//
//                        VStack {
//
//                        }
//
//                        Spacer()
//                            .frame(height: 75)
//                    }
//                }
//
//
//
//                .onTapGesture {
//                    withAnimation {
//                        self.showItems.toggle()
//                    }
//                    print("tap function is working")
//                }
//
//                .animation(Animation.easeInOut(duration: 2.5), value: showItems)
//
//            }
//        }
//    }
//
//
//    struct InfoCircle: View {
//        var color: Color
//        var friendName: String
//
//        var body: some View {
//
//            ZStack {
//
//                Image(systemName: "circle.fill")
//                    .resizable()
//                    .foregroundColor(color)
//                    .frame(width: 150, height: 150)
//                    .shadow(color: ColorManager .grey3, radius: 5, x: 5, y: 5)
//                    .opacity(0.50)
//
//                Text(friendName)
//                    .fontWeight(.light)
//                    .italic()
//                    .foregroundColor(.black)
//
//            }
//        }
//    }
//
//
//}
