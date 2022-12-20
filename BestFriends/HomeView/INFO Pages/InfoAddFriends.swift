//
//  InfoAddFriends.swift
//  BestFriends
//
//  Created by Social Tech on 10/25/22.
//


import Foundation
import SwiftUI


struct InfoAddFriends: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
//    let user: User
//    let atmosphere: Atmosphere
    
    var body: some View {
        ZStack {
            
//            Image("purpleBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
//
//            AdPlayerView(name: "FieldFlowers")
//                .ignoresSafeArea()
            
            ColorManager.grey4
                .ignoresSafeArea()
                .onAppear()
            

            VStack {
                Text("Add Friends")
                    .font(.system(size: 35))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple3)

            

                
                Text("-Ask your friend to download app \n-Tap [ADD 5 Friends] circle \n-Enter friends email, send 'Invite' \n-Friend appears as planet on homepage \n-Friends 'Vibe' shows as atmosphere \n     around planet")
                    .font(.system(size: 17))
                    .fontWeight(.thin)
                    .foregroundColor(Color.white)
                    .padding(20)
                
                                Spacer()
                                .frame(height: 35)
                
                Text("Why only 5 friends")
                    .font(.system(size: 30))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple3)
              

                VStack {
                    Text("After speaking with almost 1,000 teens worldwide the majority only wanted to add between 2 to 5 friends, forming fewer, deeper connections.")
                        .font(.system(size: 15))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.grey1)
                        .padding(30)
               
            }
        }
        
    }
}
}




