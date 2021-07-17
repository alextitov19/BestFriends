//
//  Loading.swift
//  BestFriends
//
//  Created by Alex Titov on 7/15/21.
//

import SwiftUI

struct Loading: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    let page: String
    
    var body: some View {
        
        ZStack {
            Image("Firstname")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                    .frame(height: 150)
            
            Text("Loading")
                .font(.system(size: 30, weight: .light))
                .foregroundColor(.white)
                .onAppear {
                    switchPage()
                }
        }
        }
        
    }
    
    private func switchPage() {
        switch page {
        case "settings":
            sessionManager.showSettings()
        case "home":
            sessionManager.getCurrentAuthUser()
        default:
            fatalError("switching to a page that is not an option in Loading.swift")
        }
    }
}
