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

            AdPlayerView(name: "myRoom1")
                .ignoresSafeArea()
                .blendMode(.screen)
            
        
            NavigationLink(destination: BestFriendMessages(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres), label: { HideoutsViewCircle (color: .blue, friendName: "Message \nVault")
            })
                .offset(x: showItems ? 100 : 0, y: showItems ? -165: 0)
           
           
            NavigationLink(destination: PhotoPopPreload(user: user, friends: friends), label: {
                  HideoutsViewCircle (color: .orange, friendName: "PhotoPoP")
            })
                .offset(x: showItems ? 75 : 0, y: showItems ? -90: 0)
           
            
            NavigationLink(destination: ReceivedPlaylist(), label: { HideoutsViewCircle (color: .pink, friendName: "Friend \nSent \nSong")
            })
                .offset(x: showItems ? -60 : 0, y: showItems ? -145: 0)
            
            
            NavigationLink(destination: EverybodyOk(user: user), label: {
                HideoutsViewCircle (color: .gray, friendName: "Is \nEverybody \nOk?")
            })
               .offset(x: showItems ? -100 : 0, y: showItems ? -55: 0)

           
            
            VStack {
                
                Spacer()
                    .frame(height: 300)
            Button(action: {
                sessionManager.showLogin()
            },
                label: {
                    Text("Home / Chat")
                        .fontWeight(.thin)
                        .frame(width: 200, height: 40)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 30))
                        .background(ColorManager.purple3)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                })
            }
            
            VStack {
           
                ZStack {
        Image(systemName: "triangle.fill")
                    .resizable()
                    .foregroundColor(ColorManager .grey2)
                    .frame(width: 150, height: 175)
//                    .blur(radius: 2)
                    .opacity(0.95)

                    .shadow(color: .orange, radius: 65, x: 30, y: 50)

          
                    VStack {
               Spacer ()
                      .frame(height: 65)
               
               
              Text("My Room")
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
                .foregroundColor(.black)

        }
    }
}
}

