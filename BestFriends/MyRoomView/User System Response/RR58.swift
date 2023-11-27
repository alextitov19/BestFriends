//
//  RR58.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 10/29/23.
//
//
//import SwiftUI
//
//struct RR58: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct RR58_Previews: PreviewProvider {
//    static var previews: some View {
//        RR58()
//    }
//}




import Foundation
import SwiftUI

struct RR58: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    let groups: [Group]
    
    
    
    @State private var selectedFriends: [String] = []
    @State private var colors: [Color] = [ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3]
    @State private var shareColor = ColorManager.purple5
    @State private var showingAlert = false
    
    @State private var counter = 0
    
    @State private var mood: Int = -1
    @State private var summary = ""
    @State private var sharedWith: [String] = []
    @State private var colorChangeTap: String = ""
    @State private var shareTapped: Bool = false
    
    var body: some View {
        //        ScrollView {
        
        ZStack {
            
            Color.black
                .opacity(0.9)
                .ignoresSafeArea()
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
            
    VStack {
        
        
        ZStack {
            
            //    ********************************************
            
            //        *********************** Rocket Guy ****************
            
            
            NavigationLink(
                destination:  RR4(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                label: {
                    
                    ZStack {
                        
                        //    ********************************************
                        Image("CoolGuy")
                        //                                            .aspectRatio(contentMode: .fit)
                            .frame(width: 120, height: 120)
                            .blinking(duration: 7.0)
                        
                        Text("Demo / Walk-through")
                            .fontWeight(.medium)
                            .frame(width: 210, height: 40)
                            .foregroundColor(Color.white)
                            .font(.system(size: 20))
                            .background(Color.cyan)
                            .cornerRadius(7)
                            .rotationEffect(.degrees(-38))
                            .opacity(0.8)
                            .shadow(color: ColorManager .purple3, radius: 2, x: 0, y: 3)
                            .blinking(duration: 7.0)
                        
//                        Spacer()
//                            .frame(height: 5)
                    }
                })
            }
    
        VStack {
                   
                        ZStack {

                            NavigationLink(
                                destination:  RR59(user: user, friends: friends, groups: groups, atmosphere: atmosphere, friendAtmospheres: friendAtmospheres),
                                label: {
                                    Text("AI \nVirtual \nFriends")
                                                .fontWeight(.light)
                                                .frame(width: 100, height: 100)
                                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                                .font(.system(size: 25))
                                                .background(Color.cyan)
                                                .cornerRadius(15)
                                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
            
                        }
                    )}
                }

                        Spacer()
                            .frame(height: 25)
                
        HStack {
            NavigationLink(
                destination:  RR32(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                label: {
                    
                    Image("iconVibes75")
                    Image("iconVibes75")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 55, height: 55)
                        .foregroundColor(ColorManager .purple4)
                        .glow(color: ColorManager .grey1, radius: 3)
//                                            .blinking(duration: 4.0)
                        .opacity(0.8)
                    
                    Text("My Vibe")
                        .fontWeight(.thin)
                        .frame(width: 220, height: 40)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 25))
                        .background(Color.cyan)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    
            })
        }
                         
                         Spacer()
                             .frame(height: 15)
                        
        HStack {
            NavigationLink(
                destination:  HugPreload(user: user, friends: friends, groups: groups, atmosphere: atmosphere, friendAtmospheres: friendAtmospheres),
                label: {
                    Text("My Friends")
                        .fontWeight(.thin)
                        .frame(width: 220, height: 40)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 25))
                        .background(Color.cyan)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    
                })

            ZStack {
                Image(systemName: "circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 45, height: 45)
                    .foregroundColor(Color.cyan)
                    .opacity(0.95)
          
                
                Image(systemName: "heart.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color.purple)
                    .glow(color: Color.white, radius: 0.3)
                    .shadow(color: .white, radius: 1, x: 3, y: -0.5)
                    .opacity(0.95)
            }
        
            
            
        }
            
            
                        Spacer()
                            .frame(height: 15)
                        
//    PhotoPopInfo(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups)
                        
//                        HugPreload(user: homeData!.user, friends: homeData!.friends, groups: homeData!.groups, atmosphere: homeData!.atmosphere, friendAtmospheres: homeData!.friendAtmospheres)
//
//                    NavigationLink(
//                        destination:  RR59(user: user, friends: friends, groups: groups, atmosphere: atmosphere, friendAtmospheres: friendAtmospheres),
//                        label: {
//                            Text("Virtual Friends")
//                                .fontWeight(.thin)
//                                .frame(width: 220, height: 40)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .font(.system(size: 25))
//                                .background(Color.cyan)
//                                .cornerRadius(15)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//                        })
                        
                   
//
//
//                        Spacer()
//                            .frame(height: 30)
//
//                        Button(action: {
//                            sessionManager.showLogin()
//                        },
//                               label: {
//                            Image("home-alt2")
//                                .frame(width: 60, height: 30)
//                                .foregroundColor(.black)
//                                .font(.system(size: 20))
//                                .background(ColorManager .grey3)
//                                .cornerRadius(15)
//                                .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
//                                .opacity(0.70)
//
//                        })

                    }
                }
                
                        
                        
                        
                        Spacer()
                            .frame(height: 40)
                        
                    }
                }
 

        


















