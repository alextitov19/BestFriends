//
//  LoginView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/16/21.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    @State private var homeData: HomeData?
    
    var body: some View {
        ZStack {
            // Background Image...
            Image("blueBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            // Stars animation...
            AdPlayerView(name: "backgroundAnimation")
                .ignoresSafeArea()
                .blendMode(.screen)
            
        }
    }
    
    private func getHomeData() {
        RestApi.instance.getHomeData().then{ data in
            print("Got HomeData: ", data)
            homeData = data
        }.catch { err in
            print("Got error")
            print(err)
        }
    }
}
