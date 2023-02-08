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
           
            
            Image("purpleBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            Image("book")
                .frame(width: 320, height: 20)
            
            
            
            ZStack{
                
                
                Image(systemName: "circle.fill")
                    .resizable()
                    .foregroundColor(ColorManager .purple2)
                    .frame(width: 150, height: 150)
                    .blur(radius: 2)
                    .shadow(color: .purple, radius: 65, x: 30, y: 50)
                    .opacity(0.90)
                
                
                
                NavigationLink(destination: HurtFeelings4(user: user, friends: friends, groups: groups), label: {
                    BuggingCircle (color: ColorManager.purple3, friendName: "Friend \nhurt my \nFeelings")
                })
                .offset(x: showItems ? -80 : 0, y: showItems ? -270: 0)
                .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
                
                
                NavigationLink(destination: Apologies4(user: user, friends: friends, groups: groups), label: {
                    BuggingCircle (color: ColorManager.purple3, friendName: "I hurt \nmy friend's \nFeelings")
                })
                .offset(x: showItems ? 30 : 0, y: showItems ? -300: 0)
                .shadow(color:  ColorManager .purple1, radius: 10, x: 10, y: 10)
                
                
                
                NavigationLink(destination: AskQuestion(user: user, friends: friends, groups: groups), label: {
                    BuggingCircle (color: .cyan, friendName: "Something \nelse \nbugging \nyou?")
                })
                .offset(x: showItems ? 120 : 0, y: showItems ? -190: 0)
                .shadow(color: ColorManager .purple2, radius: 10, x: 10, y: 10)
                
                
                
                
                ZStack {
                    
//                
//                    NavigationLink(destination: FightsInfo(user: user, friends: friends, groups: groups), label: {
//                        BuggingCircle (color: ColorManager.red, friendName: "Huge \nFIGHT? \ncoming soon")
//                    })
//                    .offset(x: showItems ? -120 : 0, y: showItems ? -150: 0)
//                    .shadow(color: ColorManager .red, radius: 10, x: 10, y: 10)
//                    
//                    
                    NavigationLink(destination: EmptyView(), label: {
                        BuggingCircle (color: .cyan, friendName: "")
                    })
                    .offset(x: showItems ? 0 : 0, y: showItems ? 0: 0)
//                    
//                    
                    
                    Image(systemName: "triangle.fill")
                        .resizable()
                        .foregroundColor(.cyan)
                        .frame(width: 300, height: 260)
                    //                    .blur(radius: 2)
                    
                        .shadow(color: .purple, radius: 65, x: 30, y: 50)
                        .opacity(0.85)
                    
                        VStack {
                            
                            Spacer ()
                                .frame(height: 80)
                            
//                            Text("Pro-active 'HELP'")
//                                .font(.system(size: 15))
//
//                                .foregroundColor(.white)
//                                .fontWeight(.light)
//                                .multilineTextAlignment(.center)
//
//                            Text("with handling")
//                                .font(.system(size: 12))
//                                .italic()
//                                .foregroundColor(.white)
//                                .fontWeight(.light)
//                                .multilineTextAlignment(.center)
                            
                            Text("Uncomfortable \nMoments")
                                .font(.system(size: 17))
                            
                                .foregroundColor(.white)
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                            
                            Spacer ()
                                .frame(height: 7)
                            
//                            Text("Nervous to say anything?")
//                                .font(.system(size: 15))
//                            
//                                .foregroundColor(.white)
//                                .fontWeight(.light)
//                                .multilineTextAlignment(.center)
                            
//
//                            Spacer ()
//                                .frame(height: 10)
//
//                            Text("You're NOT ALONE!")
//                                .font(.system(size: 15))
//
//                                .foregroundColor(.white)
//                                .fontWeight(.light)
//                                .multilineTextAlignment(.center)
//
//
                            
                            
                            
                            Spacer ()
                                .frame(height: 25)
                            
                            
                            Text("maybe we can help")
                                .font(.system(size: 20))
                            
                                .foregroundColor(.white)
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
//
//                            Text("doing something")
//                                .font(.system(size: 23))
//
//                                .foregroundColor(.white)
//                                .fontWeight(.light)
//                                .multilineTextAlignment(.center)
//
//                            
//                            
//                            
//                            Text("R I G H T  N O W!")
//                                .font(.system(size: 30))
//                                .foregroundColor(.green)
//                                .fontWeight(.bold)
//                                .multilineTextAlignment(.center)
//                            
//                            
//                        
                        
                    }
                }
                
                
                .onTapGesture {
                    withAnimation {
                        self.showItems.toggle()
                    }
                    print("tap function is working")
                }
                
                .animation(Animation.easeInOut(duration: 4.0), value: showItems)
                
            }
        }
    }
    
    
    struct BuggingCircle: View {
        var color: Color
        var friendName: String
        
        var body: some View {
            
            ZStack {
                
                Rectangle()
                    .frame(width: 120, height: 120)
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
}
    
