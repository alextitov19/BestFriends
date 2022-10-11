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
                    NavigationLink(destination: BuiltForTeens(user: user, atmosphere: atmosphere, friends: friends, groups: groups, friendAtmospheres: friendAtmospheres),
                                   label: {
                        ZStack {
                            Circle()
                                .frame(width: 110, height: 110)
                                .foregroundColor(ColorManager.purple3)
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                                .opacity(0.40)
                            
                            VStack {
                                
                                Text("Designed")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .bold))
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
                               
//                                Text("for")
//                                    .foregroundColor(.white)
//                                    .font(.system(size: 14, weight: .bold))
//                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
//                                    .opacity(0.50)
//
//
//                                Text("Teens")
//                                    .foregroundColor(.green)
//                                    .font(.system(size: 24, weight: .bold))
//                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
//                                    .opacity(0.50)
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
                                Text("Add &")
                                    .foregroundColor(.green)
                                    .font(.system(size: 23, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    .opacity(0.70)
                                
                                Text("Accept")
                                    .foregroundColor(.green)
                                    .font(.system(size: 23, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    .opacity(0.70)
                                
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
                                
                                
                                Text("Making")
                                     .foregroundColor(.white)
                                     .font(.system(size: 20, weight: .bold))
                                     .shadow(color: .black, radius: 1, x: 0, y: 1)
                                     .opacity(0.50)
                                
                                Text("Amends")
                                     .foregroundColor(.white)
                                     .font(.system(size: 20, weight: .bold))
                                     .shadow(color: .black, radius: 1, x: 0, y: 1)
                                     .opacity(0.50)
                              
                         }
                        }
                    })
                    
                    
                    Spacer()
                        .frame(height: 15)
                    

//
//                    MARK: First setup
                    
                    NavigationLink(destination: WorldPreload(user: user, atmosphere: atmosphere, friends: friends, groups: groups, friendAtmospheres: friendAtmospheres),
                                   label: {
                        ZStack {
                            Circle()
                                .frame(width: 110, height: 110)
                                .foregroundColor(ColorManager.purple2)
                                .shadow(color: .white, radius: 17, x: 0, y: 0)
                                .glow(color: ColorManager.purple4, radius: 3)
                                .opacity(0.5)

                            VStack {


                                Text("World")
                                    .foregroundColor(.white)
                                    .font(.system(size: 27, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    .opacity(0.50)
                                
                                Text("FriendGroups")
                                    .foregroundColor(.white)
                                    .font(.system(size: 15, weight: .bold))
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
                          
                    NavigationLink(destination: InfoViewPlanet1(user: user, friends: friends, atmosphere: atmosphere),
                                         label: {
                          
                          ZStack {
                              Circle()
                                  .frame(width: 110, height: 110)
                                  .foregroundColor(ColorManager.grey1)
                                  .shadow(color: .white, radius: 12, x: 0, y: 0)
                                  .glow(color: ColorManager.pmbc_green, radius: 3)
                                 .opacity(0.6)

                              VStack {
                                  
                                  Text("START")
                                      .foregroundColor(.green)
                                      .font(.system(size: 24, weight: .bold))
                                      .shadow(color: .black, radius: 1, x: 0, y: 1)
                                      .opacity(0.70)

                                  Text("HERE!")
                                      .foregroundColor(.green)
                                      .font(.system(size: 20, weight: .bold))
                                      .shadow(color: .black, radius: 1, x: 0, y: 1)
                                      .opacity(0.70)
                                  
                                  Text("& Settings")
                                      .foregroundColor(.black)
                                      .font(.system(size: 16, weight: .regular))
                                      .shadow(color: .black, radius: 1, x: 0, y: 1)
                                      .opacity(0.70)
  
                              }
                          }
                         
                      })
         
                }
                
             
                VStack {
                    NavigationLink(destination: AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends),
                                   label: {
                        ZStack {
                            Circle()
                                .frame(width: 110, height: 110)
                                .foregroundColor(ColorManager.purple3)
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                                .opacity(0.40)
                            
                            VStack {
   
                                Text("Share")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    .opacity(0.50)
                                
                                Text("Mood")
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
               
                    NavigationLink(destination: DreamVaultView(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres:  friendAtmospheres, groups: groups),
                                                  
                                                  
//                                                  NavigationLink(destination: HorizonsPreload1(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres:  friendAtmospheres),
                label: {
                        
                        ZStack {
                            Circle()
                                .frame(width: 110, height: 110)
                                .foregroundColor(ColorManager.purple3)
                                .foregroundColor(.pink)
                                .shadow(color: .black, radius: 2, x: 0, y: 2)
                                .opacity(0.50)
                            
                            VStack {
                                

                              
//                                Text("")
//                                    .foregroundColor(ColorManager.grey1)
//                                     .font(.system(size: 14, weight: .bold))
//                                     .shadow(color: .black, radius: 1, x: 0, y: 1)
//                                     .opacity(0.50)
                                
                                Text("Dream")
                                    .foregroundColor(ColorManager.grey1)
                                     .font(.system(size: 20, weight: .bold))
                                     .shadow(color: .black, radius: 1, x: 0, y: 1)
                                     .opacity(0.50)
                              
                                Text("Galaxy")
                                    .foregroundColor(ColorManager.grey1)
                                     .font(.system(size: 20, weight: .bold))
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
