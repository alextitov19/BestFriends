//
//  Loading.swift
//  BestFriends
//
//  Created by Alex Titov on 7/15/21.
//

import SwiftUI

struct Loading: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        
        ZStack {
            Image("smileNotesCircles")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            Text("Loading")
                .font(.system(size: 30, weight: .light))
                .foregroundColor(.white)
                .onAppear {
                    sessionManager.showSettings()
                }
        }
        
        
    }
}
