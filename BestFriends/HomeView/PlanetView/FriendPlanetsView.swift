//
//  FriendPlanetsView.swift
//  BestFriends
//
//  Created by Alex Titov on 6/12/23.
//

import SwiftUI

struct FriendPlanetsView: View {
    
    @Binding var planets: [Planet]
    @Binding var selectedPlanets: [String]
    @Binding var inviteClicked: Bool
    
    @State private var movingPlanets = false
    @State private var movingInvitePlanet = false

    var body: some View {
        ZStack {
            if planets.count == 1 {
                ZStack {
                    planets[0]
                        .rotationEffect(.degrees(movingPlanets ? 0 : 360))
                        .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                        .onTapGesture {
                            friendPlanetTapped(id: planets[0].user.id)
                        }
                }
                .offset(y: 125)
                .rotationEffect(.degrees(movingPlanets ? 0 : -360))
                .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                .onAppear { movingPlanets = true}
                
                ZStack {
                    InvitePlanet(inviteClicked: $inviteClicked)
                        .rotationEffect(.degrees(movingPlanets ? 0 : 360))
                        .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                }
                .offset(y: -125)
                .rotationEffect(.degrees(movingPlanets ? 0 : -360))
                .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                .onAppear { movingPlanets = true}
                
            } else if planets.count == 2 {
                ZStack {
                    planets[0]
                        .rotationEffect(.degrees(movingPlanets ? 0 : 360))
                        .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                        .onTapGesture {
                            friendPlanetTapped(id: planets[0].user.id)
                        }
                }
                .offset(y: 125)
                .rotationEffect(.degrees(movingPlanets ? 0 : -360))
                .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                .onAppear { movingPlanets = true}
                
                ZStack {
                    planets[1]
                        .rotationEffect(.degrees(movingPlanets ? 0 : 360))
                        .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                        .onTapGesture {
                            friendPlanetTapped(id: planets[1].user.id)
                        }
                }
                .offset(x: 108.25, y: -62.5)
                .rotationEffect(.degrees(movingPlanets ? 0 : -360))
                .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                .onAppear { movingPlanets = true}
                
                ZStack {
                    InvitePlanet(inviteClicked: $inviteClicked)
                        .rotationEffect(.degrees(movingPlanets ? 0 : 360))
                        .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                }
                .offset(x: -108.25, y: -62.5)
                .rotationEffect(.degrees(movingPlanets ? 0 : -360))
                .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                .onAppear { movingPlanets = true}
            } else if planets.count == 3 {
                ZStack {
                    planets[0]
                        .rotationEffect(.degrees(movingPlanets ? 0 : 360))
                        .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                        .onTapGesture {
                            friendPlanetTapped(id: planets[0].user.id)
                        }
                }
                .offset(x: -88.39, y: 88.39)
                .rotationEffect(.degrees(movingPlanets ? 0 : -360))
                .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                .onAppear { movingPlanets = true}
                
                ZStack {
                    planets[1]
                        .rotationEffect(.degrees(movingPlanets ? 0 : 360))
                        .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                        .onTapGesture {
                            friendPlanetTapped(id: planets[1].user.id)
                        }
                }
                .offset(x: 88.39, y: 88.39)
                .rotationEffect(.degrees(movingPlanets ? 0 : -360))
                .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                .onAppear { movingPlanets = true}
                
                ZStack {
                    planets[2]
                        .rotationEffect(.degrees(movingPlanets ? 0 : 360))
                        .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                        .onTapGesture {
                            friendPlanetTapped(id: planets[2].user.id)
                        }
                }
                .offset(x: 88.39, y: -88.39)
                .rotationEffect(.degrees(movingPlanets ? 0 : -360))
                .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                .onAppear { movingPlanets = true}
                
                ZStack {
                    InvitePlanet(inviteClicked: $inviteClicked)
                        .rotationEffect(.degrees(movingPlanets ? 0 : 360))
                        .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                }
                .offset(x: -88.39, y: -88.39)
                .rotationEffect(.degrees(movingPlanets ? 0 : -360))
                .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                .onAppear { movingPlanets = true}
                
            } else if planets.count == 4 {
                ZStack {
                    planets[0]
                        .rotationEffect(.degrees(movingPlanets ? 0 : 360))
                        .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                        .onTapGesture {
                            friendPlanetTapped(id: planets[0].user.id)
                        }
                }
                .offset(y: 125)
                .rotationEffect(.degrees(movingPlanets ? 0 : -360))
                .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                .onAppear { movingPlanets = true}
                
                ZStack {
                    planets[1]
                        .rotationEffect(.degrees(movingPlanets ? 0 : 360))
                        .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                        .onTapGesture {
                            friendPlanetTapped(id: planets[1].user.id)
                        }
                }
                .offset(x: 118.88, y: 38.63)
                .rotationEffect(.degrees(movingPlanets ? 0 : -360))
                .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                .onAppear { movingPlanets = true}
                
                ZStack {
                    planets[2]
                        .rotationEffect(.degrees(movingPlanets ? 0 : 360))
                        .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                        .onTapGesture {
                            friendPlanetTapped(id: planets[2].user.id)
                        }
                }
                .offset(x: 73.47, y: -101.13)
                .rotationEffect(.degrees(movingPlanets ? 0 : -360))
                .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                .onAppear { movingPlanets = true}
                
                ZStack {
                    planets[3]
                        .rotationEffect(.degrees(movingPlanets ? 0 : 360))
                        .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                        .onTapGesture {
                            friendPlanetTapped(id: planets[3].user.id)
                        }
                }
                .offset(x: -73.47, y: -101.13)
                .rotationEffect(.degrees(movingPlanets ? 0 : -360))
                .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                .onAppear { movingPlanets = true}
                
                ZStack {
                    InvitePlanet(inviteClicked: $inviteClicked)
                        .rotationEffect(.degrees(movingPlanets ? 0 : 360))
                        .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                }
                .offset(x: -118.88, y: 38.63)
                .rotationEffect(.degrees(movingPlanets ? 0 : -360))
                .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                .onAppear { movingPlanets = true}
            } else if planets.count == 5 {
                ZStack {
                    planets[0]
                        .rotationEffect(.degrees(movingPlanets ? 0 : 360))
                        .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                        .onTapGesture {
                            friendPlanetTapped(id: planets[0].user.id)
                        }
                }
                .offset(y: 125)
                .rotationEffect(.degrees(movingPlanets ? 0 : -360))
                .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                .onAppear { movingPlanets = true}
                
                ZStack {
                    planets[1]
                        .rotationEffect(.degrees(movingPlanets ? 0 : 360))
                        .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                        .onTapGesture {
                            friendPlanetTapped(id: planets[1].user.id)
                        }
                }
                .offset(x: 118.88, y: 38.63)
                .rotationEffect(.degrees(movingPlanets ? 0 : -360))
                .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                .onAppear { movingPlanets = true}
                
                ZStack {
                    planets[2]
                        .rotationEffect(.degrees(movingPlanets ? 0 : 360))
                        .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                        .onTapGesture {
                            friendPlanetTapped(id: planets[2].user.id)
                        }
                }
                .offset(x: 73.47, y: -101.13)
                .rotationEffect(.degrees(movingPlanets ? 0 : -360))
                .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                .onAppear { movingPlanets = true}
                
                ZStack {
                    planets[3]
                        .rotationEffect(.degrees(movingPlanets ? 0 : 360))
                        .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                        .onTapGesture {
                            friendPlanetTapped(id: planets[3].user.id)
                        }
                }
                .offset(x: -73.47, y: -101.13)
                .rotationEffect(.degrees(movingPlanets ? 0 : -360))
                .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                .onAppear { movingPlanets = true}
                
                ZStack {
                    planets[4]
                        .rotationEffect(.degrees(movingPlanets ? 0 : 360))
                        .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                        .onTapGesture {
                            friendPlanetTapped(id: planets[4].user.id)
                        }
                }
                .offset(x: -118.88, y: 38.63)
                .rotationEffect(.degrees(movingPlanets ? 0 : -360))
                .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingPlanets)
                .onAppear { movingPlanets = true}
            } else {
                ZStack {
                    InvitePlanet(inviteClicked: $inviteClicked)
                        .rotationEffect(.degrees(movingInvitePlanet ? 0 : 360))
                        .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingInvitePlanet)
                }
                .offset(y: -125)
                .rotationEffect(.degrees(movingInvitePlanet ? 0 : -360))
                .animation(Animation.linear(duration: 15).repeatForever(autoreverses: false), value: movingInvitePlanet)
                .onAppear { movingInvitePlanet = true }
            }
        }
    }
    
    private func friendPlanetTapped(id: String) {
        if selectedPlanets.contains(id) {
            selectedPlanets.remove(at: selectedPlanets.firstIndex(of: id) ?? 0)
        } else {
            selectedPlanets.append(id)
        }
    }
    
    private struct InvitePlanet: View {
        
        @Binding var inviteClicked: Bool
        
        var body: some View {
            VStack {
                ZStack {
                                  
                    
//                    Image("planet_0")
//                        .resizable()
//                        .scaledToFit()
//                        .opacity(0.9)
//                        .frame(width: 50, height: 50)

                  
                    Image(systemName: "circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 45, height: 45)
                        .foregroundColor(Color .green)
                        .glow(color: ColorManager.purple4, radius: 2)
                        .blinking(duration: 2.0)
                    
                    
                    Image(systemName: "plus")
                        .resizable()
                    
                        .foregroundColor(.white)
                        .frame(width: 25, height: 25)
                    
                        .scaledToFit()
                        .blinking(duration: 2.0)
                }
                
                Text("invite")
                    .font(.system(size: 15, weight: .regular))
                    .foregroundColor(.white)
                Text("friends")
                    .font(.system(size: 13, weight: .regular))
                    .foregroundColor(.white)
                
            }
            .onTapGesture {
                inviteClicked = true
            }
            
        }
    }
}
