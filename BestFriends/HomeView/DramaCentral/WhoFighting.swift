//
//  WhoFighting.swift
//  BestFriends
//
//  Created by Social Tech on 5/3/22.
//


import Foundation
import SwiftUI
import AVKit

struct WhoFighting: View {
    
    let user: User
    let friends: [User]
    let groups: [Group]
    
    let atmosphere: Atmosphere
    
    @State private var showItems: Bool = false
    @State private var offset: CGFloat = 200.0
//    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        
        ZStack {
           
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
          
           
            AdPlayerView(name: "storm2")
                .ignoresSafeArea()
                .blendMode(.screen)

        
        ZStack {

            NavigationLink(destination: IntroBluemodeFriend(user: user, friends: friends, groups: groups, atmosphere: atmosphere), label: {
                WhoFightingCircle (color: .purple, friendName: "Fixing \nTEEN Fights")
                })
            .offset(x: showItems ? 100 : 0, y: showItems ? -200: 0)

           

              NavigationLink(destination: ParentsFighting(), label: {
                  WhoFightingCircle (color: .gray, friendName: "Parents \nFighting?")
            })
            .offset(x: showItems ? -75 : 0, y: showItems ? -150: 0)
            

//            NavigationLink(destination: FG_VideoCall(user: user, friends: friends, groups: groups), label: { WhoFightingCircle (color: .blue, friendName: "FriendGroup \nDrama")
//            })
//            .offset(x: showItems ? -90 : 0, y: showItems ? -150: 0)
            
            NavigationLink(destination: NostalgiaPreload2(user: user, friends: friends, groups: groups), label: {
                WhoFightingCircle (color: .orange, friendName: "Nostalgia")
            })
            .offset(x: showItems ? 95 : 0, y: showItems ? -30: 0)
            
            
//            NavigationLink(destination: Sweetheart1(user: user, friends: friends, groups: groups), label: {
//                WhoFightingCircle (color: .pink, friendName: "Messed \nUp?")
//            })
//            .offset(x: showItems ? -110 : 0, y: showItems ? 160: 0)
//            .opacity(0.7)
//
            
//            NavigationLink(destination: FD_Step1(), label: {
//                WhoFightingCircle (color: .green, friendName: "Family \nDrama \n(this Fall)")
//            })
//            .offset(x: showItems ? -20 : 0, y: showItems ? 200: 0)
//            .opacity(0.7)
            
            
        Image(systemName: "triangle.fill")
                    .resizable()
                    .foregroundColor(.gray)
                    .frame(width: 175, height: 175)
//                    .blur(radius: 2)

                    .shadow(color: .blue, radius: 65, x: 30, y: 50)
                    .opacity(0.85)
            
           VStack {
               
            Spacer ()
                   .frame(height: 85)
                
              Text("Fixing \n FIGHTS")
                            .font(.system(size: 22))
                            .foregroundColor(.blue)
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
            
           .animation(Animation.easeInOut(duration: 1.5), value: showItems)

            }
        }
    }
   

struct WhoFightingCircle: View {
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
                .foregroundColor(.black)

        }
    }
}
