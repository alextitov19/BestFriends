//
//  CustomizeChatBackgrounds.swift
//  BestFriends
//
//  Created by Social Tech on 12/19/22.
//



import Foundation
import SwiftUI


struct InfoCustomizeChatBackgrounds: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User

    
    //
    var body: some View {
        ZStack {
            //            ColorManager.grey3
            //                .ignoresSafeArea()
            //                .onAppear()
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
                .blendMode(.screen)
            
            
            VStack {
                
                Text("Customize Chat Backgrounds")
                    .font(.system(size: 35, weight: .bold))
                    .foregroundColor(ColorManager .grey1)
                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                    .opacity(0.50)
                    .multilineTextAlignment(.center)
                
                
                
                
                
                VStack {
                    
                    
                    Spacer()
                        .frame(height: 30)
                    
                    VStack {
                        
                        
                        Text("Check-out 'MOTION'")
                            .font(.system(size: 35))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.purple3)
                        
                        Text("Chat Backgrounds")
                            .font(.system(size: 30))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.purple3)
                        
                        
                        VStack {
                                  NavigationLink(
                   
                                   destination: ChangeChatBackgroundView(user: user),
                                      label: {
                                          Text("Settings")
                                              .fontWeight(.thin)
                                              .foregroundColor(Color.white)
                                              .frame(width: 200, height: 40)
                                              .font(.system(size: 30))
                                              .background(ColorManager.purple3)
                                              .cornerRadius(15)
                                              .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                   
                                      }
                                  )}
                        

                            
                            Spacer()
                                .frame(height: 15)
                            
                            
                            
                        }
                    }
                    
                }
            }
        }
    }

    
    




//
//import Foundation
//
//import SwiftUI
//
//
//struct ChatInfo: View {
//
//    @EnvironmentObject var sessionManager: SessionManager
//
//    let user: User
//
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
//                    Text("Create")
//                        .font(.system(size: 35))
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager.purple3)
//
//                    Text("NEW Chat Rooms")
//                        .font(.system(size: 35))
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager.purple3)
//
//                Text("-Tap Friend's Planet")
//                    .font(.system(size: 15))
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(ColorManager.red)
//
//                    Text("-Tap [Create NEW Chat Rooms]")
//                        .font(.system(size: 15))
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager.red)
//
//                    Text("-Name Chat Room")
//                        .font(.system(size: 15))
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager.red)
//
//                    Text("-Exit app and re-enter")
//                        .font(.system(size: 23))
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager.red)
//
//                    Text("  to Activate NEW Room")
//                        .font(.system(size: 23))
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager.red)
//
//                    Text("-Try 'motion' background in Settings")
//                        .font(.system(size: 15))
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(.white)
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
//           Text("Inside Chat Rooms")
//               .font(.system(size: 35))
//               .fontWeight(.light)
//               .multilineTextAlignment(.center)
//               .foregroundColor(ColorManager.purple3)
//
//           Text("-Long-tap messages to save to 'Nice' messages")
//               .font(.system(size: 15))
//               .fontWeight(.light)
//               .multilineTextAlignment(.center)
//               .foregroundColor(ColorManager.grey1)
//
//                Text("-Long-tap messages to Report Abuse")
//                    .font(.system(size: 15))
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(ColorManager.grey1)
//
//                Text("-Tap [Remove Me] to be removed")
//                    .font(.system(size: 15))
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(ColorManager.grey1)
//
//
//                Text("-Tap 'Lock' icon to Hide Chat")
//                    .font(.system(size: 15))
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(ColorManager.grey1)
//
//                Text("-'Un-Hide' Chat enter 4 digit PIN")
//                    .font(.system(size: 15))
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(ColorManager.grey1)
//
//
//                Spacer()
//                    .frame(height: 70)
//                }
//
//
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
