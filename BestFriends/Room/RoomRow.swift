//
//  RoomCell.swift
//  BestFriends
//
//  Created by Alex Titov on 4/25/21.
//

import SwiftUI

struct RoomRow: View {
    
    var body: some View {
            VStack(alignment: .leading) {
                Spacer()
                    .frame(height: 20)
                
                HStack {
                    Text("Room")
                        .font(.title)
                        .foregroundColor(.white)
                }
                
                Spacer()
                    .frame(height: 20)
            }
            .background(Color(#colorLiteral(red: 0.4263355778, green: 0.6973015467, blue: 1, alpha: 1)))
        }
}
