//
//  HideoutsView.swift
//  BestFriends
//
//  Created by Social Tech on 5/20/22.
//

import Foundation
import SwiftUI
import AVKit

struct HideoutsView: View {
    
    @State private var showItems: Bool = false
    @State private var offset: CGFloat = 200.0
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
 
    
    var body: some View {
        
        ZStack {
            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                .ignoresSafeArea()

            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
           
            AdPlayerView(name: "FieldFlowers")
                .ignoresSafeArea()
                .blendMode(.screen)
            
        
            NavigationLink(destination: BestFriendMessages(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres), label: { HideoutsViewCircle (color: .purple, friendName: "Special \nMessages")
            })

            .offset(x: showItems ? 100 : 0, y: showItems ? -265: 0)
           
              NavigationLink(destination: EmptyView(), label: {
                  HideoutsViewCircle (color: .orange, friendName: "PhotoPoP")
            })
            .offset(x: showItems ? 75 : 0, y: showItems ? 175: 0)
            

            NavigationLink(destination: EmptyView(), label: { HideoutsViewCircle (color: .green, friendName: "BestFriends \nPlaylist")
            })
            .offset(x: showItems ? -100 : 0, y: showItems ? -170: 0)
            

Spacer()
                .frame(height: 300)
                
        Image(systemName: "triangle.fill")
                    .resizable()
                    .foregroundColor(ColorManager .grey2)
                    .frame(width: 160, height: 160)
//                    .blur(radius: 2)

                    .shadow(color: .orange, radius: 65, x: 30, y: 50)

           VStack {
               
            Spacer ()
                   .frame(height: 100)
                
              Text("HIDEOUTS")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
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
    
   

struct HideoutsViewCircle: View {
    var color: Color
    var friendName: String
    
    var body: some View {
       
        ZStack {
          
        Rectangle()
        .frame(width: 90, height: 90)
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

//
//struct HideoutsView_Previews : PreviewProvider {
//    static var previews: some View {
//        HideoutsView()
//
////        HideoutsView(user: User, atmosphere: Atmosphere)
//    }
//
//}

//
//    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)



//    .glow(color: glowColor(), radius: 20)
//        private func glowColor() -> Color {
