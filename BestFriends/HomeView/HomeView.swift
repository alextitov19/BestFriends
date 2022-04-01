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
    
    @State private var planetSize = CGSize(width: 200, height: 200)

    
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
            
            VStack {
                if homeData != nil {
                    PlanetView(planet: homeData?.atmosphere.planet ?? 0, mood: homeData?.atmosphere.mood ?? 0)
                        .scaledToFit()
                        .frame(width: planetSize.width, height: planetSize.height)
                        .onTapGesture(perform: mainPlanetTapped)
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
        withAnimation {
            planetSize = CGSize(width: 400, height: 400)
        }
    }
}
