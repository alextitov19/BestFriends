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
            
            //            HStack {
            //                Image(systemName: ". . .")
            //                    .resizable()
            //                    .frame(width: 27, height: 27)
            //                    .scaledToFill()
            //                    .foregroundColor(.white)
            //                    .onTapGesture(perform: {
            //                        sessionManager.infoView(user: user, groups: groups)
            //                    })
            
            HStack {
                
                
                HStack {
                    
                    
                    VStack {
                        NavigationLink(destination: PhotoPopView(user: user, friends: friends),
                                       label: {
                            ZStack {
                                Circle()
                                    .frame(width: 110, height: 110)
                                    .foregroundColor(ColorManager.purple3)
                                    .shadow(color: .black, radius: 2, x: 0, y: 2)
                                    .opacity(0.40)
                                
                                VStack {
//
//                                    Text("PhotoPOP")
//                                        .foregroundColor(ColorManager .pmbc_blue)
//                                        .font(.system(size: 17, weight: .bold))
//                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
//                                        .opacity(0.50)
                                    
                                    Text("PhotoPOP")
                                        .foregroundColor(.white)
                                        .font(.system(size: 20, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                        .opacity(0.50)
                                    
                                    
//
//                                    Text("iPhone")
//                                        .foregroundColor(ColorManager .pmbc_blue)
//                                        .font(.system(size: 17, weight: .bold))
//                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
//                                        .opacity(0.70)
                                    
                                }
                            }
                            
                        })
                        
                        Spacer()
                            .frame(height: 15)
                        
                        
                        NavigationLink(destination: HugPreload(user: user, friends: friends, groups: groups, atmosphere: atmosphere), label: {
                            ZStack {
                                Circle()
                                    .frame(width: 110, height: 110)
                                    .foregroundColor(ColorManager.purple3)
                                    .shadow(color: .black, radius: 2, x: 0, y: 2)
                                    .opacity(0.40)
                                
                                VStack {
//                                    Text("Send")
//                                        .foregroundColor(ColorManager .pmbc_blue)
//                                        .font(.system(size: 17, weight: .bold))
//                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
//                                        .opacity(0.50)
//
//                                    Text("Conforting")
//                                        .foregroundColor(ColorManager .pmbc_blue)
//                                        .font(.system(size: 17, weight: .bold))
//                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
//                                        .opacity(0.50)
                                  
                                    Text("HUGS")
                                        .foregroundColor(.white)
                                        .font(.system(size: 20, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                        .opacity(0.50)
                                    
                                }
                            }
                            
                            
                        }
                        )}
                    
                    VStack {
                        
                        
                        NavigationLink(destination: StartHere1(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                       label: {
                            
                            ZStack {
                                Circle()
                                //                                    .frame(width: 110, height: 110)
                                //                                    .foregroundColor(ColorManager.purple2)
                                //                                    .shadow(color: .white, radius: 12, x: 0, y: 0)
                                ////                                    .glow(color: ColorManager.pmbc_green, radius: 3)
                                //                                    .opacity(0.6)
                                
                                    .frame(width: 110, height: 110)
                                    .foregroundColor(ColorManager.purple5)
                                    .shadow(color: .black, radius: 2, x: 0, y: 2)
                                    .opacity(0.40)
                                VStack {
                                    
                                    
                                    Text("Add Friends")
                                        .foregroundColor(.white)
                                        .font(.system(size: 15, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                        .opacity(0.50)
                                    
                                    Text("Settings")
                                        .foregroundColor(.white)
                                        .font(.system(size: 15, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                        .opacity(0.50)
                                    
                                    Text("& more")
                                        .foregroundColor(.white)
                                        .font(.system(size: 15, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                        .opacity(0.50)

//
//
//                                    Text("Free Stickers")
//                                        .foregroundColor(ColorManager .pmbc_blue)
//                                        .font(.system(size: 15, weight: .bold))
//                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
//                                        .opacity(0.50)
//
//                                    Text("About Us")
//                                        .foregroundColor(ColorManager .pmbc_blue)
//                                        .font(.system(size: 15, weight: .bold))
//                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
//                                        .opacity(0.50)
                                    
                                }
                            }
                            
                        })
                        
                        //                }
                        
                        
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
                                    .shadow(color: .white, radius: 20, x: 0, y: 0)
                                
                                    .glow(color: ColorManager.purple4, radius: 3)
                                    .opacity(0.5)
                                
                                VStack {
                                    
                                    //                                    Text("Sunday's 8pm")
                                    //                                        .foregroundColor(.purple)
                                    //                                        .font(.system(size: 15, weight: .bold))
                                    //                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    //                                        .opacity(0.50)
                                    
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
                                   
                                    Text("8:00-8:05pm EST")
                                        .foregroundColor(.black)
                                        .italic()
                                        .font(.system(size: 13, weight: .light))
//                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                        .opacity(0.90)
                                    
                                    
                                }
                            }
                        })
                        
                        
                        Spacer()
                            .frame(height: 15)
                        
                        
                        
                        //                      NavigationLink(destination: Subscriptions(),
                        //                                   label: {
                        //
                        
                        NavigationLink(destination: SendSongPush(user: user, friends: friends),
                                       label: {
                            
                            ZStack {
                                Circle()
                                //                                    .frame(width: 110, height: 110)
                                //                                    .foregroundColor(ColorManager.purple3)
                                //                                    .foregroundColor(.pink)
                                //                                    .shadow(color: .white, radius: 10, x: 0, y: 0)
                                //                                    .glow(color: ColorManager.purple4, radius: 3)
                                //                                    .opacity(0.50)
                                
                                    .frame(width: 110, height: 110)
                                    .foregroundColor(ColorManager.purple3)
                                    .shadow(color: .black, radius: 2, x: 0, y: 2)
                                    .opacity(0.40)
                                
                                VStack {
                                    
                                    Text("Found")
                                        .foregroundColor(ColorManager .pmbc_blue)
                                        .font(.system(size: 17, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                        .opacity(0.50)
                                    
                                    Text("NEW")
                                        .foregroundColor(.white)
                                        .font(.system(size: 20, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                        .opacity(0.50)
                                    
                                    Text("MUSIC")
                                        .foregroundColor(.white)
                                        .font(.system(size: 20, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                        .opacity(0.50)
                                  
                                    
                                    //                                    Text("Making")
                                    //                                        .foregroundColor(.white)
                                    //                                        .font(.system(size: 25, weight: .bold))
                                    //                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    //                                        .opacity(0.50)
                                    //
                                    //                                    Text("Amends")
                                    //                                        .foregroundColor(.white)
                                    //                                        .font(.system(size: 25, weight: .bold))
                                    //                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    //                                        .opacity(0.50)
                                    
                                }
                            }
                        })
                    }
                    
                    
                    VStack {
                        NavigationLink(destination: SaySomethingNice5(user: user, atmosphere: atmosphere, friends: friends),
                                       label: {
                            ZStack {
                                Circle()
                                    .frame(width: 110, height: 110)
                                    .foregroundColor(ColorManager.purple3)
                                    .shadow(color: .black, radius: 2, x: 0, y: 2)
                                    .opacity(0.40)
                                
                                VStack {
                                    
                                    Text("Say")
                                        .foregroundColor(ColorManager .pmbc_blue)
                                        .font(.system(size: 17, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                        .opacity(0.50)
                                   
                                    Text("Something")
                                        .foregroundColor(ColorManager .pmbc_blue)
                                        .font(.system(size: 17, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                        .opacity(0.50)
                                   
                                    Text("NICE")
                                        .foregroundColor(.white)
                                        .font(.system(size: 20, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                        .opacity(0.50)
                                    
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
                                    .opacity(0.40)
                                
                                VStack {
                                    
                                    
                                    Text("Friend")
                                        .foregroundColor(ColorManager .pmbc_blue)
                                        .font(.system(size: 17, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                        .opacity(0.50)
                                   
                                    Text("Drama?")
                                        .foregroundColor(.white)
                                        .font(.system(size: 20, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                        .opacity(0.50)
//
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
