//
//  SmileNotesLibrary.swift
//  BestFriends
//
//  Created by Robert Roe on 5/13/21.
//

import Foundation
import SwiftUI

struct SmileNotesView: View {
    
    @State var offset: CGSize = .zero
    
    @State var showHome = false

    var body: some View {
        
        ZStack {
            Color(.green)
                .overlay(
                    VStack(alignment: .leading, spacing: 10, content: {
                        Text("Text 1")
                        
                        Text("Not text 1 at all")
                    })
                    .foregroundColor(.white)
                    .padding(.horizontal, 30)
                    .offset(x: -25)
                )
                .clipShape(LiquidSwipe(offset: offset))
                .ignoresSafeArea()
                .overlay(
                    Image(systemName: "chevron.left")
                        .font(.largeTitle)
                        .frame(width: 50, height: 50)
                        .contentShape(Rectangle())
                        .gesture(DragGesture().onChanged({ (value) in
                            withAnimation(.interactiveSpring(response: 0.7, dampingFraction: 0.6, blendDuration: 0.6)) {
                                offset = value.translation
                            }
                        }).onEnded({ (value) in
                            let screen = UIScreen.main.bounds
                            
                            withAnimation(.spring()) {
                                if -offset.width > screen.width / 2 {
                                    offset.width = -screen.height
                                    showHome.toggle()
                                }
                                else {
                                    offset = .zero
                                }
                            }
                        }))
                        .opacity(offset == .zero ? 1 : 0),
                    alignment: .topTrailing
                )
                .padding()
            
            if showHome {
                ZStack {
                    Color(.red)
                    
                    Text("Welcome to Home!")
                        .font(.title)
                        .foregroundColor(.white)
                        .onTapGesture {
                            withAnimation(.spring()) {
                                offset = .zero
                                showHome.toggle()
                            }
                        }
                }
            }
            
            
        }
        
    }
}

struct SmileNotesView_Previews : PreviewProvider {
    static var previews: some View {
        SmileNotesView()
    }
}
