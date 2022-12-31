//
//  StartHere1.swift
//  BestFriends
//
//  Created by Social Tech on 11/21/22.
//

import Foundation
import SwiftUI
import AVKit

struct StartHere1: View {
    
    //    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    let groups: [Group]
    //    let friendAtmospheres: [Atmosphere]
    
    @State private var showItems: Bool = false
    @State private var offset: CGFloat = 200.0
    
    
    var body: some View {
        
        ZStack {
            
//            ColorManager .grey4
//                .ignoresSafeArea()
//                .onAppear()
            
            Image("purpleBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
//            Image("Meet750")
//               .frame(width: 100, height: 50)
//                .ignoresSafeArea()
//                .scaledToFill()
            
            ZStack {
                
                
                
                Image(systemName: "circle.fill")
                    .resizable()
                    .foregroundColor(ColorManager .purple2)
                    .frame(width: 150, height: 150)
                    .blur(radius: 2)
                    .shadow(color: .purple, radius: 65, x: 30, y: 50)
                    .opacity(0.90)
                
                
                
                NavigationLink(destination: InviteView(user: user), label: {
                    StartHereCircle (color: ColorManager.pmbc_green, friendName: "ADD \nfive \nFriends")
                })
                .offset(x: showItems ? -90 : 0, y: showItems ? -270: 0)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
                
                
                
                
                
                NavigationLink(destination:  SettingsView(user: user, friends: friends, atmosphere: atmosphere), label: {
                    StartHereCircle (color: ColorManager.orange3, friendName: "SETTINGS")
                })
                .offset(x: showItems ? 70 : 0, y: showItems ? -250: 0)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
                
                
             
                
                
                
//                ZStack {
                    
                    
                    NavigationLink(destination: ShaylaPage(user: user), label: {
                        StartHereCircle (color: ColorManager.grey2, friendName: "Envisioned \nby \nTeens")
                    })
                    .offset(x: showItems ? -80 : 0, y: showItems ? -150: 0)
                   
                    

                
                NavigationLink(destination: INFOPreload4(user: user, friends: friends, groups: groups), label: {
                    StartHereCircle (color: ColorManager.purple3, friendName: "See who's\nusing \nBestFriends")
                })
                .offset(x: showItems ? 140 : 0, y: showItems ? -120: 0)
              
                 
                
         
                
                
 
                
                
                    
                    Image(systemName: "triangle.fill")
                        .resizable()
                        .foregroundColor(ColorManager .grey2)
                        .frame(width: 250, height: 250)
                        .shadow(color: .purple, radius: 65, x: 30, y: 50)
                        .opacity(0.95)
                    
                    
                    
                    VStack {
                        
                        
                        Spacer ()
                            .frame(height: 320)
                        
                        Text("'settings'")
                            .font(.system(size: 20))
                    
                            .foregroundColor(ColorManager .grey4)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                        Text("'add friends'")
                            .font(.system(size: 20))
                        
                            .foregroundColor(ColorManager .grey4)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                        Text("'envisioned by'")
                            .font(.system(size: 20))
                        
                            .foregroundColor(ColorManager .grey4)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                      

                        Text("'who's using BestFriends'")
                            .font(.system(size: 20))
                            
                            .foregroundColor(ColorManager .grey4)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                       
                    
                     
                        
                        VStack {
                            
                            
                                                Spacer()
                                                    .frame(height: 20)
                            
                            
                                                    Link(destination: URL(string: "https://socialtechlabs.com/reporting-issues-in-bestfriends/")!) {
                            
                                                        Text("Report Issues")
                                                            .fontWeight(.thin)
                                                            .frame(width: 200, height: 30)
                                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                                            .font(.system(size: 25))
                                                            .background(ColorManager.pmbc_green)
                                                            .cornerRadius(10)
                                                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                                    }
                            
                                 
                            Spacer ()
                                .frame(height: 20)
                            
                            
                            Text("Note")
                                .foregroundColor(.green)
                                .font(.system(size: 30, weight: .regular))
                                .multilineTextAlignment(.center)
                                .shadow(color: .black, radius: 1, x: 0, y: 1)
                            
                            Text("After receiving a push notification from \na friend, tap that friend's planet on homepage, \nthen tap the appropriate button \nfrom the dropdown menu.")
                                .foregroundColor(.white)
                                .font(.system(size: 15, weight: .light))
                                .multilineTextAlignment(.center)
                                .shadow(color: .black, radius: 1, x: 0, y: 1)
                            //                                    .opacity(0.50)
                            
                            Spacer ()
                                .frame(height: 100)
                        }
                    }
                    
            
                    
                    
                    
                    
                    .onTapGesture {
                        withAnimation {
                            self.showItems.toggle()
                        }
                        print("tap function is working")
                    }
                    
                    .animation(Animation.easeInOut(duration: 3.0), value: showItems)
                    
                }
            }
        }
        
        
        struct StartHereCircle: View {
            var color: Color
            var friendName: String
            
            var body: some View {
                
                ZStack {
                    
                    Rectangle()
                        .frame(width: 110, height: 110)
                        .clipShape(Circle())
                        .foregroundColor(color)
                    
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
                        .opacity(0.7)
                    
                    
                    Text(friendName)
                        .fontWeight(.light)
                        .italic()
                        .foregroundColor(.black)
                    
                }
            }
        }
    }
    
    
//}
