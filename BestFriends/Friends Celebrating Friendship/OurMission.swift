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

            NavigationLink(destination: EmptyView(), label: {
                WhoFightingCircle (color: .purple, friendName: "Where you can \nbe yourself \nwith your friends")
                })
            .offset(x: showItems ? 100 : 0, y: showItems ? -285: 0)
             
     
           
              NavigationLink(destination: EmptyView(), label: {
                  WhoFightingCircle (color: .orange, friendName: "Reach your \nGoals \ntogether")
            })
            .offset(x: showItems ? -85 : 0, y: showItems ? 215: 0)
            

            NavigationLink(destination: IntroFriendGpFight(), label: { WhoFightingCircle (color: .pink, friendName: "Reducing \nFriend Group \nDrama")
            })
            .offset(x: showItems ? -100 : 0, y: showItems ? -170: 0)
            
            NavigationLink(destination: EmptyView(), label: {
                WhoFightingCircle (color: .green, friendName: "BestFriends \nwalk-through")
          })
          .offset(x: showItems ? 75 : 0, y: showItems ? 155: 0)
            
            
            
            

        Image(systemName: "heart.fill")
                    .resizable()
                    .foregroundColor(.gray)
                    .frame(width: 250, height: 250)
//                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
                    .shadow(color: .blue, radius: 50, x: 30, y: 50)
        
            VStack {
                

                Text("Friends")
                            .font(.system(size: 33))
                            .foregroundColor(.blue)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                            .shadow(color: .black, radius: 1, x: 0, y: 1)

                Text("Celebrating")
                        .font(.system(size: 25))
                        .italic()
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)

                Text("Friendships")
                            .font(.system(size: 33))
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
            
           .animation(Animation.easeInOut(duration: 1.0), value: showItems)

            }
        }
    }
   

struct OurMissionCircle: View {
    var color: Color
    var friendName: String
    
    var body: some View {
       
        ZStack {
          
        Rectangle()
        .frame(width: 150, height: 150)
        .clipShape(Circle())
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
