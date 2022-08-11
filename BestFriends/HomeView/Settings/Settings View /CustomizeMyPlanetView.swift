//
//  CustomizeMyPlanetView.swift
//  BestFriends
//
//  Created by Alex Titov on 8/11/22.
//

import SwiftUI

struct CustomizeMyPlanetView: View {
    
    let user: User
    let atmosphere: Atmosphere
    
    @State private var selectedPlanet = 0
    
    var body: some View {
        ZStack {
            ColorManager.purple2
                .ignoresSafeArea()
            
            VStack {
                Text("Customize my planets")
                
                HStack {
                    PlanetCard(planetName: "Earth", planetNumber: 0, atmosphere: atmosphere, selectedPlanet: $selectedPlanet)
                        .padding(5)
                    
                    PlanetCard(planetName: "Neptune", planetNumber: 1, atmosphere: atmosphere, selectedPlanet: $selectedPlanet)
                        .padding(5)
                }
                .padding(.horizontal, 10)
                
                HStack {
                    PlanetCard(planetName: "Mercury", planetNumber: 2, atmosphere: atmosphere, selectedPlanet: $selectedPlanet)
                        .padding(5)
                    
                    PlanetCard(planetName: "Saturn", planetNumber: 3, atmosphere: atmosphere, selectedPlanet: $selectedPlanet)
                        .padding(5)
                }
                .padding(.horizontal, 10)
                
                HStack {
                    PlanetCard(planetName: "Mars", planetNumber: 4, atmosphere: atmosphere, selectedPlanet: $selectedPlanet)
                        .padding(5)
                    
                    PlanetCard(planetName: "Jupiter", planetNumber: 5, atmosphere: atmosphere, selectedPlanet: $selectedPlanet)
                        .padding(5)
                }
                .padding(.horizontal, 10)
            }
        }
    }
    
    private func loadData() {
        selectedPlanet = atmosphere.planet
    }
    
    private struct PlanetCard: View {
        let planetName: String
        let planetNumber: Int
        let atmosphere: Atmosphere
        
        @Binding var selectedPlanet: Int
        
        var body: some View {
            ZStack {
                ColorManager.purple4
                
                VStack {
                    Text(planetName)
                        .font(.system(size: 20))
                    
                    Image("planet_\(planetNumber)")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    
                    if planetNumber == selectedPlanet {
                        Text("Selected")
                            .foregroundColor(.green)
                            .font(.system(size: 20))
                        
                    } else {
                        Button(action: {
                            update()
                        }, label: {
                            ZStack {
                                ColorManager.purple7
                                
                                Text("Select")
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                            }
                            .frame(width: 100, height: 40)
                            .cornerRadius(20)
                        })
                    }
                    
                    
                }
            }
            .frame(height: 220)
            .cornerRadius(15)
        }
        
        private func update() {
            let atm = Atmosphere(id: atmosphere.id, planet: planetNumber, mood: atmosphere.mood, moodLogs: atmosphere.moodLogs)
            RestApi.instance.updateAtmosphere(atmosphere: atm).then({ result in
                print("Update result", result)
                if result == 200 {
                    selectedPlanet = planetNumber
                }
            })
        }
    }
    
}

