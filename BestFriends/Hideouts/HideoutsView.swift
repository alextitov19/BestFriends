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
                    sessionManager.showSmileNotes()
                }) {
                    Image("smilevault")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                }
                
                Spacer()
                
                // Bottom navigation menu
                HStack {
                    Image("home-alt2")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .scaledToFill()
                        .onTapGesture {
                            sessionManager.getCurrentAuthUser()
                        }
                        .padding(10)
                    
                    Image("settings icon")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .scaledToFill()
                        .onTapGesture {
                            sessionManager.showSettings()
                        }
                        .padding(10)
                    
                    Image("horn")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .scaledToFill()
                        .onTapGesture {
                            sessionManager.showBroadcast()
                        }
                        .padding(10)
                }
            }
        }
    }
}
