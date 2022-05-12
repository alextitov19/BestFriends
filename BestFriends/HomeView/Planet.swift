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
        HStack {
            VStack {
       
//                NavigationLink needs to be changed to AtmosphereMain. But get error with try it
                
            
                NavigationLink(destination: BestFriendMessages(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres),
                               label: {
                    ZStack {
                        Circle()
                            .frame(width: 100, height: 100)
                            .foregroundColor(ColorManager.pmbc_blue)
                            .shadow(color: .black, radius: 2, x: 0, y: 2)
                        VStack {
                            Text("Protective \nAtmosphere")
                                .foregroundColor(.white)
                                .font(.system(size: 15, weight: .bold))
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


                        Text("Resolving \nFights")
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
                            .foregroundColor(ColorManager.pmbc_blue)
                            .shadow(color: .black, radius: 2, x: 0, y: 2)
                        
                        VStack {
                        Text("+")
                                .foregroundColor(.white)
                            .font(.system(size: 30, weight: .regular))
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                      Text("Trusted\nFriends")
                            .foregroundColor(.white)
                            .font(.system(size: 15, weight: .bold))
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
                            .foregroundColor(ColorManager.pmbc_pink)
                            .shadow(color: .black, radius: 2, x: 0, y: 2)
                       
                        VStack {
                            
                            Text("My Planet, \nSettings, \n & Demo")
                                .foregroundColor(.white)
                                .font(.system(size: 15, weight: .bold))
                                .shadow(color: .black, radius: 1, x: 0, y: 1)
                  }
                          
                    }
                })
                
                Spacer()
                    .frame(height: 40)
                
                Button(action: {
                    sessionManager.showMasterFriendVault()
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 100, height: 100)
                            .foregroundColor(ColorManager.pmbc_green)
                            .shadow(color: .black, radius: 2, x: 0, y: 2)
                    
                    VStack {
                        Text("Photo")
                            .foregroundColor(.white)
                            .font(.system(size: 15, weight: .bold))
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                        
                        Text("POP")
                            .foregroundColor(.white)
                            .font(.system(size: 17, weight: .bold))
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                        }
                    }
                }
                Spacer()
                      .frame(height: 200)
            }
           
            VStack {
                
              
                Button(action: {
                    
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 100, height: 100)
                            .foregroundColor(ColorManager.pmbc_green)
                            .shadow(color: .black, radius: 2, x: 0, y: 2)
                        
                        Text("Shared \nGoals")
                            .foregroundColor(.white)
                            .font(.system(size: 15, weight: .bold))
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                    }
                }
                
                Spacer()
                    .frame(height: 40)
                
                NavigationLink(destination: BestFriendMessages(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres),
                               label: {
                    ZStack {
                        Circle()
                            .frame(width: 100, height: 100)
                            .foregroundColor(ColorManager.pmbc_blue)
                            .shadow(color: .black, radius: 2, x: 0, y: 2)
                        VStack {
                            Text("Special \nMessages")
                                .foregroundColor(.white)
                                .font(.system(size: 15, weight: .bold))
                                .shadow(color: .black, radius: 1, x: 0, y: 1)
                        }
                    }
                })
              Spacer()
                   .frame(height: 200)
            }
          
        }
        
    }
   
}




//
//
//
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        PlanetActionsView()
// }
//}
