//
//  Star.swift
//  BestFriends
//
//  Created by Alex Titov on 4/21/21.
//

import SwiftUI

struct Star: Hashable {
    let id: String
    let name: String
    
    var body: some View {
        Image("starBig")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
    }
}
