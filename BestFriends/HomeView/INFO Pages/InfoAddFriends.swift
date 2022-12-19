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

            

                
                Text("-First, ask your friend to download the app \n-Then,tap the [Add & Invite Friends] circle \nEnter your friends email and send 'Invite' \n-You may add up to 5 friends \n-Friend show up as planets on homepage \n-Their 'mood' shows up at the atmosphere around their planet")
                    .font(.system(size: 17))
                    .fontWeight(.thin)
                    .foregroundColor(Color.white)
                    .padding()
                
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




