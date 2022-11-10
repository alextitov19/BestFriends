//
//  BuggingPreload1.swift
//  BestFriends
//
//  Created by Social Tech on 10/24/22.
//
//


import Foundation
import SwiftUI
import AVKit

struct BuggingPreload1: View {
    
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
        
        

     


              NavigationLink(destination: HurtFeelingsPreload(user: user, friends: friends, groups: groups), label: {
                  BuggingCircle (color: ColorManager.purple2, friendName: "Hurt \nFeelings")
            })
              .offset(x: showItems ? -80 : 0, y: showItems ? -250: 0)
            
            NavigationLink(destination: FightsInfo(user: user, friends: friends, groups: groups), label: {
                BuggingCircle (color: ColorManager.purple4, friendName: "HUGE \nFight")
            })
            .offset(x: showItems ? 100 : 0, y: showItems ? -175: 0)
            

                  
                
            
        Image(systemName: "triangle.fill")
                    .resizable()
                    .foregroundColor(.pink)
                    .frame(width: 220, height: 180)
//                    .blur(radius: 2)

                    .shadow(color: .purple, radius: 65, x: 30, y: 50)
                    .opacity(0.99)
            
           VStack {
               
            Spacer ()
                   .frame(height: 50)

               Text("DRAMA")
                             .font(.system(size: 30))
                         
                             .foregroundColor(.blue)
                             .fontWeight(.thin)
                             .multilineTextAlignment(.center)
 //                            .shadow(color: .black, radius: 1, x: 0, y: 1)
              Text("Central")
                            .font(.system(size: 50))
                        
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
   

struct BuggingCircle: View {
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