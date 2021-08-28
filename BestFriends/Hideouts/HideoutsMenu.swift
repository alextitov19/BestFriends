//
//  HideoutsMenu.swift
//  BestFriends
//
//  Created by Alex Titov on 8/26/21.
//

import SwiftUI

struct HideoutsMenu : View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    @Binding var showingMenu: Bool
    
    var body: some View {
        ZStack {
//            Image("blueBackground")
//                .resizable()
//                .scaledToFill()
//                .ignoresSafeArea()
//
//            AdPlayerView(name: "backgroundAnimation")
//                .ignoresSafeArea()
//                .blendMode(.screen)
            
            VStack {
                Spacer()
                
                Text("Hideouts Gear")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
//                    .padding(.all, 30)
                
                Text("On a day where you feel like lying in bed, curled up in a ball with the covers pulled over your head - we can help you find that smile of yours!")
                    .font(.system(size: 15, weight: .medium))
                    .italic()
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.all, 30)
               
                Button(action: {
                    sessionManager.showShakingCool()
                }) {
                    Image("photopop")
                        .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300)
                }
                
                Spacer().frame(height: 30)
                
                Button(action: {
                    sessionManager.showSmileNotes()
                }) {
                    Image("smilevault")
                        .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300)
                }
                
                Spacer()
                
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
                .padding(.bottom, 10)
            }
        }
    }
}
