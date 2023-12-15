//
//  RR58.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 10/29/23.
//




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
//                                    .blinking(duration: 7.0)
                                
                                Text("Setup Chat - Demo Video")
                                    .fontWeight(.medium)
                                    .frame(width: 250, height: 40)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 20))
                                    .background(Color.cyan)
                                    .cornerRadius(7)
                                    .rotationEffect(.degrees(-38))
                                    .opacity(0.8)
                                    .shadow(color: ColorManager .purple3, radius: 2, x: 0, y: 3)
//                                    .blinking(duration: 7.0)
                                
                                
                            }
                        })
                }
                
                VStack {
                    
                    Spacer()
                        .frame(height: 220)
                  
    HStack {
                        NavigationLink(
                            destination:  HugPreload(user: user, friends: friends, groups: groups, atmosphere: atmosphere, friendAtmospheres: friendAtmospheres),
                            label: {
                                
                                HStack {
                                    
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
                                   
                            Spacer ()
                                        .frame(width: 20)
                                    
                                    Text("CareHearts")
                                        .fontWeight(.light)
                                        .frame(width: 180, height: 40)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 25))
                                        .background(Color.cyan)
                                        .cornerRadius(15)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                    
                                    
                                }
                            })
                        
        Spacer ()
            .frame(width: 20)
        
                        ZStack {
                            
                            Image(systemName: "circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 45, height: 45)
                                .foregroundColor(ColorManager .purple3)
                                .opacity(0.95)
                            
                            Image(systemName: "heart.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                .foregroundColor(Color.orange)
                                .glow(color: Color.white, radius: 0.3)
                                .shadow(color: .white, radius: 1, x: 3, y: -0.5)
                                .opacity(0.95)
                            
                        }
                        
                    }
                    
                    
                    
                }
                
                
                HStack {
                    Text("  send")
                        .fontWeight(.thin)
                        .italic()
                        .foregroundColor(Color.white)
                    
                    
                    Spacer ()
                        .frame(width: 40)
                    
                    Text("sharing emotions")
                        .fontWeight(.thin)
                        .italic()
                        .foregroundColor(Color.white)
                    
                    
                    Spacer ()
                        .frame(width: 50)
                    
                    Text("accept")
                        .fontWeight(.thin)
                        .italic()
                        .foregroundColor(Color.white)
                    
                    
                }
               
                
                
                
                
                
                Spacer ()
                    .frame(height: 20)
                
                HStack {
                    NavigationLink(
                        destination:  RR32(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                        label: {
                            
                            ZStack {
                                    Text("  Set                Vibe")
                                        .fontWeight(.light)
                                        .frame(width: 220, height: 40)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 25))
                                        .background(Color.cyan)
                                        .cornerRadius(15)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                    Image("iconVibes75")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 55, height: 55)
                                        .foregroundColor(ColorManager .purple4)
                                        .glow(color: ColorManager .grey1, radius: 3)
//                                        .blinking(duration: 2.0)
                                        .opacity(0.8)
                               
                            }
                       
                        }
                    )}
                
                
                
                VStack {
                    Text("your planet's atmosphere color")
                        .fontWeight(.thin)
                        .italic()
                        .foregroundColor(Color.white)
                    
                    Text("on homepage matches your Vibe")
                        .fontWeight(.thin)
                        .italic()
                        .foregroundColor(Color.white)
                    
                    
                }
                
                
            }
            
            
            ZStack {
                
                NavigationLink(
                    destination:  RR59(user: user, friends: friends, groups: groups, atmosphere: atmosphere, friendAtmospheres: friendAtmospheres),
                    label: {
                        VStack {
                          
                            
                            ZStack {
                                    Text("      Off          Planet")
                                        .fontWeight(.light)
                                        .frame(width: 220, height: 40)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 25))
                                        .background(Color.cyan)
                                        .cornerRadius(15)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                    Image("iconRocket 1")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 50, height: 50)
                                        .foregroundColor(ColorManager .purple4)
                                        .glow(color: ColorManager .grey1, radius: 3)
//                                        .blinking(duration: 2.0)
                                        .opacity(0.8)
                               
                            }
                                Text("when your friends arn't around")
                                    .fontWeight(.thin)
                                    .italic()
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                         
                        }
                    }
                )}
            }
        
        
        HStack {
            
            Spacer ()
                .frame(width: 150)
         
            Image("iconNotifications")
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
               .rotationEffect(.degrees(-15))
                .foregroundColor(ColorManager .purple5)
                .glow(color: Color.purple, radius: 2)
                .opacity(0.9)
            
                    VStack {
                        
                        Text("for real-time friendships")
                            .font(.system(size: 17))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.cyan)
                            .rotationEffect(.degrees(-10))
                        
                        Text("Leave Notifications 'ON'")
                            .font(.system(size: 13))
                            .fontWeight(.light)
                            .multilineTextAlignment(.leading)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color.white)
                        
                        
                        Spacer()
                            .frame(height: 45)
                        
                        
                                                    VStack {
                        
                                                        Button(action: {
                                                            sessionManager.showLogin()
                                                        },
                                                               label: {
                                                            Image("home-alt2")
                                                                .frame(width: 60, height: 30)
                                                                .foregroundColor(.black)
                                                                .font(.system(size: 20))
                                                                .background(ColorManager .grey3)
                                                                .cornerRadius(15)
                                                                .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                                                                .opacity(0.70)
                        
                                                        })
                                                    }
                        
                        
                    }
                }
        
        
        
        Spacer()
            .frame(height: 10)
        
            }
        }
