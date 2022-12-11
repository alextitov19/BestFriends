//
//  Planet.swift
//  BestFriends
//
//  Created by Alex Titov on 3/31/22.
//

import SwiftUI

struct Planet: View {
    
    let user: User
    let atmosphere: Atmosphere
//    let groups: [Group]
    
    var body: some View {
        VStack {
            PlanetView(planet: atmosphere.planet, mood: atmosphere.mood)
                .scaledToFit()
                .frame(width: 50, height: 50)
                .glow(color: glowColor())
                .onAppear(perform: {print("Mood: ", atmosphere.mood)})
            
            
            Text(user.firstName + " " + String(user.lastName.first!))
                .font(.system(size: 14))
                .foregroundColor(.white)
                .fontWeight(.ultraLight)
        }
    }
    
    private func glowColor() -> Color {
        switch atmosphere.mood {
        case 0:
            return ColorManager.pmbc_blue
        case 1:
            return ColorManager.pmbc_blue
        case 2:
            return ColorManager.pmbc_blue
        case 3:
            return ColorManager.pmbc_blue
        case 4:
            return ColorManager.pmbc_green
        case 5:
            return ColorManager.orange3
        case 6:
            return Color.yellow
        case 7:
            return Color.yellow
        case 8:
            return Color.yellow
        case 9:
            return Color.yellow
        default:
            return ColorManager.pmbc_blue
        }
    }
}

struct PlanetView: View {
    let planet: Int
    let mood: Int
    
    var body: some View {
        Image("planet_\(planet)")
            .resizable()
    }
}

struct PlanetActionsView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    
    let groups: [Group]
    
    var body: some View {
        
        VStack {
            
//            Image("arrowLeft")
//                .frame(width: 5, height: 5)
//                .foregroundColor(.white)
            
            Text("< tap")
                .foregroundColor(.white)
                .font(.system(size: 20, weight: .ultraLight))
                .multilineTextAlignment(.leading)
                .shadow(color: .black, radius: 1, x: 0, y: 1)
                .opacity(0.50)
            
            
            NavigationLink(
                destination: StartHere1(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                label: {
                   
                    Image("iconSettings15")
                        .frame(width: 50, height: 20)
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .background(ColorManager.grey4)
                      .cornerRadius(15)
                      .shadow(color: Color(.gray), radius: 1, x: 1, y: 1)
                      .opacity(0.50)
                })
            

                
                
                
            HStack {
                
                
                HStack {
                    
                    
                    VStack {
                        NavigationLink(destination: PhotoPopView(user: user, friends: friends),
                                       label: {
                            ZStack {
                                Circle()
                                    .frame(width: 110, height: 110)
                                    .foregroundColor(ColorManager.purple3)
//                                    .shadow(color: .black, radius: 2, x: 0, y: 2)
//                                    .shadow(color: ColorManager .purple4, radius: 5, x: 5, y: 5)
                                    .opacity(0.60)
                                
                                VStack {

                                    Image("iconPhone80")
//                                        .frame(width: 10, height: 10)
//                                       .resizable()
//                                       .ignoresSafeArea()
//                                        .scaledToFill()
//
//                                    Text("photoPOP")
//                                        .foregroundColor(.white)
//                                        .font(.system(size: 20, weight: .bold))
//                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
//                                        .opacity(0.50)
                        
                                    
                                }
                            }
                            
                        })
                        
                        Spacer()
                            .frame(height: 15)
                        
//                        HugPushNotification(user: user, friends: friends
                        NavigationLink(destination: HugPreload(user: user, friends: friends, groups: groups, atmosphere: atmosphere), label: {
                            ZStack {
                                Circle()
                                    .frame(width: 110, height: 110)
                                    .foregroundColor(ColorManager.purple3)
                                    .shadow(color: .black, radius: 2, x: 0, y: 2)
                                    .opacity(0.60)
                                
                                VStack {
                                    Image("iconHug80 1")
                                  
//                                    Text("hugs")
//                                        .foregroundColor(.white)
//                                        .font(.system(size: 20, weight: .bold))
//                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
//                                        .opacity(0.50)
                                    
                                }
                            }
                            
                            
                        }
                        )}
                    
                    
                    
//                    ************************************************
                    
//                    SendSongPush(user: user, friends: friends),
                    
//                   AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends),
                    
                    VStack {
                        
                        
                        NavigationLink(destination:  AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends),
                                       label: {
                            ZStack {
                                Circle()
                                    .frame(width: 110, height: 110)
                                    .foregroundColor(ColorManager.purple3)
                                    .shadow(color: .black, radius: 2, x: 0, y: 2)
                                    .opacity(0.60)
                                VStack {

                                    Image("iconVibes75")
//                                    Text("set")
//                                        .foregroundColor(.white)
//                                        .font(.system(size: 20, weight: .bold))
//                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
//                                        .opacity(0.50)
//
//                                    Text("my")
//                                        .foregroundColor(.white)
//                                        .font(.system(size: 20, weight: .bold))
//                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
//                                        .opacity(0.50)
                                    
//                                    Text("my vibe")
//                                        .foregroundColor(.white)
//                                        .font(.system(size: 20, weight: .bold))
//                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
//                                        .opacity(0.50)

                                }
                            }
                            
                        })
                        
                    
                        
                        
                        
                        
                        Spacer()
                            .frame(height: 15)
                        
                        
                        //
                        //                    MARK: First setup
                        
                        NavigationLink(destination: INFOPreload(user: user),
                                       label: {
                            ZStack {
                                Circle()
                                    .frame(width: 140, height: 140)
                                    .foregroundColor(ColorManager.purple2)
                                    .shadow(color: .white, radius: 17, x: 0, y: 0)
                                    .shadow(color: .white, radius: 20, x: 0, y: 0)      .glow(color: ColorManager.purple4, radius: 3)
                                    .opacity(0.5)
                                
                                VStack {
                                
                                   

                                    
                                    Text("World")
                                        .foregroundColor(.white)
                                        .font(.system(size: 37, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                        .opacity(0.50)
                                    
                                    Text("FriendGroups")
                                        .foregroundColor(.white)
                                        .font(.system(size: 20, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                        .opacity(0.50)
                                    
                                    Text("LIVE")
                                        .foregroundColor(.green)
//                                        .foregroundColor(ColorManager .pmbc_green)
                                        .font(.system(size: 35, weight: .light))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                        .opacity(0.90)
                                   
                                    Text("8:00-8:10pm EST")
                                        .foregroundColor(.black)
                                        .italic()
                                        .font(.system(size: 13, weight: .light))
//                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                        .opacity(0.90)
                                    
                                    Text("nightly")
                                        .foregroundColor(.black)
                                        .italic()
                                        .font(.system(size: 15, weight: .light))
//                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                        .opacity(0.50)
                                }
                            }
                        })
                        
                        
                        Spacer()
                            .frame(height: 35)
                        
                   
                        
                        NavigationLink(destination: MyRoomInfo(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                       label: {
                            
                            ZStack {
                                Circle()
                             
                                    .frame(width: 110, height: 110)
                                    .foregroundColor(ColorManager.purple3)
                                    .shadow(color: .white, radius: 5, x: 0, y: 0)
                                    .shadow(color: .white, radius: 5, x: 0, y: 0)
                                    .glow(color: ColorManager.purple4, radius: 1)
                                    .opacity(0.5)
                                
                                VStack {
                                    
                                    
                                    Image("iconLock70")
                                    
//                                    Text("my")
//                                        .foregroundColor(.white)
//                                        .font(.system(size: 20, weight: .bold))
//                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
//                                        .opacity(0.50)
                                    
//                                    Text("my room")
//                                        .foregroundColor(.white)
//                                        .font(.system(size: 20, weight: .bold))
//                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
//                                        .opacity(0.50)
//
//                                    Text("MUSIC")
//                                        .foregroundColor(.white)
//                                        .font(.system(size: 20, weight: .bold))
//                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
//                                        .opacity(0.50)
                                  
                           
                                    
                                }
                            }
                        })
                    }
                    
                    
                    VStack {
                        NavigationLink(destination: SaySomethingNice8(user: user, atmosphere: atmosphere, friends: friends),
                                       label: {
                            ZStack {
                                Circle()
                                    .frame(width: 110, height: 110)
                                    .foregroundColor(ColorManager.purple3)
                                    .shadow(color: .black, radius: 2, x: 0, y: 2)
                                    .opacity(0.60)
                                
                                VStack {
                                    Image("iconNice70")
//
                                    
//                                    Text("Say")
//                                        .foregroundColor(.white)
//                                        .font(.system(size: 17, weight: .bold))
//                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
//                                        .opacity(0.50)
//
//                                    Text("Something")
//                                        .foregroundColor(.white)
//                                        .font(.system(size: 17, weight: .bold))
//                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
//                                        .opacity(0.50)
                                  
//                                    Text("nice")
//                                        .foregroundColor(.white)
//                                        .font(.system(size: 20, weight: .bold))
//                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
//                                        .opacity(0.50)
                                    
                                }
                            }
                        })
                        
                        
                        
                        
                        Spacer()
                            .frame(height: 15)
                        
                        
                        //                    NavigationLink(destination: EmptyView(),
                        
                        NavigationLink(destination: BuggingPreload1(user: user, friends: friends, groups: groups),
                                       
                                       
                                       //                                                  NavigationLink(destination: HorizonsPreload1(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres:  friendAtmospheres),
                                       label: {
                            
                            ZStack {
                                Circle()
                                //
                                
                                    .frame(width: 110, height: 110)
                                    .foregroundColor(ColorManager.purple3)
                                    .shadow(color: .black, radius: 2, x: 0, y: 2)
                                    .opacity(0.60)
                                
                                VStack {
                                    
                                        Image("iconFight70")
                                    
                                    
//                                    Text("Friend")
//                                        .foregroundColor(.white)
//                                        .font(.system(size: 17, weight: .bold))
//                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
//                                        .opacity(0.50)
                                   
//                                    Text("drama")
//                                        .foregroundColor(.white)
//                                        .font(.system(size: 20, weight: .bold))
//                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
//                                        .opacity(0.50)
////
//                                    Text("Me")
//
//                                        .foregroundColor(ColorManager .pmbc_blue)
//                                        .font(.system(size: 17, weight: .bold))
//                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
//                                        .opacity(0.50)
                                }
                            }
                        })
                        
                    }
                    
                    
                }
                
            }
            
        }
        
    }
    
}
