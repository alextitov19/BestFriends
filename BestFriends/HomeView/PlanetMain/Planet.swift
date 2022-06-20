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
           
            HStack {
                VStack {
                    NavigationLink(destination: HideoutsView(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres),
                                   label: {
                        ZStack {
                            Circle()
                                .frame(width: 100, height: 100)
                                .foregroundColor(ColorManager.purple3)
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                                .opacity(0.65)
                            
                            VStack {
                                
                                Text("My")
                                    .foregroundColor(.white)
                                    .font(.system(size: 17, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                Text("Room")
                                    .foregroundColor(.white)
                                    .font(.system(size: 17, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                               
                            }
                        }
                    })
                    
                    Spacer()
                        .frame(height: 40)
                    

                    NavigationLink(destination: WhoFighting(user: user, friends: friends, groups: groups),
                                   label: {
                        
                        ZStack {
                            Circle()
                                .frame(width: 100, height: 100)
                                .foregroundColor(ColorManager.purple3)
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                                .opacity(0.65)
                            
                            VStack {
                               Text("Drama \n n' \nFights")
                                    .foregroundColor(.white)
//                                    .foregroundColor(.white)
                                    .font(.system(size: 17, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    
                            }
                        }
                    }
                    )}
                
                VStack {
                    NavigationLink(destination: InviteView(), label: {
                        ZStack {
                            Circle()
                                .frame(width: 100, height: 100)
                                .foregroundColor(ColorManager.pmbc_green)
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                                .opacity(0.85)
                            
                            VStack {
                                Text("Add")
                                    .foregroundColor(.white)
                                    .font(.system(size: 30, weight: .regular))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                Text("My")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                
                                Text("Friends")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                            }
                        }
                    })
                    
                    
                    Spacer()
                        .frame(height: 40)
                    
                    NavigationLink(destination: SettingsView(user: user),
                                   label: {
                        ZStack {
                            Circle()
                                .frame(width: 120, height: 120)
                                .foregroundColor(ColorManager.orange5)
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                               .opacity(0.65)
                            
                            VStack {
                                Text("My")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                
                                Text("Planet &")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                
                                Text("Settings")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                            }
                        }
                    })
                    
                    Spacer()
                        .frame(height: 40)
                    NavigationLink(destination: BetaTestVideo(),
                                   
                label: {
                        
                        ZStack {
                            Circle()
                                .frame(width: 100, height: 100)
                                .foregroundColor(ColorManager.grey3)
                                .foregroundColor(.pink)
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                                .opacity(0.65)
                            
                            VStack {
                                

                               Text("Test")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                
                                Text("'Horizons'")
                                     .foregroundColor(.white)
                                     .font(.system(size: 17, weight: .bold))
                                     .shadow(color: .black, radius: 1, x: 0, y: 1)
                                
                                Text("Prototype")
                                     .foregroundColor(.white)
                                     .font(.system(size: 15, weight: .bold))
                                     .shadow(color: .black, radius: 1, x: 0, y: 1)
                 
                   
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
                                .opacity(0.65)
                            
                            VStack {
   
                                Text("My")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                Text("Atmosphere")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                
                              
                            }
                        }
                    })
                    
                    
                    Spacer()
                        .frame(height: 40)
                    
                    
                    NavigationLink(destination: BuiltByTeens2(),
                                   label: {
                        ZStack {
                            Circle()
                                .frame(width: 100, height: 100)
                                .foregroundColor(ColorManager.grey3)
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                                .opacity(0.65)
                            
                            VStack {
                                
                                
                                Text("About")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                               
                                Text("BestFriends")
                                .foregroundColor(.white)
                                .font(.system(size: 16, weight: .bold))
                                .shadow(color: .black, radius: 1, x: 0, y: 1)
                             
//                                Text("Teens")
//                                .foregroundColor(.white)
//                                .font(.system(size: 16, weight: .bold))
//                                .shadow(color: .black, radius: 1, x: 0, y: 1)
                                
                            }
                        }
                    })
                    
                }
                
            }
            
        }
        
    }
    
}
//}

//
//
//
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        PlanetActionsView()
// }
//}
