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
    
    @State private var movingPlanets = false
    
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
                .onAppear { movingPlanets.toggle()}
                
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
}
