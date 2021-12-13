//
//  HowToAddFriends.swift
//  BestFriends
//
//  Created by Alex Titov on 11/21/21.
//

import SwiftUI

struct HowToAddFriends: View {
    
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
                Text("How do I Add a Friend?")
                    .font(.system(size: 35))
                    .foregroundColor(ColorManager.grey4)
                    .padding()
                
                Image("addFriend")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
//                    .border(ColorManager.purple5, width: 2)

                
                Text("Select [Get my QR code]")
                    .font(.system(size: 22))
                    .foregroundColor(ColorManager.grey4)
                    .padding()
                
                Text("Screen-shot your QR code and text image to your friend.")
                    .font(.system(size: 22))
                    .foregroundColor(ColorManager.grey4)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Text("Ask friend to save QR image to their gallery.")
                    .font(.system(size: 22))
                    .foregroundColor(ColorManager.grey4)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Text("Ask friend to select [My Gallery] and tap the image of your QR code.")
                    .font(.system(size: 22))
                    .foregroundColor(ColorManager.grey4)
                    .multilineTextAlignment(.center)
                    .padding()
            }
        }
    }
}

struct HowToAddFriendsPreview : PreviewProvider {
    static var previews: some View {
        Group {
            HowToAddFriends()
        }
    }
}
