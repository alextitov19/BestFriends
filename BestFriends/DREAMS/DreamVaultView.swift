//
//  DreamVaultView.swift
//  BestFriends
//
//  Created by Social Tech on 9/13/22.
//



import Foundation
import SwiftUI
import AVKit

struct DreamVaultView: View {
    
    @State private var showItems: Bool = false
    @State private var offset: CGFloat = 200.0
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
 
    
    var body: some View {
        
        ZStack {


            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()

            AdPlayerView(name: "PlanetSound")
                .ignoresSafeArea()
                .blendMode(.screen)
            
        
            NavigationLink(destination: Neuroscience(user: user, friends: friends), label: { HideoutsViewCircle (color: .orange, friendName: "neuro- \nscience")
            })
                .offset(x: showItems ? 100 : 0, y: showItems ? -90: 0)
           

            NavigationLink(destination: MiroWhiteboard(user: user, friends: friends), label: {
                  HideoutsViewCircle (color: .gray, friendName: "sticky \nnotes")
            })
                .offset(x: showItems ? 75 : 0, y: showItems ? -300: 0)

            
            NavigationLink(destination: DreamMap(user: user, friends: friends), label: { HideoutsViewCircle (color: .gray, friendName: "after \nthe \nstart")
            })
                .offset(x: showItems ? -25 : 0, y: showItems ? -325: 0)
            
            
            NavigationLink(destination: EverybodyOk(user: user), label: {
                HideoutsViewCircle (color: .gray, friendName: "passion")
            })
               .offset(x: showItems ? -50 : 0, y: showItems ? -150: 0)

           
            
            NavigationLink(destination: Heart(user: user), label: {
                HideoutsViewCircle (color: .gray, friendName: "heart \nto \ncontinue")
            })
               .offset(x: showItems ? -110 : 0, y: showItems ? -260: 0)
           
            NavigationLink(destination: HorizonsPreload1(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres:  friendAtmospheres), label: {
                HideoutsViewCircle (color: .gray, friendName: "dreams \nwe \ndare")
            })
//            .frame(width: 185, height: 85)
            .offset(x: showItems ? 50 : 0, y: showItems ? -160: 0)
               
            
//            NavigationLink(destination: Heart(user: user), label: {
//                HideoutsViewCircle (color: .gray, friendName: "heart \nto \ncontinue")
//            })
//               .offset(x: showItems ? -110 : 0, y: showItems ? -260: 0)
//
            
            
            
            
            
            
            VStack {
                
                
                Spacer()
                    .frame(height: 300)

            }
            
            VStack {
           
                ZStack {
        Image(systemName: "rectangle.fill")
                    .resizable()
                    .foregroundColor(ColorManager .grey4)
                    .frame(width: 90, height: 220)
//                    .blur(radius: 2)
                    .opacity(0.90)

                    .shadow(color: .white, radius: 65, x: 30, y: 50)

          
                    VStack {
//               Spacer ()
//                      .frame(height: 35)
//               
               
              Text("My \nDream \nGalaxy")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                  
                }
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
        .frame(width: 85, height: 85)
        .clipShape(Circle())
        .foregroundColor(color)
        .opacity(0.3)
        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 5, x: 0, y: 5)
        
        Text(friendName)
                .fontWeight(.light)
                .italic()
                .foregroundColor(ColorManager.grey1)

        }
    }
}
}

