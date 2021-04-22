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
        VStack {
            Text(name)
                .font(.headline)
                .foregroundColor(.white)
            
//            Spacer()
//                .frame(height: 10)
            
            Image("starBig")
                .resizable()
                .scaledToFill()
                .frame(width: 70, height: 70)
        }
    }
}
