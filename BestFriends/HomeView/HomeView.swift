//
//  LoginView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/16/21.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    @State private var homeData: HomeData?
    
    @State private var planets: [Planet] = []
        
    @State private var focusPlanet = false
    
    @State private var newGroupMembers: [String] = []

    var body: some View {
        ZStack {
            // Background Image...
            Image("blueBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .onAppear {
                    getHomeData()
                }
            
            // Stars animation...
            AdPlayerView(name: "backgroundAnimation")
                .ignoresSafeArea()
                .blendMode(.screen)
                .onTapGesture(perform: backgroundTapped)
            
            VStack {
                // Top 2 planets
                HStack {
                    if planets.count > 0 {
                        planets[0]
                            .onTapGesture(perform: { friendPlanetTapped(id: planets[0].user.id)})
                    }
                    
                    if planets.count > 1 {
                        Spacer()
                            .frame(width: 80)
                        
                        planets[1]
                            .onTapGesture(perform: { friendPlanetTapped(id: planets[1].user.id)})
                    }
                }
                // Main planet
                if homeData != nil {
                    ZStack {
                        // Main planet
                        if !focusPlanet {
                            PlanetView(planet: homeData?.atmosphere.planet ?? 0, mood: homeData?.atmosphere.mood ?? 0)
                                .scaledToFit()
                                .frame(width: 200, height: 200)
                                .onTapGesture(perform: mainPlanetTapped)
                                .glow(color: glowColor(), radius: 20)
                                .padding()
                        }
                        
                        // Tapped on the main planet
                        if focusPlanet {
                            PlanetActionsView()
                        }
                        
                        
                    }
                }
                // Middle 2 planets
                HStack {
                    if planets.count > 2 {
                        planets[2]
                            .onTapGesture(perform: { friendPlanetTapped(id: planets[2].user.id)})
                    }
                    
                    if planets.count > 3 {
                        Spacer()
                            .frame(width: 80)
                        
                        planets[3]
                            .onTapGesture(perform: { friendPlanetTapped(id: planets[3].user.id)})
                    }
                }
                
                // Bottom planet
                if planets.count > 4 {
                    planets[4]
                        .onTapGesture(perform: { friendPlanetTapped(id: planets[4].user.id)})
                        .padding()
                }
                
                if newGroupMembers.count > 0 {
                    Button(action: {
                        createGroup()
                    }, label: {
                        Text("Create Group")
                    })
                }
            }
        }
    }
    
    private func getHomeData() {
        RestApi.instance.getHomeData().then{ data in
            print("Got HomeData: ", data)
            homeData = data
            createPlanets()
        }.catch { err in
            print("Got error")
            print(err)
        }
    }
    
    // Create plantes and populate the planets array
    private func createPlanets() {
        let friends: [User] = homeData?.friends ?? []
        let atmosperes: [Atmosphere] = homeData?.friendAtmospheres ?? []
        
        // TODO: Remove the loop below, only for demo purposes
        for _ in 1...5 {
            let planet = Planet(user: User(id: "test123@gmail.com", firstName: "Test", lastName: "User", atmosphere: ""), planet: 1, mood: 1)
            
            planets.append(planet)
        }
        
        for friend in friends {
            for atmosphere in atmosperes {
                if friend.atmosphere == atmosphere.id {
                    // Found the friend - atmosphere pair
                    let planet = Planet(user: friend, planet: atmosphere.planet, mood: atmosphere.mood)
                    planets.append(planet)
                }
            }
        }
    }
    
    // Preform when main planet is tapped
    private func mainPlanetTapped() {
        if !focusPlanet {
            withAnimation {
                focusPlanet = true
            }
        }
    }
    
    // Preform when background (stars) is tapped
    private func backgroundTapped() {
        if focusPlanet {
            withAnimation {
                focusPlanet = false
            }
        }
    }
    
    // Get glow color for main planet
    private func glowColor() -> Color {
        switch homeData?.atmosphere.mood ?? 0 {
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
    
    private func friendPlanetTapped(id: String) {
        // Add/remove friend to group memebrs
        if newGroupMembers.contains(id) {
            newGroupMembers.remove(at: newGroupMembers.firstIndex(of: id) ?? 0)
        } else {
            newGroupMembers.append(id)
        }
        print(newGroupMembers.count)
    }
    
    private func createGroup() {
        // Append self to group, create group
        if newGroupMembers.count > 0 {
            newGroupMembers.append(homeData!.user.id)
            RestApi.instance.createGroup(members: newGroupMembers).then {response in
                print("Create Group response: ", response)
            }
        }
    }
}
