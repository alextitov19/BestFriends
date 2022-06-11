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
          
           
            AdPlayerView(name: "storm2")
                .ignoresSafeArea()
                .blendMode(.screen)
//            AdPlayerView(name: "backgroundAnimation")
//                .ignoresSafeArea()
//                .blendMode(.screen)
////                .offset(y: -250)
            
            
//            Image("planet_4")
        
        ZStack {

            NavigationLink(destination: IntroBluemodeFriend(), label: {
                WhoFightingCircle (color: .pink, friendName: "Huge Fight \nwith my \nBFF")
                })
            .offset(x: showItems ? 100 : 0, y: showItems ? -265: 0)
             
     
           
              NavigationLink(destination: ParentsFighting(), label: {
                  WhoFightingCircle (color: .orange, friendName: "OMG, \nmy Parents \nare Fighting \nAGAIN!")
            })
            .offset(x: showItems ? 75 : 0, y: showItems ? 175: 0)
            

            NavigationLink(destination: FG_VideoCall(), label: { WhoFightingCircle (color: .blue, friendName: "Drama \nin my \nFriendGroup")
            })
            .offset(x: showItems ? -100 : 0, y: showItems ? -170: 0)
            


        Image(systemName: "triangle.fill")
                    .resizable()
                    .foregroundColor(.gray)
                    .frame(width: 260, height: 260)
//                    .blur(radius: 2)

                    .shadow(color: .blue, radius: 65, x: 30, y: 50)

           VStack {
               
            Spacer ()
                   .frame(height: 100)
                
              Text("DramaMode")
                            .font(.system(size: 37))
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
   

struct WhoFightingCircle: View {
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


struct WhoFighting_Previews : PreviewProvider {
    static var previews: some View {
        WhoFighting()
    }

}

//
//    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)



//    .glow(color: glowColor(), radius: 20)
//        private func glowColor() -> Color {
