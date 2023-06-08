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
    
//    let user: User
//    let friends: [User]
//    let groups: [Group]
    //    let atmosphere: Atmosphere
    
    let user: User
   let atmosphere: Atmosphere
    let friends: [User]
   let friendAtmospheres: [Atmosphere]
    let groups: [Group]
    //
    @State private var showItems: Bool = false
    @State private var offset: CGFloat = 200.0
    
    
    var body: some View {
        
        ZStack {
            //
            //            ColorManager.purple1
            //                .ignoresSafeArea()
            //                .onAppear()
            
            
            
            Image("surferboysimg")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
                .opacity(0.5)
            
            
//
//            AdPlayerView(name: "PaperAirplanes")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//
            
            ZStack{
                
                
                
//                Mark: trying to link the circle to the website page with the influencers on it
//
//                Link(destination: URL(string: "https://socialtechlabs.com/apoloigize/")!) {
//
//                    Text("Is it time to Apologize?")
//                        .fontWeight(.thin)
//                        .frame(width: 260, height: 30)
//                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                        .background(ColorManager.pmbc_blue)
//                        .font(.system(size: 25))
//                        .background(ColorManager.purple3)
//                        .cornerRadius(15)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//                }
//
//
//
//                NavigationLink(destination: URL(string: "https://socialtechlabs.com/apoloigize/"), label: {
//                    InfoCircle  (color: ColorManager.purple3, friendName: "social influencers \nwanting \na non-toxic \ndecompression \nhideout")
//                })
//                .offset(x: showItems ? 120 : 0, y: showItems ? 250: 0)
//                .shadow(color: ColorManager .purple1, radius: 4, x: 4, y: 4)
                
//      Mark end of this **************************************
                
                
                
                
                
                
                
//                MARK: change from EmptyView to linking to website page with Influencers
                
                NavigationLink(destination: EmptyView(), label: {
                    InfoCircle  (color: ColorManager.purple3, friendName: "Everyone \nusing \nWorld - \nFriendGroups \nto their \nADVANTAGE")
                })
                .offset(x: showItems ? 100 : 0, y: showItems ? -200: 0)
                .shadow(color: ColorManager .purple1, radius: 4, x: 4, y: 4)
                
                
                
//                MARK: link to MyRoom
                NavigationLink(destination: EmptyView(), label: {
                    InfoCircle (color: ColorManager.purple3, friendName: "Somedays \njust wanting \nsafety \nin silence")
                })
                .offset(x: showItems ? 120 : 0, y: showItems ? 250: 0)
                .shadow(color: ColorManager .purple1, radius: 4, x: 4, y: 4)
                
                
                NavigationLink(destination: EmptyView(), label: {
                    InfoCircle (color: ColorManager.purple3, friendName: "Populars \nat school \nwanting \ncloser friend \nconnections")
                })
                .offset(x: showItems ? -95 : 0, y: showItems ? 200: 0)
                .shadow(color: ColorManager .purple1, radius: 4, x: 4, y: 4)
                
                
             
                
                
                ZStack {
                    
//
//                    NavigationLink(destination: INFOPreload2(user: user), label: {
//                        InfoCircle (color: ColorManager.purple3, friendName: "World FriendGroups... \nAll of us, \nat same time, \ntogether")
//                    })
//                    .offset(x: showItems ? -75 : 0, y: showItems ? 180: 0)
//                    .shadow(color: ColorManager .purple1, radius: 4, x: 4, y: 4)
                    
                    
                 
                    NavigationLink(destination: InviteView(user: user, atmosphere: atmosphere, friends: friends,  friendAtmospheres: friendAtmospheres, groups: groups), label: {
                        InfoCircle (color: ColorManager .pmbc_green, friendName: "...and \nYOU! \n(add friends)")
                    })
                    .offset(x: showItems ? -80 : 0, y: showItems ? -300: 0)
                    .shadow(color: ColorManager .pmbc_green, radius: 4, x: 4, y: 4)
                    
//
//                    NavigationLink(destination: EmptyView(), label: {
//                        InfoCircle (color: Color .cyan, friendName: "")
//                    })
//                    .offset(x: showItems ? 0 : 0, y: showItems ? 0 : 0)
//                    .shadow(color: ColorManager .purple1, radius: 4, x: 4, y: 4)
                    
                    
                    
                    
                    

                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(Color .cyan)
                        .frame(width: 180, height: 180)
                    //                    .blur(radius: 2)
                        .shadow(color: ColorManager .purple5, radius: 65, x: 30, y: 50) .opacity(0.9)

                    VStack {
                        
                        Spacer ()
                            .frame(height: 230)

                        Text("all of us \nwanting friends")
                            .font(.system(size: 18))
                            .italic()
                            .foregroundColor(.black)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
//                            .shadow(color: .black, radius: 1, x: 0, y: 1)

//                        Spacer ()
//                            .frame(height: 10)

                        Text("to have our backs!")
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
                
                .animation(Animation.easeInOut(duration: 3.25), value: showItems)
                
            }
        }
    }
    
    
    struct InfoCircle: View {
        var color: Color
        var friendName: String
        
        var body: some View {
            
            ZStack {
                
//                Image(systemName: "circle.fill")
//                    .resizable()
//                    .foregroundColor(Color)
//                    .frame(width: 180, height: 180)
//                    .shadow(color: Color .cyan, radius: 5, x: 10, y: 10)
//                    .opacity(0.5)
                
                Rectangle()
                    .frame(width: 180, height: 180)
                    .clipShape(Circle())
                    .foregroundColor(color)
                    .shadow(color: Color .cyan, radius: 5, x: 10, y: 10)
                    .opacity(0.5)
                
                
                Text(friendName)
                    .fontWeight(.light)
                    .italic()
                    .foregroundColor(.black)
                


                         


            }
        }
    }
    
    
}
