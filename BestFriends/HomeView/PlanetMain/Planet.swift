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
                                .frame(width: 110, height: 110)
                                .foregroundColor(ColorManager.purple3)
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                                .opacity(0.40)
                            
                            VStack {
                                
                                Text("Safe Space")
                                    .foregroundColor(.white)
                                    .font(.system(size: 12, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    .opacity(0.50)
                                
//                                Text("with 5 Closest")
//                                    .foregroundColor(.white)
//                                    .font(.system(size: 12, weight: .bold))
//                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
//                                    .opacity(0.50)
                                
                                Text("on")
                                    .foregroundColor(.white)
                                    .font(.system(size: 12, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    .opacity(0.50)
                                
                                Text("Bad Days ")
                                    .foregroundColor(.white)
                                    .font(.system(size: 12, weight: .bold))
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
                       
                    NavigationLink(destination: FightsInfo(user: user, friends: friends, groups: groups),
                                label: {

                        ZStack {
                            Circle()
                                .frame(width: 110, height: 110)
                                .foregroundColor(ColorManager.purple3)
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                                .opacity(0.40)
                            
                            VStack {
                                
                                
                                Text("Overcome")
                                     .foregroundColor(.white)
                                     .font(.system(size: 12, weight: .bold))
                                     .shadow(color: .black, radius: 1, x: 0, y: 1)
                                     .opacity(0.50)
                                
                                Text("FIGHTS")
                                     .foregroundColor(.white)
                                     .font(.system(size: 12, weight: .bold))
                                     .shadow(color: .black, radius: 1, x: 0, y: 1)
                                     .opacity(0.50)
                              
                                Text("Fix")
                                     .foregroundColor(.white)
                                     .font(.system(size: 12, weight: .bold))
                                     .shadow(color: .black, radius: 1, x: 0, y: 1)
                                     .opacity(0.50)
                               
                                Text("Friendships")
                                     .foregroundColor(.white)
                                     .font(.system(size: 12, weight: .bold))
                                     .shadow(color: .black, radius: 1, x: 0, y: 1)
                                     .opacity(0.50)
                                

                            }
                        }
                    })
                    
                    
                    Spacer()
                        .frame(height: 15)
                    

//
//                    MARK: First setup
                    
                    NavigationLink(destination: InfoViewPlanet(user: user),
                                   label: {
                        ZStack {
                            Circle()
                                .frame(width: 100, height: 100)
                                .foregroundColor(ColorManager.grey1)

                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                                .opacity(0.6)
//
                            VStack {
                                

                                Text("Start")
                                    .foregroundColor(.green)
                                    .font(.system(size: 25, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    .opacity(0.70)
                                
                                Text("Here")
                                    .foregroundColor(.green)
                                    .font(.system(size: 25, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    .opacity(0.70)
                              
                                Text("& Settings")
                                    .foregroundColor(.black)
                                    .font(.system(size: 12, weight: .light))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    .opacity(0.70)
                                
                            }
                        }
                    })
                    
               
                    Spacer()
                        .frame(height: 15)
                    
                    
                    
                      NavigationLink(destination: IntuitiveView(),
                                     label: {
                          ZStack {
                              Circle()
                                  .frame(width: 90, height: 90)
                                  .foregroundColor(ColorManager.grey1)
                                  .shadow(color: .black, radius: 2, x: 0, y: 2)
                                 .opacity(0.6)

                              VStack {
                                  
                                  Text("Go")
                                       .foregroundColor(.green)
                                       .font(.system(size: 23, weight: .bold))
                                       .shadow(color: .black, radius: 1, x: 0, y: 1)
                                       .opacity(0.50)

                                 Text("PURPLE")
                                      .foregroundColor(.purple)
                                      .font(.system(size: 17, weight: .bold))
                                      .shadow(color: .black, radius: 1, x: 0, y: 1)
                                      .opacity(0.50)
                                  
//                                  Text("Parents")
//                                       .foregroundColor(.white)
//                                       .font(.system(size: 17, weight: .bold))
//                                       .shadow(color: .black, radius: 1, x: 0, y: 1)
//                                       .opacity(0.50)
                                  
                                  
                              }
                          }
                         
                      })
         
                }
                
             
                VStack {
                    NavigationLink(destination: AtmosphereInfo(user: user, atmosphere: atmosphere, friends: friends),
                                   label: {
                        ZStack {
                            Circle()
                                .frame(width: 110, height: 110)
                                .foregroundColor(ColorManager.purple3)
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                                .opacity(0.40)
                            
                            VStack {
   
                                Text("Share Mood")
                                    .foregroundColor(.white)
                                    .font(.system(size: 12, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    .opacity(0.50)
                                
                                Text("with")
                                    .foregroundColor(.white)
                                    .font(.system(size: 12, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    .opacity(0.50)
                                
                                
                                Text("Suportive")
                                    .foregroundColor(.white)
                                    .font(.system(size: 12, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    .opacity(0.50)
                                
                                Text("Friends")
                                    .foregroundColor(.white)
                                    .font(.system(size: 12, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    .opacity(0.50)
                                
                            }
                        }
                    })
                    
                    
                    
                    
                    Spacer()
                        .frame(height: 15)
                    
                    NavigationLink(destination: HorizonHomeView(user: user, friends: friends, atmosphere: atmosphere),
                                   
                label: {
                        
                        ZStack {
                            Circle()
                                .frame(width: 110, height: 110)
                                .foregroundColor(ColorManager.purple3)
                                .foregroundColor(.pink)
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                                .opacity(0.50)
                            
                            VStack {
                                

                              
                                Text("Building")
                                    .foregroundColor(ColorManager.grey1)
                                     .font(.system(size: 12, weight: .bold))
                                     .shadow(color: .black, radius: 1, x: 0, y: 1)
                                     .opacity(0.50)
                                
                                Text("DREAMS")
                                    .foregroundColor(ColorManager.grey1)
                                     .font(.system(size: 12, weight: .bold))
                                     .shadow(color: .black, radius: 1, x: 0, y: 1)
                                     .opacity(0.50)
                              
                                Text("Together")
                                    .foregroundColor(ColorManager.grey1)
                                     .font(.system(size: 12, weight: .bold))
                                     .shadow(color: .black, radius: 1, x: 0, y: 1)
                                     .opacity(0.50)
                   
                            }
                        }
                    })
             
                }
               
                    
            }
           
        }
        
    }

}
  
    
    
}
