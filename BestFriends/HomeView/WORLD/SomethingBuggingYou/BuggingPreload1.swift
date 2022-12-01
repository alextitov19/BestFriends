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
            
//            ColorManager.purple1
//                .ignoresSafeArea()
//                .onAppear()
            
            
            
            
             Image("purpleBackground")
                 .resizable()
                 .scaledToFill()
                 .ignoresSafeArea()
          
             Image("book")
                 .frame(width: 320, height: 20)
            
       
            
            ZStack{
          
                
                
                NavigationLink(destination: HurtFeelings4(user: user, friends: friends, groups: groups), label: {
                    BuggingCircle (color: ColorManager.purple2, friendName: "Friend \nhurt my \nFeelings")
                })
                .offset(x: showItems ? -80 : 0, y: showItems ? -250: 0)
                
                NavigationLink(destination: Apologies4(user: user, friends: friends, groups: groups), label: {
                    BuggingCircle (color: ColorManager.purple4, friendName: "I hurt \nmy friend's \nFeelings")
                })
                .offset(x: showItems ? 100 : 0, y: showItems ? -175: 0)
                
                
                NavigationLink(destination: FightsInfo(user: user, friends: friends, groups: groups), label: {
                    BuggingCircle (color: ColorManager.red, friendName: "Just had \nHUGE \nFIGHT")
                })
                .offset(x: showItems ? -100 : 0, y: showItems ? -155: 0)
                
                
                Image(systemName: "triangle.fill")
                    .resizable()
                    .foregroundColor(.cyan)
                    .frame(width: 300, height: 260)
                //                    .blur(radius: 2)
                
                    .shadow(color: .purple, radius: 65, x: 30, y: 50)
                    .opacity(0.70)
                
                VStack {
                    
                    Spacer ()
                        .frame(height: 40)
                    
                    Text("Nervious,")
                        .font(.system(size: 15))
                    
                        .foregroundColor(.white)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                    
                    Text("uncomfortable,")
                        .font(.system(size: 15))
                    
                        .foregroundColor(.white)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                    
                    Text("not exactly sure \nwhat to say?")
                        .font(.system(size: 15))
                    
                        .foregroundColor(.white)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                    
                    
                    Spacer ()
                        .frame(height: 10)
                    
                    Text("You're NOT ALONE!")
                        .font(.system(size: 15))
                    
                        .foregroundColor(.white)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                 
                    
                    
                    
                    
                    Spacer ()
                        .frame(height: 25)
                    
                    
                    Text("Join users around the ")
                        .font(.system(size: 20))
                    
                        .foregroundColor(.white)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                    
                    Text("world fixing it")
                        .font(.system(size: 23))
                    
                        .foregroundColor(.white)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                    
                  
                    
                    
                    Text("R I G H T  N O W!")
                        .font(.system(size: 27))
                        .foregroundColor(.green)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
               
               
                    
//                    VStack {

                        
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
    


