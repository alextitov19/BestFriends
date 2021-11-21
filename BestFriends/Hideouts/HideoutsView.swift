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
//    @State private var isAtMaxScale = false
    
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
            
            
            Text("These points of light are others everywhere turning on a tiny light in a dark room on a difficult day - you're not alone.")
                .font(.system(size: 16, weight: .medium))
                
//                .scaleEffect(isAtMaxScale ? 0.3 : 1.1)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.all, 100)
            
            
//            Image("addFriend")
//                .resizable()
//                .frame(width: 135, height: 135)
//                .scaledToFill()
//                .scaleEffect(isAtMaxScale ? 0.3 : 1.1)
//                .padding(10)
//                .onAppear {
//                    if USS.user.friends.count < 1 {
//                        withAnimation(self.animation, {
//                            self.isAtMaxScale.toggle()

            
            
            
            if showingMenu {
                HideoutsMenu(showingMenu: $showingMenu)
                    .environmentObject(sessionManager)
                    .animation(.easeInOut(duration: 2.0))
                    .transition(.move(edge: .trailing))
            }
            
        }
    }
}
