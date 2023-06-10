//
//  JournalView.swift
//  BestFriends
//
//  Created by Alex Titov on 6/9/23.
//

import SwiftUI

struct JournalView: View {
    let user: User
    
    @State private var journals: [Journal] = []
    
    var body: some View {
        ZStack {
            ColorManager.purple7
                .opacity(0.3)
                .ignoresSafeArea()
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            VStack {
                Text("My Journal")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(ColorManager.purple5)
            }
        }
    }
    
}
