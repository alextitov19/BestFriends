//
//  OurMission.swift
//  BestFriends
//
//  Created by Social Tech on 5/9/22.
//



import Foundation

import Foundation
import SwiftUI

struct OurMission: View {
    
    @State private var showItems: Bool = false
    @State private var offset: CGFloat = 200.0
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        
        ZStack {
            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                .ignoresSafeArea()
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            AdPlayerView(name: "backgroundAnimation")
                .ignoresSafeArea()
                .blendMode(.screen)
            //                .offset(y: -250)
            
            
            //            Image("planet_4")
            
            ZStack {
                
                //            NavigationLink(destination: EmptyView(), label: {
                //                WhoFightingCircle (color: .purple, friendName: "Be yourself \nwith your friends")
                //                })
                //            .offset(x: showItems ? -25 : 0, y: showItems ? -325: 0)
                //
                //
                //
                //              NavigationLink(destination: EmptyView(), label: {
                //                  WhoFightingCircle (color: .orange, friendName: "Reach your \nGoals \ntogether")
                //            })
                //            .offset(x: showItems ? 100 : 0, y: showItems ? -215: 0)
                //
                
                NavigationLink(destination: EmptyView(), label: { WhoFightingCircle (color: .blue, friendName: "Settings / \nMy Account")
                })
                .offset(x: showItems ? -100 : 0, y: showItems ? -250: 0)
                
                NavigationLink(destination: EmptyView(), label: {
                    WhoFightingCircle (color: .green, friendName: "Build \n Playlist \nfor Friend")
                })
                .offset(x: showItems ? 50 : 0, y: showItems ? -150: 0)
                
//
//                NavigationLink(destination: EmptyView(), label: {
//                    WhoFightingCircle (color: .orange, friendName: "Customize \nPlanet \n(Q3: 2022)")
//                })
//                .offset(x: showItems ? -85 : 0, y: showItems ? 115: 0)
//
               
//                NavigationLink(destination: MyStreaks(), label: {
//                                    WhoFightingCircle (color: .pink, friendName: "Streaks")
//                                })
//                                .offset(x: showItems ? 90 : 0, y: showItems ? 200: 0)
//                
//                NavigationLink(destination: EmptyView(), label: {
//                    WhoFightingCircle (color: .white, friendName: "Streaks")
//                })
//                .offset(x: showItems ? -100 : 0, y: showItems ? -120: 0)
//
                
                
                NavigationLink(destination: EmptyView(), label: {
                    WhoFightingCircle (color: .white, friendName: "")
                })
                .offset(x: showItems ? -175 : 0, y: showItems ? 500: 0)
                
                
                NavigationLink(destination: EmptyView(), label: {
                    WhoFightingCircle (color: .gray, friendName: "")
                })
                .offset(x: showItems ? -75 : 0, y: showItems ? -600: 0)
                
                
                
                
                
                
                
                
                //        Image(systemName: "heart.fill")
                //                    .resizable()
                //                    .foregroundColor(.gray)
                
                //                    .frame(width: 300, height: 250)
                
                
                ZStack {
                    Rectangle()
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                        .foregroundColor(ColorManager .grey1)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 5, x: 0, y: 5)
                        .opacity(0.65)
                    
                    Text("tap")
                        .font(.system(size: 25))
                        
                        .foregroundColor(.purple)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                }
                
                
                
                .onTapGesture {
                    withAnimation {
                        self.showItems.toggle()
                    }
                    print("tap function is working")
                }
                
                .animation(Animation.easeInOut(duration: 1.0), value: showItems)
            }
        }
    }
}


struct OurMissionCircle: View {
    var color: Color
    var friendName: String
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .frame(width: 225, height: 225)
            
                .clipShape(Circle())
                .blur(radius: 50)
                .foregroundColor(color)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 5, x: 0, y: 5)
            
            Text(friendName)
                .fontWeight(.light)
                .italic()
                .foregroundColor(.black)
            
        }
    }
}


struct OurMission_Previews : PreviewProvider {
    static var previews: some View {
        OurMission()
    }
    
}


//    .glow(color: glowColor(), radius: 20)
//        private func glowColor() -> Color {
