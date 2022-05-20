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
            return ColorManager.pmbc_green
        case 2:
            return ColorManager.pmbc_pink
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
    
    var body: some View {
        
        VStack {
            ////             MARK: need Setting icon. Takes to OurMission page
            //            NavigationLink(destination: OurMission(),
            //                           label: {
            //            Image("Exclamation Mark")
            //                .resizable()
            //                .frame(width: 50, height: 50)
            //                .scaledToFit()
            //                .colorInvert()
            //                .rotationEffect(Angle(degrees: 180))
            ////        }
            //
            //
            HStack {
                VStack {
                    NavigationLink(destination: BestFriendMessages(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres),
                                   label: {
                        ZStack {
                            Circle()
                                .frame(width: 100, height: 100)
                                .foregroundColor(ColorManager.purple3)
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                            VStack {
//                                Text("my")
//                                    .foregroundColor(.white)
//                                    .font(.system(size: 15, weight: .bold))
//                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
//
                                Text("HIDEOUTS")
                                    .foregroundColor(.white)
                                    .font(.system(size: 15, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                Text("time for \nyourself")
                                    .foregroundColor(.white)
                                    .font(.system(size: 13, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                            }
                        }
                    })
                    
                    Spacer()
                        .frame(height: 40)
                    
                    NavigationLink(destination: EmptyView(),
                                   label: {
                        
                        ZStack {
                            Circle()
                                .frame(width: 100, height: 100)
                                .foregroundColor(ColorManager.purple3)
                                .foregroundColor(.pink)
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                            
                            VStack {
                                
                                
                                //                            Text("Support")
                                //                                .foregroundColor(.white)
                                //                                .font(.system(size: 15, weight: .bold))
                                //                                .shadow(color: .black, radius: 1, x: 0, y: 1)
                                //
                                Text("Empty")
                                    .foregroundColor(.white)
                                    .font(.system(size: 15, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                
                                Text("")
                                    .foregroundColor(.white)
                                    .font(.system(size: 15, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                
                            }
                        }
                    }
                    )}
                
                VStack {
                    Button(action: {
                        sessionManager.showInvite()
                    }) {
                        ZStack {
                            Circle()
                                .frame(width: 100, height: 100)
                                .foregroundColor(ColorManager.pmbc_green)
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                            
                            VStack {
                                Text("+")
                                    .foregroundColor(.white)
                                    .font(.system(size: 30, weight: .regular))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                Text("Friends")
                                    .foregroundColor(.white)
                                    .font(.system(size: 17, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                            }
                        }
                    }
                    
                    
                    Spacer()
                        .frame(height: 40)
                    
                    NavigationLink(destination: OurMission(),
                                   label: {
                        ZStack {
                            Circle()
                                .frame(width: 120, height: 120)
                                .foregroundColor(ColorManager.grey1)
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                            
                            VStack {
                                Text("Settings \nmy Planet \nDemo")
                                    .foregroundColor(.white)
                                    .font(.system(size: 13, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                            }
                        }
                    })
                    
                    Spacer()
                        .frame(height: 40)
                    
                    NavigationLink(destination: WhoFighting(),
                                   label: {
                        
                        ZStack {
                            Circle()
                                .frame(width: 100, height: 100)
                                .foregroundColor(ColorManager.pmbc_blue)
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                            
                            VStack {
                                Text("Huge Fight")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                Text("friend group \nparents \nBFF")
                                    .foregroundColor(.white)
                                    .font(.system(size: 12, weight: .bold))
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
                                .foregroundColor(ColorManager.purple2)
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                            VStack {
                                Text("Atmosphere")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                
                                Text("update \nmood")
                                    .foregroundColor(.white)
                                    .font(.system(size: 12, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                            }
                        }
                    })
                    
                    
                    Spacer()
                        .frame(height: 40)
                    
                    
                    NavigationLink(destination: BestFriendMessages(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres),
                                   label: {
                        ZStack {
                            Circle()
                                .frame(width: 100, height: 100)
                                .foregroundColor(ColorManager.purple2)
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                            VStack {
                                
                                
                                Text("Horizons")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                Text("dreams \nwith \nfriends")
                                    .foregroundColor(.white)
                                    .font(.system(size: 12, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                
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
