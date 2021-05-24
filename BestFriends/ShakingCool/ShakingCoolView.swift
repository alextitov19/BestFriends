//
//  ShakingCoolView.swift
//  BestFriends
//
//  Created by Alex Titov on 5/24/21.
//

import SwiftUI

struct ShakingCoolView: View {
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1))
                .ignoresSafeArea()
            
            VStack {
                // MARK: Header
                HStack {
                    Text("Shaking Cool")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                        .font(.system(size: 40, weight: .heavy))
                }
                
                Spacer()
                
                
            }
            
        }
    }
}

struct ShakingCoolView_Previews : PreviewProvider {
    static var previews: some View {
        ShakingCoolView()
    }
}
