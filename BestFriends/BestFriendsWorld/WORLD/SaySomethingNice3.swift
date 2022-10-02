//
//  SaySomethingNice3.swift
//  BestFriends
//
//  Created by Social Tech on 10/1/22.
//



import Foundation
import SwiftUI
import AVKit

struct SaySomethingNice3: View {
    
//    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    
    @State private var showItems: Bool = false
    @State private var offset: CGFloat = 200.0

    
    var body: some View {
        
        ZStack {
            
            ColorManager.purple4
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
        
        

     


              NavigationLink(destination: SaySomethingNice2(user: user, friends: friends), label: {
                  SomethingNiceCircle (color: ColorManager.grey2, friendName: "send \npush \nnotification")
            })
            .offset(x: showItems ? -75 : 0, y: showItems ? -150: 0)
            
            
            NavigationLink(destination: BestFriendMessages(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres), label: {
                SomethingNiceCircle (color: .purple, friendName: "saved \nWorld \nmessages")
            })
            .offset(x: showItems ? 100 : 0, y: showItems ? -200: 0)
            
                
                NavigationLink(destination:  HomeView(), label: {
                    SomethingNiceCircle (color: ColorManager.purple4, friendName: "send \nmessage in \nchat")
                })
                .offset(x: showItems ? -100 : 0, y: showItems ? 200: 0)
                
 
                NavigationLink(destination: EmptyView(), label: {
                    SomethingNiceCircle (color: .red, friendName: "")
                    })
                .offset(x: showItems ? 0 : 0, y: showItems ? 0: 0)

                           
                
            
        Image(systemName: "heart.fill")
                    .resizable()
                    .foregroundColor(.red)
                    .frame(width: 210, height: 180)
//                    .blur(radius: 2)

                    .shadow(color: .blue, radius: 65, x: 30, y: 50)
                    .opacity(0.85)
            
           VStack {
               
            Spacer ()
                   .frame(height: 0)
                
              Text("friends")
                            .font(.system(size: 40))
                            .italic()
                            .foregroundColor(.blue)
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
   

struct SomethingNiceCircle: View {
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
