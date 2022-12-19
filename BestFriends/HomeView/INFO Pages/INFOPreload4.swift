//
//  INFOPreload4.swift
//  BestFriends
//
//  Created by Social Tech on 12/18/22.
//



import Foundation
import SwiftUI
import AVKit

struct INFOPreload4: View {
    
    let user: User
    let friends: [User]
    let groups: [Group]
    //    let atmosphere: Atmosphere
    //
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
            
            
            
            AdPlayerView(name: "PaperAirplanes")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            
            ZStack{
                
                
                            
                
                
                NavigationLink(destination: INFOPreload2(user: user), label: {
                    InfoCircle  (color: ColorManager.purple3, friendName: "social influencers \nwanting \na non-toxic \ndecompression \nhideout")
                })
                .offset(x: showItems ? 100 : 0, y: showItems ? 250: 0)
                .shadow(color: ColorManager .purple1, radius: 4, x: 4, y: 4)
                
                
                
                
                NavigationLink(destination: BuggingPreload1(user: user, friends: friends, groups: groups), label: {
                    InfoCircle (color: ColorManager.purple3, friendName: "Reducing \n FriendGroup \nDrama \n\nmore...")
                })
                .offset(x: showItems ? 120 : 0, y: showItems ? -150: 0)
                .shadow(color: ColorManager .purple1, radius: 4, x: 4, y: 4)
                
                
                NavigationLink(destination: INFOPreload3(user: user), label: {
                    InfoCircle (color: ColorManager.purple3, friendName: "Who's, \nusing \nBestFriends? \n\nmore...")
                })
                .offset(x: showItems ? -80 : 0, y: showItems ? 180: 0)
                .shadow(color: ColorManager .purple1, radius: 4, x: 4, y: 4)
                
                
             
                
                
                ZStack {
                    
//
//                    NavigationLink(destination: INFOPreload2(user: user), label: {
//                        InfoCircle (color: ColorManager.purple3, friendName: "World FriendGroups... \nAll of us, \nat same time, \ntogether")
//                    })
//                    .offset(x: showItems ? -75 : 0, y: showItems ? 180: 0)
//                    .shadow(color: ColorManager .purple1, radius: 4, x: 4, y: 4)
                    
                    
                 
                    NavigationLink(destination: BuggingPreload1(user: user, friends: friends, groups: groups), label: {
                        InfoCircle (color: ColorManager .pmbc_green, friendName: "and \nYOU!")
                    })
                    .offset(x: showItems ? -40 : 0, y: showItems ? -250: 0)
                    .shadow(color: ColorManager .purple1, radius: 4, x: 4, y: 4)
                    
//
//                    NavigationLink(destination: EmptyView(), label: {
//                        InfoCircle (color: ColorManager.purple3, friendName: "World FriendGroups... \nAll of us, \nat same time, \ntogether")
//                    })
//                    .offset(x: showItems ? 0 : 0, y: showItems ? 0 : 0)
//                    .shadow(color: ColorManager .purple1, radius: 4, x: 4, y: 4)
                    
                    
                    
                    
                    

                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(ColorManager .purple3)
                        .frame(width: 180, height: 180)
                    //                    .blur(radius: 2)
                        .shadow(color: ColorManager .purple5, radius: 65, x: 30, y: 50) .opacity(0.99)

                    VStack {
                        
                        Spacer ()
                            .frame(height: 255)

                        Text("guys wanting friends")
                            .font(.system(size: 18))
                            .italic()
                            .foregroundColor(.black)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
//                            .shadow(color: .black, radius: 1, x: 0, y: 1)

                        Spacer ()
                            .frame(height: 10)

                        Text("to have their backs!")
                            .font(.system(size: 18))
                            .italic()
                            .foregroundColor(.black)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
//                            .shadow(color: .black, radius: 1, x: 0, y: 1)

                        Spacer ()
                            .frame(height: 15)
//
                        Text("see more...")
                            .font(.system(size: 20))
                            .italic()
                            .foregroundColor(.green)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                       
                        Spacer ()
                            .frame(height: 57)
                        
                      
                        
                        
                        
                        
                        Spacer ()
                            .frame(height: 100)
                      
                        
                        VStack {
                            
                        }
                        
                        Spacer()
                            .frame(height: 75)
                    }
                }
                
                
                
                .onTapGesture {
                    withAnimation {
                        self.showItems.toggle()
                    }
                    print("tap function is working")
                }
                
                .animation(Animation.easeInOut(duration: 2.5), value: showItems)
                
            }
        }
    }
    
    
    struct InfoCircle: View {
        var color: Color
        var friendName: String
        
        var body: some View {
            
            ZStack {
                
                Image(systemName: "circle.fill")
                    .resizable()
                    .foregroundColor(ColorManager .purple2)
                    .frame(width: 180, height: 180)
                    .shadow(color: ColorManager .grey3, radius: 5, x: 10, y: 10)
                
                Text(friendName)
                    .fontWeight(.light)
                    .italic()
                    .foregroundColor(.black)
                
            }
        }
    }
    
    
}
