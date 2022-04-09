//
//  ChangeChatPinView.swift
//  BestFriends
//
//  Created by Social Tech on 4/8/22.
//


import Foundation

import SwiftUI

struct ChangeChatPinView
: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                .ignoresSafeArea()
            VStack {
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image("arrowRight")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .scaledToFit()
                            .colorInvert()
                            .rotationEffect(Angle(degrees: 180))
                    }
                    
                    Spacer()
                    
                    Text("My Account")
                        .font(.system(size: 30))
                        .offset(x: -25)
                    
                    Spacer()
                }
           
            }
        }
    }
}
