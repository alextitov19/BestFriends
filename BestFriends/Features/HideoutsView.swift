//
//  HideoutsMenu.swift
//  BestFriends
//
//  Created by Alex Titov on 8/26/21.
//

import SwiftUI

struct HideoutsView : View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
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
            
            VStack {
                
                // PhotoPop Button...
                Button(action: {
                    sessionManager.showShakingCool()
                }) {
                    Image("photopop")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                }
                .padding()
                
                // SmileVault Button...
                Button(action: {
                    sessionManager.showSmileVault()
                }) {
                    Image("smilevault")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                }
                
                Spacer()
                
                // Bottom navigation menu
                Button(action: {
                    sessionManager.home()
                }) {
                    Text("Home")
                        .frame(width: 200, height: 50)
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                        .background(ColorManager.purple7)
                        .cornerRadius(20)
                }
                .ignoresSafeArea()
            }
        }
    }
}
