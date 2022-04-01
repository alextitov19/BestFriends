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
                    }
                    
                    if planets.count > 1 {
                        Spacer()
                            .frame(width: 80)
                        
                        planets[1]
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
                    }
                    
                    if planets.count > 3 {
                        Spacer()
                            .frame(width: 80)
                        
                        planets[3]
                    }
                }
                
                // Bottom planet
                if planets.count > 4 {
                    planets[4]
                        .padding()
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
            let planet = Planet(user: User(id: "", firstName: "", lastName: "", atmosphere: ""), planet: 1, mood: 1)
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
}
