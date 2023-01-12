//
//  INFOMainHowWorks.swift
//  BestFriends
//
//  Created by Social Tech on 12/20/22.
//


import Foundation

import SwiftUI


struct INFOMainHowWorks: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    
    var body: some View {
        ZStack {
            
            
            ColorManager.purple1
                .ignoresSafeArea()
                .onAppear()
            
            
            VStack {
  
                
//                Text("Everyone sharing their 'in-the-moment'")
//
//                    .font(.system(size: 17))
//                    .fontWeight(.regular)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(ColorManager.purple3)
                
                
                Text("Sharing Emotional Adventures")
                    .font(.system(size: 22))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple5)
                
                Text("with 5 BFFs")
                    .font(.system(size: 20))
                    .italic()
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple5)
                
        VStack {
                    
                    
                    Spacer()
                        .frame(height: 20)
                    
                    
                    Text("Walk-though")
                        .font(.system(size: 27, weight: .bold))
                        .foregroundColor(ColorManager .grey1)
                        .shadow(color: .purple, radius: 1, x: 0, y: 1)
                        .opacity(0.50)
                        .multilineTextAlignment(.center)
                    
                    
                    
            
            
            
            
            
            
            
                    Spacer()
                        .frame(height: 10)
                    
            VStack {
                
                HStack {
                    ZStack {
                        Image(systemName: "rectangle.fill")
                            .resizable()
                            .foregroundColor(ColorManager .purple2)
                            .frame(width: 40, height: 40)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        //                                .shadow(color: .purple, radius: 65, x: 30, y: 50)
                            .opacity(0.95)
                        
                        Image("IconPhotoNew40")
                    }
                    NavigationLink(
                        destination: InfoAddFriends(user: user),
                        label: {
                            Text("PhotoPOP")
                                .fontWeight(.thin)
                                .frame(width: 200, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 25))
                                .background(ColorManager.purple3)
                                .cornerRadius(10)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            
                        })
                }
            }
            
            VStack {
                        
                        Spacer()
                            .frame(height: 15)
                        
                        
                        HStack {
                            ZStack {
                                Image(systemName: "rectangle.fill")
                                    .resizable()
                                    .foregroundColor(ColorManager .purple2)
                                    .frame(width: 40, height: 40)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                //                                .shadow(color: .purple, radius: 65, x: 30, y: 50)
                                    .opacity(0.95)
                                
                                Image("iconVibeMoon")
                            }
                            
                            NavigationLink(
                                destination: InfoCreateChatRm(user: user),
                                label: {
                                    Text("Vibe")
                                        .fontWeight(.thin)
                                        .frame(width: 200, height: 40)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 25))
                                        .background(ColorManager.purple3)
                                        .cornerRadius(10)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                })
                        }
                        
                        
                        Spacer()
                            .frame(height: 15)
                        
                        HStack {
                            ZStack {
                                Image(systemName: "rectangle.fill")
                                    .resizable()
                                    .foregroundColor(ColorManager .purple2)
                                    .frame(width: 40, height: 40)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                //                                .shadow(color: .purple, radius: 65, x: 30, y: 50)
                                    .opacity(0.95)
                                
                                Image("IconHugNew40")
                            }
                            
                            
                            NavigationLink(
                                destination: InfoInsideChat(user: user),
                                label: {
                                    Text("HUG")
                                        .fontWeight(.thin)
                                        .frame(width: 200, height: 40)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 25))
                                        .background(ColorManager.purple3)
                                        .cornerRadius(10)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                })
                        }
                        
                        Spacer()
                            .frame(height: 15)
                
                        HStack {
                            ZStack {
                                Image(systemName: "rectangle.fill")
                                    .resizable()
                                    .foregroundColor(ColorManager .purple2)
                                    .frame(width: 40, height: 40)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                //                                .shadow(color: .purple, radius: 65, x: 30, y: 50)
                                    .opacity(0.95)
                                
                                Image("IconNiceNew40")
                            }
                            
                            NavigationLink(
                                destination: InfoPushNotifications(user: user),
                                label: {
                                    Text("Nice")
                                        .fontWeight(.thin)
                                        .frame(width: 200, height: 40)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 25))
                                        .background(ColorManager.purple3)
                                        .cornerRadius(10)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                    
                                })
                        }
                        
                        Spacer()
                            .frame(height: 15)
                        
                        
                        HStack {
                            ZStack {
                                Image(systemName: "rectangle.fill")
                                    .resizable()
                                    .foregroundColor(ColorManager .purple2)
                                    .frame(width: 40, height: 40)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                                    .shadow(color: .purple, radius: 65, x: 30, y: 50)
                                    .opacity(0.95)
                                
                                Image("IconFightNew40")
                            }
                            
                            
                            NavigationLink(
                                
                                destination: SettingsNotificationsView(user: user),
                                label: {
                                    Text("Drama Central")
                                        .fontWeight(.thin)
                                        .foregroundColor(Color.white)
                                        .frame(width: 200, height: 40)
                                        .font(.system(size: 25))
                                        .background(ColorManager.purple3)
                                        .cornerRadius(10)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                }
                            )}
                        //
                        Spacer()
                            .frame(height: 15)

                        
                        HStack {
                           ZStack {
                            Image(systemName: "rectangle.fill")
                                .resizable()
                                .foregroundColor(ColorManager .purple2)
                                .frame(width: 40, height: 40)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            
                                .shadow(color: .purple, radius: 65, x: 30, y: 50)
                                .opacity(0.95)
                            
                            Image("iconSilence")
                        }
                            
                            
                            NavigationLink(
                                
                                destination: InfoSilence(user: user),
                                label: {
                                    Text("My Silence")
                                        .fontWeight(.thin)
                                        .foregroundColor(Color.white)
                                        .frame(width: 200, height: 40)
                                        .font(.system(size: 25))
                                        .background(ColorManager.purple3)
                                        .cornerRadius(10)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                }
                            )}
                        //
                    }
                    
                    VStack {
                        
                        Spacer()
                            .frame(height: 70)
                        
//                        Text("Emotionally closer, happier, resilient")
//                            .font(.system(size: 19))
//                            .fontWeight(.regular)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(ColorManager.purple5)
//
//
//                        Text("Friendships")
//
//                            .font(.system(size: 22))
//                            .fontWeight(.regular)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(ColorManager.purple5)
                        
                        NavigationLink(
                            
                            destination: InviteView(user: user),
                            label: {
                                Text("Invite (up to) 5 Friends")
                                    .fontWeight(.light)
                                    .foregroundColor(Color.white)
                                    .frame(width: 300, height: 30)
                                    .font(.system(size: 25))
                                    .background(ColorManager.pmbc_green)
                                    .cornerRadius(7)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                            }
                        )}
                    
                    VStack {
                        

                        Spacer()
                            .frame(height: 25)
                        
                        NavigationLink(
                            
                            destination: PlanetBell(user: user),
                            label: {
                                Text("How Push Notifications Work")
                                    .fontWeight(.thin)
                                    .foregroundColor(Color.white)
                                    .frame(width: 310, height: 30)
                                    .font(.system(size: 25))
                                    .background(ColorManager.pmbc_green)
                                    .cornerRadius(7)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                            }
                        )}
                    
                    
                    Spacer()
                        .frame(height: 80)
                  
                }
            }
            
        }
    }
}
    


//
//import Foundation
//import SwiftUI
//import AVKit
//
//struct HugPreload: View {
//
//    let user: User
//    let friends: [User]
//    let groups: [Group]
//    let atmosphere: Atmosphere
//
//    @State private var showItems: Bool = false
//    @State private var offset: CGFloat = 200.0
//
//
//    var body: some View {
//
//        ZStack {
//            //
//            //            ColorManager.purple1
//            //                .ignoresSafeArea()
//            //                .onAppear()
//
//
//
//            Image("purpleBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
//                .opacity(0.5)
//
//
//
//            AdPlayerView(name: "AloneBeach")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//
//
//            ZStack{
//
//                NavigationLink(destination: HugPushNotification(user: user, friends: friends), label: {
//                    HugCircle (color: ColorManager.purple1, friendName: "send \nHUG")
//                })
//                .offset(x: showItems ? 120 : 0, y: showItems ? -270: 0)
//                .shadow(color: ColorManager .purple2, radius: 10, x: 10, y: 10)
//
//
//
//
//                    NavigationLink(destination: HugPushNotification2(user: user, friends: friends), label: {
//                        HugCircle (color: ColorManager .grey1, friendName: "get a \n HUG")
//                    })
//                    .offset(x: showItems ? 30 : 0, y: showItems ? -170: 0)
//                    .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
//
//
//
//
//                NavigationLink(destination: EmptyView(), label: {
//                    HugCircle (color: ColorManager .grey1, friendName: "")
//                })
//                .offset(x: showItems ? 0 : 0, y: showItems ? 0: 0)
//                .shadow(color: ColorManager .grey1, radius: 10, x: 10, y: 10)
//
//
//
//
//
//
//                    Image(systemName: "circle.fill")
//                        .resizable()
//                        .foregroundColor(ColorManager .purple1)
//                        .frame(width: 250, height: 200)
//                    //                    .blur(radius: 2)
//                        .shadow(color: ColorManager .purple3, radius: 65, x: 30, y: 50) .opacity(0.99)
//                        .opacity(0.70)
//
//
//                    VStack {
//
//                        Spacer ()
//                            .frame(height: 10)
//
//                        Text("Do you")
//                            .font(.system(size: 25))
//
//                            .foregroundColor(ColorManager .grey2)
//                            .fontWeight(.thin)
//                            .multilineTextAlignment(.center)
//                        //                            .shadow(color: .black, radius: 1, x: 0, y: 1)
//
//                        Text("or a Friend")
//                            .font(.system(size: 25))
//
//                            .foregroundColor(ColorManager .grey2)
//                            .fontWeight(.thin)
//                            .multilineTextAlignment(.center)
//
//                        Text("need a")
//                            .font(.system(size: 25))
//
//                            .foregroundColor(ColorManager .grey2)
//                            .fontWeight(.thin)
//                            .multilineTextAlignment(.center)
////                                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
//
//                        Text("HUG?")
//                            .font(.system(size: 45))
//
//                            .foregroundColor(ColorManager .grey3)
//                            .fontWeight(.thin)
//                            .multilineTextAlignment(.center)
////                                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
//
//
//
//
//                    }
//                }
//
//
//
//                .onTapGesture {
//                    withAnimation {
//                        self.showItems.toggle()
//                    }
//                    print("tap function is working")
//                }
//
//                .animation(Animation.easeInOut(duration: 1.7), value: showItems)
//
//            }
//        }
//    }
//
//
//    struct HugCircle: View {
//        var color: Color
//        var friendName: String
//
//        var body: some View {
//
//            ZStack {
//
//                Image(systemName: "heart.fill")
//                            .resizable()
//                            .foregroundColor(color)
////                            .foregroundColor(ColorManager .purple2)
//                            .frame(width: 130, height: 100)
//                            .shadow(color: ColorManager .grey2, radius: 10, x: 10, y: 10)
//
//                Text(friendName)
//                    .fontWeight(.light)
//                    .italic()
//                    .foregroundColor(.black)
//
//            }
//        }
//    }
//
//
//
