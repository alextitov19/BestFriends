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
    
//    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    let groups: [Group]
    
    @State private var showItems: Bool = false
    @State private var offset: CGFloat = 200.0

    
    var body: some View {
        
        ZStack {
            
            ColorManager.purple1
                .ignoresSafeArea()
                .onAppear()
           
//            Image("purpleBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
//
//
//            AdPlayerView(name: "storm2")
//                .ignoresSafeArea()
//                .blendMode(.screen)
            
            
            
            
            
            ZStack{
//                  Text("Say something")
//                      .font(.system(size: 50))
//                      .foregroundColor(ColorManager.purple2)
//                      .fontWeight(.thin)
//                      .multilineTextAlignment(.center)
//
//                  Text("'Nice' to a Friend")
//                      .font(.system(size: 50))
//                      .foregroundColor(ColorManager.purple2)
//                      .fontWeight(.thin)
//                      .multilineTextAlignment(.center)
//                  Spacer()
//                      .frame(height: 80)
        
        

     


              NavigationLink(destination: HugPushNotification(user: user, friends: friends), label: {
                  HugCircle (color: ColorManager.purple2, friendName: "send \nHUG")
            })
            .offset(x: showItems ? 130 : 0, y: showItems ? -175: 0)
            
                NavigationLink(destination: VirtualHug(), label: {
                HugCircle (color: ColorManager.purple4, friendName: "received \nHUG")
            })
            .offset(x: showItems ? -80 : 0, y: showItems ? -250: 0)



//                NavigationLink(destination:  HomeView(), label: {
//                    SomethingNiceCircle (color: ColorManager.purple4, friendName: "send \nmessage in \nchat")
//                })
//                .offset(x: showItems ? -100 : 0, y: showItems ? 200: 0)
                
//                NavigationLink(destination:  PhotoPopView(user: user, friends: friends), label: {
//                    BuggingCircle (color: ColorManager.purple3, friendName: "#2 \nload images")
//                })
//                .offset(x: showItems ? 100 : 0, y: showItems ? -200: 0)
//
//
//
//
//
//                NavigationLink(destination: EmptyView(), label: {
//                    BuggingCircle (color: .red, friendName: "")
//                    })
//                .offset(x: showItems ? 0 : 0, y: showItems ? 0: 0)

                           
                
            
        Image(systemName: "square.fill")
                    .resizable()
                    .foregroundColor(ColorManager .grey2)
                    .frame(width: 130, height: 130)
//                    .blur(radius: 2)

                    .shadow(color: .purple, radius: 65, x: 30, y: 50)
                    .opacity(0.99)
            
           VStack {
               
            Spacer ()
                   .frame(height: 10)

               Text("HUGS")
                             .font(.system(size: 30))
                         
                             .foregroundColor(.white)
                             .fontWeight(.thin)
                             .multilineTextAlignment(.center)
 //                            .shadow(color: .black, radius: 1, x: 0, y: 1)
//              Text("FriendGroups")
//                            .font(.system(size: 20))
//
//                            .foregroundColor(.blue)
//                            .fontWeight(.thin)
//                            .multilineTextAlignment(.center)
////                            .shadow(color: .black, radius: 1, x: 0, y: 1)
//
//
//
//               Text("fixing this")
//                             .font(.system(size: 20))
//
//                             .foregroundColor(.blue)
//                             .fontWeight(.thin)
//                             .multilineTextAlignment(.center)
// //                            .shadow(color: .black, radius: 1, x: 0, y: 1)
//
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





//VStack {
//
//
//    Spacer()
//        .frame(height: 20)
//
//    Button(action: {
//        sessionManager.showLogin()
//    },
//        label: {
//            Text("Type it in Chat")
//                .fontWeight(.thin)
//                .frame(width: 310, height: 40)
//                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                .font(.system(size: 27))
//                .background(ColorManager.purple3)
//                .cornerRadius(15)
//                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//        })
