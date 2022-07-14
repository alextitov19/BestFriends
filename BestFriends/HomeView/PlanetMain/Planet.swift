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
                .frame(width: 65, height: 65)
                .glow(color: glowColor())
                .onAppear(perform: {print("Mood: ", atmosphere.mood)})
            
            
            Text(user.firstName + " " + String(user.lastName.first!))
                .foregroundColor(.white)
                .fontWeight(.thin)
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
//            Image(systemName: "info.circle")
//                .resizable()
//                .frame(width: 27, height: 27)
//                .scaledToFill()
//                .foregroundColor(.white)
//                .multilineTextAlignment(.center)
//                .onTapGesture(perform: {
////                            sessionManager.infoView(user: user, group: group)
//                })
            HStack {
                
                
                HStack {
                  
                    
                VStack {
                    NavigationLink(destination: MyRoomPreload(user: user, friends: friends, atmosphere: atmosphere, friendAtmospheres: friendAtmospheres),
                                   label: {
                        ZStack {
                            Circle()
                                .frame(width: 90, height: 90)
                                .foregroundColor(ColorManager.purple3)
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                                .opacity(0.40)
                            
                            VStack {
                                
                                Text("My")
                                    .foregroundColor(.white)
                                    .font(.system(size: 17, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    .opacity(0.50)
                                
                                Text("Room")
                                    .foregroundColor(.white)
                                    .font(.system(size: 17, weight: .bold))
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
                                .frame(width: 80, height: 80)
                                .foregroundColor(ColorManager.orange2)
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                               .opacity(0.15)
                            
                            VStack {
                                Text("Add")
                                    .foregroundColor(.green)
                                    .font(.system(size: 25, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    .opacity(0.50)
                                
                                Text("Friends")
                                    .foregroundColor(.white)
                                    .font(.system(size: 17, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    .opacity(0.50)
                             
                                    
                            }
                        }
                        
                     
                    }
                    )}
                   
                VStack {
//                    NavigationLink(destination: InviteView(), label: {
                       
                    NavigationLink(destination: WhoFighting(user: user, friends: friends, groups: groups),
                                label: {

                        ZStack {
                            Circle()
                                .frame(width: 100, height: 100)
                                .foregroundColor(ColorManager.purple3)
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                                .opacity(0.40)
                            
                            VStack {
//                                Text("(1)")
//                                    .foregroundColor(.white)
//                                    .font(.system(size: 22, weight: .regular))
//                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                Text("DRAMA \nn' \nFIGHTS")
                                     .foregroundColor(.white)
 //                                    .foregroundColor(.white)
                                     .font(.system(size: 15, weight: .bold))
                                     .shadow(color: .black, radius: 1, x: 0, y: 1)
                                     .opacity(0.50)
                                
//                                Text("Add My")
//                                    .foregroundColor(.white)
//                                    .font(.system(size: 25, weight: .bold))
//                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
//
//                                Text("Friends")
//                                    .foregroundColor(.white)
//                                    .font(.system(size: 16, weight: .bold))
//                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                            }
                        }
                    })
                    
                    
                    Spacer()
                        .frame(height: 15)
                    
//                    NavigationLink(destination: InfoViewPlanet(),
//                                   label: {
//
//                    MARK: First setup
                    
                    NavigationLink(destination: InfoViewPlanet(),
                                   label: {
                        ZStack {
                            Circle()
                                .frame(width: 110, height: 110)
                                .foregroundColor(ColorManager.orange2)
                              
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                                .opacity(0.55)
                            
                            VStack {
                                
//                                Text("(1)")
//                                    .foregroundColor(.white)
//                                    .font(.system(size: 22, weight: .regular))
//                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
//
                                Text("Getting")
                                    .foregroundColor(.green)
//                                    .foregroundColor(ColorManager.green)
                                    .font(.system(size: 25, weight: .bold))
//                                    .italic()
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    .opacity(0.50)
                                
                                
                                Text("Started")
                                    .foregroundColor(ColorManager.purple1)
                                .italic()
                                .font(.system(size: 17, weight: .bold))
                                .shadow(color: .black, radius: 1, x: 0, y: 1)
                                .opacity(0.50)
                                
//                                Text("Teens")
//                                .foregroundColor(.white)
//                                .font(.system(size: 16, weight: .bold))
//                                .shadow(color: .black, radius: 1, x: 0, y: 1)
                                
                            }
                        }
                    })
                    
               
                    Spacer()
                        .frame(height: 15)
                    NavigationLink(destination: BuiltByTeens2(),
                                   
                label: {
                        
                        ZStack {
                            Circle()
                                .frame(width: 80, height: 80)
                                .foregroundColor(ColorManager.orange2)
                                .foregroundColor(.pink)
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                                .opacity(0.15)
                            
                            VStack {
                                

                              
                                Text("Built \nby")
                                    .foregroundColor(ColorManager.grey1)
                                     .font(.system(size: 17, weight: .bold))
                                     .shadow(color: .black, radius: 1, x: 0, y: 1)
                                     .opacity(0.50)
                                
                                Text("Teens")
                                    .foregroundColor(ColorManager.grey1)
                                     .font(.system(size: 17, weight: .bold))
                                     .shadow(color: .black, radius: 1, x: 0, y: 1)
                                     .opacity(0.50)
                 
                   
                            }
                        }
                    })
                   
                }
                
                
                
                
                VStack {
                    NavigationLink(destination: AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends),
                                   label: {
                        ZStack {
                            Circle()
                                .frame(width: 100, height: 100)
                                .foregroundColor(ColorManager.purple3)
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                                .opacity(0.40)
                            
                            VStack {
   
                                Text("My")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    .opacity(0.50)
                                
                                Text("Atmosphere")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    .opacity(0.50)
                                
                              
                            }
                        }
                    })
                    
                    
                    Spacer()
                        .frame(height: 15)
                    
                    
                  
                    NavigationLink(destination: SettingsView(user: user),
                                   label: {
                        ZStack {
                            Circle()
                                .frame(width: 90, height: 90)
                                .foregroundColor(ColorManager.orange2)
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                               .opacity(0.15)

                            VStack {


                               Text("Settings")
                                    .foregroundColor(.white)
                                    .font(.system(size: 17, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    .opacity(0.50)
                            }
                        }
                       
                    })
                    
                 

                    
                }
               
                    
            }
           
        }
        
    }
//        Spacer()
//            .frame(height: 50)
}
  
    
    
}
