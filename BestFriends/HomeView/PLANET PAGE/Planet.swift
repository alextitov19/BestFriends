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
           
       
            
            HStack {
                

                HStack {
                  
                    
                VStack {
                    NavigationLink(destination: ShaylaPage(),
                                   label: {
                        ZStack {
                            Circle()
                                .frame(width: 110, height: 110)
                                .foregroundColor(ColorManager.purple3)
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                                .opacity(0.40)
                            
                            VStack {
                                
                                Text("Envisioned")
                                    .foregroundColor(.white)
                                    .font(.system(size: 17, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    .opacity(0.50)
      
                                Text("by")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    .opacity(0.50)
                                
                                
                                Text("Teens")
                                    .foregroundColor(.white)
                                    .font(.system(size: 24, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    .opacity(0.50)
                               

                            }
                        }
                        
                    })
                    
                    Spacer()
                        .frame(height: 15)
                    

                    NavigationLink(destination: InviteView(user: user), label: {
                        ZStack {
                            Circle()
                                .frame(width: 110, height: 110)
                                .foregroundColor(ColorManager.purple3)
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                               .opacity(0.40)
                            
                            VStack {
                                Text("Add")
                                    .foregroundColor(.green)
                                    .font(.system(size: 23, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    .opacity(0.70)
                                
//                                Text("Accept")
//                                    .foregroundColor(.green)
//                                    .font(.system(size: 23, weight: .bold))
//                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
//                                    .opacity(0.70)
                                
                                Text("5 Friends")
                                    .foregroundColor(.white)
                                    .font(.system(size: 17, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    .opacity(0.50)
                           
                                    
                            }
                        }
                        
                     
                    }
                    )}
                   
                    VStack {
                        
                       
                        NavigationLink(destination: INFOPreload(user: user),
                                       label: {
                            
                            ZStack {
                                Circle()
                                    .frame(width: 110, height: 110)
                                    .foregroundColor(ColorManager.purple2)
                                    .shadow(color: .white, radius: 12, x: 0, y: 0)
//                                    .glow(color: ColorManager.pmbc_green, radius: 3)
                                    .opacity(0.6)
                                
                                VStack {
                                    
                                    Text("new user?")
                                        .foregroundColor(.black)
                                        .font(.system(size: 16, weight: .regular))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                        .opacity(0.70)
                                    
                                    Text("START")
                                        .foregroundColor(.green)
                                        .font(.system(size: 26, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                        .opacity(0.70)
                                    
                                    Text("HERE!")
                                        .foregroundColor(.green)
                                        .font(.system(size: 24, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                        .opacity(0.70)
                                    
                                   
                                    
                                }
                            }
                            
                        })
                        
                        //                }
                        
                        
                        Spacer()
                            .frame(height: 15)
                        
                        
                        //
                        //                    MARK: First setup
                        
                        NavigationLink(destination: WorldPreload2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                       label: {
                            ZStack {
                                Circle()
                                    .frame(width: 140, height: 140)
                                    .foregroundColor(ColorManager.purple2)
                                    .shadow(color: .white, radius: 17, x: 0, y: 0)
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
                                        .foregroundColor(ColorManager .purple2)
                                        .font(.system(size: 35, weight: .light))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                        .opacity(0.50)
                                    
                                }
                            }
                        })
                        
                        
                        Spacer()
                            .frame(height: 15)
                        
                        
                        
                        //                      NavigationLink(destination: Subscriptions(),
                        //                                   label: {
                        //
                        
                        NavigationLink(destination: EmptyView(),
                                       label: {
                            
                            ZStack {
                                Circle()
                                    .frame(width: 110, height: 110)
                                    .foregroundColor(ColorManager.purple3)
                                    .shadow(color: .black, radius: 2, x: 0, y: 2)
                                    .opacity(0.40)
                                
                                VStack {
                                    
                                    
                                    Text("Dream")
                                        .foregroundColor(.white)
                                        .font(.system(size: 20, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                        .opacity(0.50)
                                    
                                    Text("Galaxy")
                                        .foregroundColor(.white)
                                        .font(.system(size: 20, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                        .opacity(0.50)
                                    
                                    Text("coming 2023")
                                        .foregroundColor(.white)
                                        .font(.system(size: 12, weight: .bold))
                                        .italic()
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                        .opacity(0.50)
                                    
                                }
                            }
                        })
                    }
                    
      
                VStack {
                    NavigationLink(destination: SettingsView(user: user, friends: friends, atmosphere: atmosphere),
                                   label: {
                        ZStack {
                            Circle()
                                .frame(width: 110, height: 110)
                                .foregroundColor(ColorManager.purple3)
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                                .opacity(0.40)
                            
                            VStack {
   
                                Text("Settings")
                                    .foregroundColor(.black)
                                    .font(.system(size: 15, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    .opacity(0.50)
                                
//                                Text("Mood")
//                                    .foregroundColor(.white)
//                                    .font(.system(size: 20, weight: .bold))
//                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
//                                    .opacity(0.50)
                                
                       
                                
                            }
                        }
                    })
                    
                    
                    
                    
                    Spacer()
                        .frame(height: 15)
                    
                    
//                    NavigationLink(destination: EmptyView(),
               
                    NavigationLink(destination: MyRoomInfo(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres:  friendAtmospheres, groups: groups),
                                                  
                                                  
//                                                  NavigationLink(destination: HorizonsPreload1(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres:  friendAtmospheres),
                label: {
                        
                        ZStack {
                            Circle()
                                .frame(width: 110, height: 110)
                                .foregroundColor(ColorManager.purple2)
                                .foregroundColor(.pink)
                                .shadow(color: .white, radius: 10, x: 0, y: 0)
                                .glow(color: ColorManager.purple4, radius: 3)
                                .opacity(0.50)
                            
                            
//                                .frame(width: 140, height: 140)
//                                .foregroundColor(ColorManager.purple2)
//                                .shadow(color: .white, radius: 17, x: 0, y: 0)
//                                .glow(color: ColorManager.purple4, radius: 3)
//                                .opacity(0.5)
                            
                            
                            
                            VStack {
                                

                              
//                                Text("")
//                                    .foregroundColor(ColorManager.grey1)
//                                     .font(.system(size: 14, weight: .bold))
//                                     .shadow(color: .black, radius: 1, x: 0, y: 1)
//                                     .opacity(0.50)
                                
                                Text("My")
                                    .foregroundColor(ColorManager.grey1)
                                     .font(.system(size: 27, weight: .bold))
                                     .shadow(color: .black, radius: 1, x: 0, y: 1)
                                     .opacity(0.50)
                              
                                Text("Room")
                                    .foregroundColor(ColorManager.grey1)
                                     .font(.system(size: 25, weight: .bold))
                                     .shadow(color: .black, radius: 1, x: 0, y: 1)
                                     .opacity(0.50)
                                
//                                Text("coming 2023")
//                                    .foregroundColor(.white)
//                                    .font(.system(size: 12, weight: .bold))
//                                    .italic()
//                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
//                                    .opacity(0.50)
                                
                                
                            }
                        }
                    })
             
                }
                
                    
            }
              
        }

        }

    }
      
}
