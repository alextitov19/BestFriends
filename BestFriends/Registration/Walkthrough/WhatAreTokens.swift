//
//  WhatAreTokens.swift
//  BestFriends
//
//  Created by Alex Titov on 11/21/21.
//

import SwiftUI

struct WhatAreTokens: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        ZStack {
            ColorManager.purple2
                .ignoresSafeArea()
            
            ZStack {
                Circle()
                    .frame(width: 400, height: 400)
                    .foregroundColor(ColorManager.purple3)
                    .offset(x: 200, y: -400)
                
                Circle()
                    .frame(width: 300, height: 300)
                    .foregroundColor(ColorManager.purple3)
                    .offset(x: -200, y: -100)
                
                Circle()
                    .frame(width: 200, height: 200)
                    .foregroundColor(ColorManager.purple3)
                    .offset(x: 150, y: 100)
            }
            
            VStack {
                Text("Tokens")
                    .font(.system(size: 40))
                    .foregroundColor(ColorManager.purple7)
                    .padding()
                
                Text("Tokens can be earned for watching and interacting with ads")
                    .font(.system(size: 26))
                    .foregroundColor(ColorManager.grey4)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Text("+1 token per ad watched")
                    .font(.system(size: 26))
                    .foregroundColor(ColorManager.grey4)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Text("+3 tokens for clicking the ad link")
                    .font(.system(size: 26))
                    .foregroundColor(ColorManager.grey4)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Text("You can use tokens to purchase premium stickers in chat")
                    .font(.system(size: 26))
                    .foregroundColor(ColorManager.grey4)
                    .multilineTextAlignment(.center)
                    .padding()
            }
        }
    }
}

struct WhatAreTokensPreview : PreviewProvider {
    static var previews: some View {
        Group {
            WhatAreTokens()
        }
    }
}
