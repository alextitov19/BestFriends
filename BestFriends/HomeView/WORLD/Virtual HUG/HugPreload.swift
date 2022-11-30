//
//  HugPreload.swift
//  BestFriends
//
//  Created by Social Tech on 10/25/22.
//



import Foundation
import SwiftUI
import AVKit

struct HugPreload: View {
   
    let user: User
    let friends: [User]
    let groups: [Group]
    let atmosphere: Atmosphere
    
    @State private var showItems: Bool = false
    @State private var offset: CGFloat = 200.0

    
    var body: some View {
        
        ZStack {
            
            ColorManager.purple1
                .ignoresSafeArea()
                .onAppear()
        
            ZStack{

              NavigationLink(destination: HugPushNotification(user: user, friends: friends), label: {
                  HugCircle (color: ColorManager.purple2, friendName: "send \nHUG")
            })
              .offset(x: showItems ? -80 : 0, y: showItems ? -250: 0)
            
                
                
//                
//                NavigationLink(destination: VirtualHug(), label: {
//                HugCircle (color: ColorManager.purple4, friendName: "received \nHUG")
//            })
//                .offset(x: showItems ? 130 : 0, y: showItems ? -175: 0)
//           


                NavigationLink(destination: AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends), label: {
                HugCircle (color: ColorManager.red, friendName: "UPDATE \nmy Vibe")
            })
                .offset(x: showItems ? -30 : 0, y: showItems ? -170: 0)
           
                

        Image(systemName: "heart.fill")
                    .resizable()
                    .foregroundColor(ColorManager .grey2)
                    .frame(width: 250, height: 200)
//                    .blur(radius: 2)

                    .shadow(color: .purple, radius: 65, x: 30, y: 50)
                    .opacity(0.99)
            
           VStack {
               
            Spacer ()
                   .frame(height: 10)

               Text("Do you")
                             .font(.system(size: 25))
                         
                             .foregroundColor(.white)
                             .fontWeight(.thin)
                             .multilineTextAlignment(.center)
 //                            .shadow(color: .black, radius: 1, x: 0, y: 1)
             
               Text("or a Friend")
                             .font(.system(size: 25))
                         
                             .foregroundColor(.white)
                             .fontWeight(.thin)
                             .multilineTextAlignment(.center)
               
               Text("need a")
                             .font(.system(size: 25))
                         
                             .foregroundColor(.white)
                             .fontWeight(.thin)
                             .multilineTextAlignment(.center)
 //                            .shadow(color: .black, radius: 1, x: 0, y: 1)
               
               Text("HUG")
                             .font(.system(size: 45))
                         
                             .foregroundColor(.white)
                             .fontWeight(.thin)
                             .multilineTextAlignment(.center)
 //                            .shadow(color: .black, radius: 1, x: 0, y: 1)
               
               
               
               
               
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
   

struct HugCircle: View {
    var color: Color
    var friendName: String
    
    var body: some View {
       
        ZStack {
          
        Rectangle()
        .frame(width: 110, height: 110)
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


