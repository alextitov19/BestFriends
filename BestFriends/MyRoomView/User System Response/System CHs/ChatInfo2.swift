//
//  ChatInfo2.swift
//  BestFriends
//
//  Created by Social Tech on 10/7/22.
//


//
//import Foundation
//
//import SwiftUI
//
//
//struct ChatInfo2: View {
//
//    @EnvironmentObject var sessionManager: SessionManager
//
//    let user: User
////    let atmosphere: Atmosphere
//
//    var body: some View {
//        ZStack {
//
////            Image("purpleBackground")
////                .resizable()
////                .ignoresSafeArea()
////                .scaledToFill()
////
////            AdPlayerView(name: "FieldFlowers")
////                .ignoresSafeArea()
//
//            ColorManager.grey4
//                .ignoresSafeArea()
//                .onAppear()
//
////            VStack {
//
//
//
//
//            VStack {
//                VStack {
//
//
//                VStack {
//                    Spacer()
//                    .frame(height: 15)
//
//                    Text("For Your")
//                        .font(.system(size: 35))
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager.purple3)
//
//                    Text("Safety")
//                        .font(.system(size: 35))
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager.purple3)
//
//                Text("If chat is inactive for \n30 seconds the room \nclosed automatically")
//                    .font(.system(size: 25))
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(ColorManager.red)
//
//                    Text("-Exit Chat & Re-enter")
//                        .font(.system(size: 20))
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager.red)
//
//                    Text("-to activate")
//                        .font(.system(size: 20))
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager.red)
//
//                  
//
//                }
//
//            VStack {
//
//                Spacer()
//                .frame(height: 25)
//
//
//           Text("You can HIDE chat")
//               .font(.system(size: 35))
//               .fontWeight(.light)
//               .multilineTextAlignment(.center)
//               .foregroundColor(ColorManager.purple3)
//
//           Text("Retreive with")
//               .font(.system(size: 20))
//               .fontWeight(.light)
//               .multilineTextAlignment(.center)
//               .foregroundColor(ColorManager.grey1)
//
//                Text("Secret PIN")
//                    .font(.system(size: 20))
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(ColorManager.grey1)
//
//          
//
//
//                Spacer()
//                    .frame(height: 70)
//                }
//
//                    
//                    Text("Check-out 'MOTION'")
//                        .font(.system(size: 35))
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager.purple3)
//
//                    Text("Chat Backgrounds")
//                        .font(.system(size: 30))
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager.purple3)
//                    
//           VStack {
//               NavigationLink(
//
//                destination: ChangeChatBackgroundView(user: user),
//                   label: {
//                       Text("Settings")
//                           .fontWeight(.thin)
//                           .foregroundColor(Color.white)
//                           .frame(width: 200, height: 40)
//                           .font(.system(size: 30))
//                           .background(ColorManager.purple3)
//                           .cornerRadius(15)
//                           .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//                   }
//               )}
//
//
//                Spacer()
//                .frame(height: 15)
//
//                VStack {
////                        NavigationLink(
////                            destination: SettingsView(user: user, atmosphere: atmosphere),
////                            label: {
////                                Text("SETTINGS PAGE")
////                                    .fontWeight(.thin)
////                                    .frame(width: 275, height: 40)
////                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
////                                    .font(.system(size: 30))
////                                    .background(ColorManager.purple3)
////                                    .cornerRadius(15)
////                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
////
////
////                            })
//
////                    Spacer()
////                    .frame(height: 20)
////
////                    Button(action: {
////                        sessionManager.showLogin()
////                    },
////                        label: {
////                            Text("Home / Chat")
////                                .fontWeight(.thin)
////                                .frame(width: 200, height: 40)
////                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
////                                .font(.system(size: 30))
////                                .background(ColorManager.purple3)
////                                .cornerRadius(15)
////                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
////                        })
//
//                Spacer()
//                .frame(height: 100)
//
//
//
//
//            }
//        }
//
//    }
//}
//}
//}
//
//
//
