//
//  Planet.swift
//  BestFriends
//
//  Created by Alex Titov on 3/31/22.
//

import SwiftUI

struct Planet: View {
    
    let user: User
    
    var planet: Int
    var mood: Int

    var body: some View {
        PlanetView(planet: planet, mood: mood)
            .scaledToFit()
            .frame(width: 100, height: 100)
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
