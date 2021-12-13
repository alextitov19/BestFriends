//
//  WhatAreHideouts.swift
//  BestFriends
//
//  Created by Alex Titov on 11/21/21.
//

import SwiftUI

struct WhatIsHideouts: View {
    
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
                Text("What is Hideouts?")
                    .font(.system(size: 35))
                    .foregroundColor(ColorManager.grey4)
                    .padding()
                
                Image("hideouts")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
//                    .border(ColorManager.purple5, width: 2)

                
                Text("Hideouts is a place where you can revisit happier times on a gloomy day")
                    .font(.system(size: 22))
                    .foregroundColor(ColorManager.grey4)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Text("SmileVault stores your dearest chat messages for you to revisit")
                    .font(.system(size: 22))
                    .foregroundColor(ColorManager.grey4)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Text("Long-tap a message in chat to save it to SmileVault!")
                    .font(.system(size: 22))
                    .foregroundColor(ColorManager.purple7)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Text("PhotoPop displays images of happy memories")
                    .font(.system(size: 22))
                    .foregroundColor(ColorManager.grey4)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Text("You can add images for yourself or your friends to see when they shake their phone!")
                    .font(.system(size: 22))
                    .foregroundColor(ColorManager.purple7)
                    .multilineTextAlignment(.center)
                    .padding()
            }
        }
    }
}

struct WhatIsHideoutsPreview : PreviewProvider {
    static var previews: some View {
        Group {
            WhatIsHideouts()
        }
    }
}
