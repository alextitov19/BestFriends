//
//  StartHere1.swift
//  BestFriends
//
//  Created by Social Tech on 11/21/22.
//

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
            
//            ColorManager .grey4
//                .ignoresSafeArea()
//                .onAppear()
            
            Image("purpleBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
//            Image("Meet750")
//               .frame(width: 100, height: 50)
//                .ignoresSafeArea()
//                .scaledToFill()
            
            ZStack {
                
                
                
                Image(systemName: "circle.fill")
                    .resizable()
                    .foregroundColor(ColorManager .purple2)
                    .frame(width: 150, height: 150)
                    .blur(radius: 2)
                    .shadow(color: .purple, radius: 65, x: 30, y: 50)
                    .opacity(0.90)
                
                
                
                NavigationLink(destination: InviteView(user: user), label: {
                    StartHereCircle (color: ColorManager.pmbc_green, friendName: "ADD \nfive \nFriends")
                })
                .offset(x: showItems ? -90 : 0, y: showItems ? -270: 0)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
                
                
                
                
                
                NavigationLink(destination:  SettingsView(user: user, friends: friends, atmosphere: atmosphere), label: {
                    StartHereCircle (color: ColorManager.orange3, friendName: "SETTINGS")
                })
                .offset(x: showItems ? 70 : 0, y: showItems ? -250: 0)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
                
                
                //
                //
                //                NavigationLink(destination: MyRoomInfo(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups), label: {
                //                    StartHereCircle (color: ColorManager.grey1, friendName: "My \nRoom")
                //                })
                //                .offset(x: showItems ? 80 : 0, y: showItems ? 250: 0)
                //                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
                //
                
                
                //
                //                NavigationLink(destination: WhyFiveFriends(), label: {
                //                    StartHereCircle (color: ColorManager.pmbc_blue, friendName: "Why \nonly 5 \nfriends?")
                //                })
                //                .offset(x: showItems ? -80 : 0, y: showItems ? -130: 0)
                //                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
                //
                
                //
                //                NavigationLink(destination: TeenBoysUsing(), label: {
                //                    BuggingCircle (color: ColorManager.orange3, friendName: "Are \nteen boys \nusing app?")
                //                })
                //                .offset(x: showItems ? -70 : 0, y: showItems ? 210: 0)
                //
                
                
                
                
                
//                ZStack {
                    
                    
                    NavigationLink(destination: ShaylaPage(user: user), label: {
                        StartHereCircle (color: ColorManager.grey2, friendName: "Envisioned \nby \nTeens")
                    })
                    .offset(x: showItems ? -120 : 0, y: showItems ? -140: 0)
                    
                    
                    
//                    NavigationLink(destination: InfoViewPlanet(user: user), label: {
//                        StartHereCircle (color: ColorManager.purple4, friendName: "Walk-through")
//                    })
//                    .offset(x: showItems ? 140 : 0, y: showItems ? -140: 0)
                    
                    
                    
//
//                    NavigationLink(destination:  SurveyStickersPreload(), label: {
//                        StartHereCircle (color: ColorManager.purple1, friendName: "Take \n Survey, \nget \nSTICKERS")
//                    })
//                    .offset(x: showItems ? -10 : 0, y: showItems ? 280: 0)
//                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
//
                    
                    
                    
                    
                    Image(systemName: "triangle.fill")
                        .resizable()
                        .foregroundColor(ColorManager .grey2)
                        .frame(width: 250, height: 250)
                        .shadow(color: .purple, radius: 65, x: 30, y: 50)
                        .opacity(0.95)
                    
                    
                    
                    VStack {
                        
                        
                        Spacer ()
                            .frame(height: 200)
                        
                        Text("'settings'")
                            .font(.system(size: 20))
                            .italic()
                            .foregroundColor(ColorManager .grey4)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                        
                        Text("'about us'")
                            .font(.system(size: 20))
                            .italic()
                            .foregroundColor(ColorManager .grey4)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                        
                        Text("'add friends'")
                            .font(.system(size: 20))
                            .italic()
                            .foregroundColor(ColorManager .grey4)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                        
                        Text("'walk-through'")
                            .font(.system(size: 20))
                            .italic()
                            .foregroundColor(ColorManager .grey4)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                        
                        Text("'get cool stickers'")
                            .font(.system(size: 20))
                            .italic()
                            .foregroundColor(ColorManager .grey4)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                        
                        
                        
                        
                        Spacer ()
                            .frame(height: 60)
                        
                        Text("Please read Note:")
                            .foregroundColor(.green)
                            .font(.system(size: 30, weight: .light))
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                        
                        VStack {
                            
                            Text("Note; after receiving a push notification from \na friend, tap that friend's planet on homepage, \nthen tap the appropriate button \nfrom the dropdown menu.")
                                .foregroundColor(.white)
                                .font(.system(size: 15, weight: .light))
                                .multilineTextAlignment(.center)
                                .shadow(color: .black, radius: 1, x: 0, y: 1)
                            //                                    .opacity(0.50)
                            
                            
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
    }
    
    
//}
