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
    
    @State private var online = false
    @State private var streak = 0
    @State private var rotatingStreak = false
    
    var body: some View {
        ZStack {
            VStack {
                if online {
                    PlanetView(planet: atmosphere.planet, mood: atmosphere.mood)
                        .scaledToFit()
                        .frame(width: 70, height: 70)
                        .glow(color: glowColor())
                        .onAppear(perform: {print("Mood: ", atmosphere.mood)})
                    
                    
                    Text(user.firstName + " " + String(user.lastName.first!))
                        .font(.system(size: 15))
                        .foregroundColor(.white)
                        .fontWeight(.light)
                } else {
                    PlanetView(planet: atmosphere.planet, mood: atmosphere.mood)
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .onAppear(perform: {print("Mood: ", atmosphere.mood)})
                    
                    
                    Text(user.firstName + " " + String(user.lastName.first!))
                        .font(.system(size: 15))
                        .foregroundColor(.white)
                        .fontWeight(.light)
                }
            }
            .onAppear(perform: loadData)
            
            if (streak > 0) {
                ZStack {
                    Image(systemName: "star.fill")
                        .resizable()
                        .foregroundColor(Color.orange)
                        .frame(width: 24, height: 24)
                        .scaledToFit()
                        .rotationEffect(.degrees(rotatingStreak ? 0 : -360))
                        .animation(Animation.linear(duration: 7.5).repeatForever(autoreverses: false), value: rotatingStreak)
                        .onAppear { rotatingStreak = true}
                    
                    Text(String(streak))
                        .foregroundColor(.black)
                        .font(.system(size: 10, weight: .light))
                }
                .offset(x: 35, y: -42)
            }
        }
    }
    
    private func glowColor() -> Color {
        switch atmosphere.mood {
        case 0:
            return Color .cyan
        case 1:
            return Color .cyan
        case 2:
            return Color .cyan
        case 3:
            return Color .cyan
        case 4:
            return Color .purple
        case 5:
            return Color .green
        case 6:
            return Color .green
        case 7:
            return Color .green
        case 8:
            return Color.yellow
        case 9:
            return Color.yellow
        default:
            return ColorManager.pmbc_blue
        }
    }
    
    private func loadData() {
        RestApi.instance.getUserOnlineStatus(id: user.id).then({ response in
            online = response
        })
        RestApi.instance.getStreakLog(friendID: user.id).then({ response in
            streak = response
        })
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
    
    @State private var showingAlert = false
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    let groups: [Group]
    
    var body: some View {
        
        HStack {
            VStack {
                NavigationLink(destination: BuiltByTeensView(user: user, friends: friends),
                               label: {
                    ZStack {
                        Circle()
                            .frame(width: 110, height: 110)
                            .foregroundColor(ColorManager.purple2)
                            .shadow(color: .white, radius: 3, x: 4, y: 4)
                            .glow(color: ColorManager.purple4, radius: 7)
                            .opacity(0.80)

                        VStack {
                            Text("Cool\nStuff")
                                .foregroundColor(ColorManager .purple3)
                                .font(.system(size: 20, weight: .regular))
                                .shadow(color: .black, radius: 1, x: 0, y: 1)
                                .opacity(0.70)
                        }
                    }
                })
                
                Spacer()
                    .frame(height: 95)

                NavigationLink(destination:  EmptyView(), label: {
                    ZStack {
                        Circle()
                            .frame(width: 110, height: 110)
                            .foregroundColor(ColorManager.purple2)
                            .shadow(color: .white, radius: 3, x: 4, y: -4)
                            .glow(color: ColorManager.purple4, radius: 7)
                            .opacity(0.80)

                        VStack {
                            Text("open \ncircle")
                                .foregroundColor(ColorManager .purple3)
                                .font(.system(size: 20, weight: .regular))
                                .shadow(color: .black, radius: 1, x: 0, y: 1)
                                .opacity(0.70)
                        }
                    }
                })
           }
//
            NavigationLink(destination: MyRoomView(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                           label: {
                ZStack {
                    Circle()
                        .frame(width: 140, height: 140)
                        .foregroundColor(ColorManager.purple2)
                        .shadow(color: .white, radius: 17, x: 0, y: 0)
                        .shadow(color: .white, radius: 20, x: 0, y: 0)
                        .glow(color: ColorManager.purple4, radius: 3)
                        .opacity(0.5)
                    
                    Text("My Room")
                        .foregroundColor(.white)
                        .font(.system(size: 25, weight: .bold))
                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                        .opacity(0.50)
                }
            })
            
            VStack {

                NavigationLink(destination: SaySomethingNice6(user: user, atmosphere: atmosphere, friends: friends, groups: groups, friendAtmospheres: friendAtmospheres),
                               label: {
                    ZStack {
                        Circle()
                            .frame(width: 110, height: 110)
                            .foregroundColor(ColorManager.purple2)
                            .shadow(color: .white, radius: 3, x: -4, y: 4)
                            .glow(color: Color.green, radius: 8)
                            .opacity(0.80)

                        VStack {
                            Text("+ \nFriends")
                                .foregroundColor(ColorManager .purple3)
                                .font(.system(size: 20, weight: .regular))
                                .shadow(color: .black, radius: 1, x: 0, y: 1)
                                .opacity(0.70)
                        }
                    }
                })

                Spacer()
                    .frame(height: 95)
                
                
//                NavigationLink(destination: HugPushNotification2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                
//                NavigationLink(destination: HugPushNotification2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
//                               label: {
//                    ZStack {
//                        Circle()
//                            .frame(width: 110, height: 110)
//                            .foregroundColor(ColorManager.purple2)
//                            .shadow(color: .white, radius: 3, x: -4, y: -4)
//                            .glow(color: ColorManager.purple4, radius: 7)
//                            .opacity(0.80)
//
//                        VStack {
//                            Text("CareHearts")
//                                .foregroundColor(ColorManager .purple3)
//                                .font(.system(size: 20, weight: .regular))
//                                .shadow(color: .black, radius: 1, x: 0, y: 1)
//                                .opacity(0.70)
//
//
//
//                        }
//                    }
//                })
//
                            
                            
                           
                            
                NavigationLink(destination:  Step1_NotReadyTalk(),
                                           label: {
                                ZStack {
                                    Circle()
                                        .frame(width: 110, height: 110)
                                        .foregroundColor(ColorManager.purple2)
                                        .shadow(color: .white, radius: 3, x: -4, y: -4)
                                        .glow(color: ColorManager.purple4, radius: 7)
                                        .opacity(0.80)

                                    VStack {
                                        Text("Breathe Drama")
                                            .foregroundColor(ColorManager .purple3)
                                            .font(.system(size: 20, weight: .regular))
                                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                                            .opacity(0.70)
                            
                            
                            
                            
                        }
                    }
                })
            }
        }
    }
}
