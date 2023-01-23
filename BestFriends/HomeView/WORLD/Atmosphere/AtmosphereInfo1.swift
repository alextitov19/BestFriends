//
//  AtmosphereInfo1.swift
//  BestFriends
//
//  Created by Social Tech on 11/2/22.
//

//
//import Foundation
//import SwiftUI
//import AVKit
//
//struct AtmosphereInfo1: View {
//    
////    @EnvironmentObject var sessionManager: SessionManager
//    
//    let user: User
//    let atmosphere: Atmosphere
//    let friends: [User]
//    let friendAtmospheres: [Atmosphere]
//    let groups: [Group]
//    
//    @State private var showItems: Bool = false
//    @State private var offset: CGFloat = 200.0
//
//    
//    var body: some View {
//        
//        ZStack {
//            
//            ColorManager.purple1
//                .ignoresSafeArea()
//                .onAppear()
//           
////            Image("purpleBackground")
////                .resizable()
////                .ignoresSafeArea()
////                .scaledToFill()
////
////
////            AdPlayerView(name: "storm2")
////                .ignoresSafeArea()
////                .blendMode(.screen)
//            
//            
//            
//            
//            
//            ZStack{
////                  Text("Say something")
////                      .font(.system(size: 50))
////                      .foregroundColor(ColorManager.purple2)
////                      .fontWeight(.thin)
////                      .multilineTextAlignment(.center)
////
////                  Text("'Nice' to a Friend")
////                      .font(.system(size: 50))
////                      .foregroundColor(ColorManager.purple2)
////                      .fontWeight(.thin)
////                      .multilineTextAlignment(.center)
////                  Spacer()
////                      .frame(height: 80)
//        
//        
//
//     
//
//
//                NavigationLink(destination: MyRoomInfo(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres:  friendAtmospheres, groups: groups), label: {
//                  AtmosphereCircle (color: .yellow, friendName: "Need time \nalone in \n'My Room'")
//            })
//              .offset(x: showItems ? 100 : 0, y: showItems ? -200: 0)
//              .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
//            
//                
//                
//            NavigationLink(destination: AtmosphereInfo(user: user, atmosphere: atmosphere, friends: friends), label: {
//                AtmosphereCircle (color: ColorManager.red, friendName: "ALERT \nFriends \nNOW!")
//            })
//           .offset(x: showItems ? -75 : 0, y: showItems ? -175: 0)
//           .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
//         
//
//
//            
//        Image(systemName: "triangle.fill")
//                    .resizable()
//                    .foregroundColor(ColorManager .grey2)
//                    .frame(width: 220, height: 180)
////                    .blur(radius: 2)
//
//                    .shadow(color: .purple, radius: 65, x: 30, y: 50)
//                    .opacity(0.95)
//            
//           VStack {
//               
//            Spacer ()
//                   .frame(height: 20)
//                
//              Text("my DAY")
//                            .font(.system(size: 25))
//                            
//                            .foregroundColor(ColorManager .purple5)
//                            .fontWeight(.thin)
//                            .multilineTextAlignment(.center)
////                            .shadow(color: .black, radius: 1, x: 0, y: 1)
//               Text("just")
//                             .font(.system(size: 25))
//                             .foregroundColor(ColorManager .purple5)
////                             .foregroundColor(.white)
//                             .fontWeight(.thin)
//                             .multilineTextAlignment(.center)
////                           .shadow(color: .black, radius: 1, x: 0, y: 1)
//
//               
//               Text("C H A N G E D!")
//                             .font(.system(size: 27))
//                             .foregroundColor(ColorManager .purple5)
//                             .fontWeight(.light)
//                             .multilineTextAlignment(.center)
//                             .shadow(color: .black, radius: 1, x: 0, y: 1)
//                }
//            }
//            
//          
//           .onTapGesture {
//               withAnimation {
//               self.showItems.toggle()
//               }
//               print("tap function is working")
//           }
//            
//           .animation(Animation.easeInOut(duration: 1.5), value: showItems)
//
//            }
//        }
//    }
//   
//
//struct AtmosphereCircle: View {
//    var color: Color
//    var friendName: String
//    
//    var body: some View {
//       
//        ZStack {
//          
//        Rectangle()
//        .frame(width: 110, height: 110)
//        .clipShape(Circle())
//        .foregroundColor(color)
//        .opacity(0.7)
////        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 5, x: 0, y: 5)
////
//        Text(friendName)
//                .fontWeight(.light)
//                .italic()
//                .foregroundColor(.black)
//
//        }
//    }
//}
//
//
//
//
//
////VStack {
////
////
////    Spacer()
////        .frame(height: 20)
////
////    Button(action: {
////        sessionManager.showLogin()
////    },
////        label: {
////            Text("Type it in Chat")
////                .fontWeight(.thin)
////                .frame(width: 310, height: 40)
////                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
////                .font(.system(size: 27))
////                .background(ColorManager.purple3)
////                .cornerRadius(15)
////                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
////        })
