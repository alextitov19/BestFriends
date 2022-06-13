//
//  FG_VideoCall.swift
//  BestFriends
//
//  Created by Social Tech on 6/3/22.
//



import Foundation
import SwiftUI
import AVKit

struct FG_VideoCall: View {
    
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
          
           
            AdPlayerView(name: "dramaLights")
                .ignoresSafeArea()
                .blendMode(.screen)
//            AdPlayerView(name: "backgroundAnimation")
//                .ignoresSafeArea()
//                .blendMode(.screen)
////                .offset(y: -250)
            
            
//            Image("planet_4")
        
        ZStack {

            NavigationLink(destination: IntroBluemodeFriend(), label: {
                FG_VideoCallCircle (color: .pink, friendName: "Hugh Fight \nwith BFF")
                })
            .offset(x: showItems ? 100 : 0, y: showItems ? -265: 0)
             
     
           
              NavigationLink(destination: ParentsFighting(), label: {
                  FG_VideoCallCircle (color: .green, friendName: "Schedule \nFaceTime \nCall")
            })
            .offset(x: showItems ? 75 : 0, y: showItems ? 175: 0)
            

            NavigationLink(destination: EmptyView(), label: { FG_VideoCallCircle (color: .blue, friendName: "Hurt \nFeelings")
            })
            .offset(x: showItems ? -100 : 0, y: showItems ? -170: 0)
            
            NavigationLink(destination: IntroFriendGpFight(), label: {
                FG_VideoCallCircle (color: .gray, friendName: "Being \nTeens")
                })
            .offset(x: showItems ? 40 : 0, y: showItems ? -200: 0)
             
            
               NavigationLink(destination: FG_Team(), label: {
                   FG_VideoCallCircle (color: .orange, friendName: "True \nFriends")
             })
             .offset(x: showItems ? -50 : 0, y: showItems ? 250: 0)
             
            
               NavigationLink(destination: SetBoundries(), label: {
                   FG_VideoCallCircle (color: .white, friendName: "Set \nBoundries")
             })
             .offset(x: showItems ? -100 : 0, y: showItems ? 90: 0)
             
            
            
            
           
              NavigationLink(destination: FG_Video(), label: {
                  FG_VideoCallCircle (color: .purple, friendName: "Pick \nYour \nMediator")
            })
            .offset(x: showItems ? 130 : 0, y: showItems ? -50: 0)
            
           
            
            
            
            
            

        Image(systemName: "heart.fill")
                    .resizable()
                    .foregroundColor(.purple)
                    .frame(width: 150, height: 150)
//                    .blur(radius: 2)

                    .shadow(color: .blue, radius: 65, x: 30, y: 50)
                   .opacity(0.9)

           VStack {
              Text("FriendGroups")
                            .font(.system(size: 20))
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
   

struct FG_VideoCallCircle: View {
    var color: Color
    var friendName: String
    
    var body: some View {
       
        ZStack {
          
        Rectangle()
        .frame(width: 100, height: 100)
        .clipShape(Circle())
        .foregroundColor(color)
        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 5, x: 0, y: 5)
        .opacity(0.5)
            
            
        Text(friendName)
                .fontWeight(.light)
                .italic()
                .foregroundColor(.black)

        }
    }
}


struct FG_VideoCall_Previews : PreviewProvider {
    static var previews: some View {
        FG_VideoCall()
    }

}

//
//    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)



//    .glow(color: glowColor(), radius: 20)
//        private func glowColor() -> Color {

