//
//  LoginView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/16/21.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var sessionManager: SessionManager

    var body: some View {
        NavigationView {
            ZStack {
                ColorManager.purple1
                    .ignoresSafeArea()
                
                Circle()
                    .frame(width: 400, height: 400)
                    .foregroundColor(ColorManager.purple3)
                    .offset(x: 200, y: -400)
                
                Circle()
                    .frame(width: 300, height: 300)
                    .foregroundColor(ColorManager.purple3)
                    .offset(x: -200, y: 400)
                
                VStack {
                    Text("Welcome Home")
                        .font(.custom("MainFont", size: 40).bold())
                        .foregroundColor(ColorManager.grey3)
                        .padding(30)
                    
                    
                }
            }
        }
    }
}
