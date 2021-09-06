//
//  HideoutsView.swift
//  BestFriends
//
//  Created by Alex Titov on 8/24/21.
//

import SwiftUI

struct HideoutsView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    @State var showingMenu = false
    @State private var startPos : CGPoint = .zero
    @State private var isSwipping = true
    @State private var showingPopup = true

    
    var body: some View {
        ZStack {
            Image("HomeBackground4")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            AdPlayerView(name: "backgroundAnimation")
                .ignoresSafeArea()
                .blendMode(.screen)
                .gesture(DragGesture()
                            .onChanged { gesture in
                                if self.isSwipping {
                                    self.startPos = gesture.location
                                    self.isSwipping.toggle()
                                }
                            }
                            .onEnded { gesture in
                                let xDist =  abs(gesture.location.x - self.startPos.x)
                                let yDist =  abs(gesture.location.y - self.startPos.y)
                                if self.startPos.x > gesture.location.x && yDist < xDist {
                                    //Swipe left recognized
                                    print("Swipe left")
                                    withAnimation {
                                        showingMenu.toggle()
                                    }
                                }
                                self.isSwipping.toggle()
                            }
                )
            
            
            if showingMenu {
                HideoutsMenu(showingMenu: $showingMenu)
                    .environmentObject(sessionManager)
                    .animation(.easeInOut(duration: 2.0))
                    .transition(.move(edge: .trailing))
            }
            
        }
    }
}
