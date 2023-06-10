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
                    .font(.system(size: 30, weight: .light))
                    .foregroundColor(ColorManager.purple5)
                
                Button(action: {
                    
                }, label: {
                    addButtonBody()
                })
                .padding()
                
            }
        }
    }
    
    private struct addButtonBody: View {
        var body: some View {
            ZStack {
                ColorManager.purple3
                
                Image(systemName: "plus")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(ColorManager.purple5)
                    .opacity(0.3)
            }
            .frame(width: 200, height: 50)
            .cornerRadius(15)
            .opacity(0.7)
        }
    }
    
}
