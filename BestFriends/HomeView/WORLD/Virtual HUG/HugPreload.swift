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
            //
            //            ColorManager.purple1
            //                .ignoresSafeArea()
            //                .onAppear()
            
            
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
                .opacity(0.5)
            
            
            
            AdPlayerView(name: "AloneBeach")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            
            ZStack{
                
                NavigationLink(destination: HugPushNotification(user: user, friends: friends), label: {
                    HugCircle (color: ColorManager.purple2, friendName: "Send \nfriend \na HUG")
                })
                .offset(x: showItems ? -80 : 0, y: showItems ? -250: 0)
                .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
                
                
          
                    
                    NavigationLink(destination: HugPushNotification2(user: user, friends: friends), label: {
                        HugCircle (color: ColorManager .purple2, friendName: "I could \nuse \na HUG")
                    })
                    .offset(x: showItems ? 30 : 0, y: showItems ? -170: 0)
                    .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
                    
                    
                    Image(systemName: "heart.fill")
                        .resizable()
                        .foregroundColor(ColorManager .grey2)
                        .frame(width: 250, height: 200)
                    //                    .blur(radius: 2)
                        .shadow(color: ColorManager .purple3, radius: 65, x: 30, y: 50) .opacity(0.99)
                    
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
//                                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                        
                        Text("HUG?")
                            .font(.system(size: 45))
                        
                            .foregroundColor(.white)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
//                                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                        
                        
                        
                        
                    }
                }
                
                
                
                .onTapGesture {
                    withAnimation {
                        self.showItems.toggle()
                    }
                    print("tap function is working")
                }
                
                .animation(Animation.easeInOut(duration: 1.7), value: showItems)
                
            }
        }
    }
    
    
    struct HugCircle: View {
        var color: Color
        var friendName: String
        
        var body: some View {
            
            ZStack {
                
                Image(systemName: "circle.fill")
                            .resizable()
                            .foregroundColor(ColorManager .purple2)
                            .frame(width: 120, height: 120)
                            .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
                
                Text(friendName)
                    .fontWeight(.light)
                    .italic()
                    .foregroundColor(.black)
                
            }
        }
    }


