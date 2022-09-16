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
            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                .ignoresSafeArea()

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
            VStack {
                
                Spacer()
                    .frame(height: 300)
//            Button(action: {
//                sessionManager.showLogin()
//            },
//                label: {
//                    Text("Home / Chat")
//                        .fontWeight(.thin)
//                        .frame(width: 200, height: 40)
//                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                        .font(.system(size: 30))
//                        .background(ColorManager.purple3)
//                        .cornerRadius(15)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                })
            }
            
            VStack {
           
                ZStack {
        Image(systemName: "rectangle.fill")
                    .resizable()
                    .foregroundColor(ColorManager .grey4)
                    .frame(width: 90, height: 250)
//                    .blur(radius: 2)
                    .opacity(0.90)

                    .shadow(color: .white, radius: 65, x: 30, y: 50)

          
                    VStack {
               Spacer ()
                      .frame(height: 65)
               
               
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

