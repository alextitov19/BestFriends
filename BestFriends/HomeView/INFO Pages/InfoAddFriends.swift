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
            
//            VStack {

          
              
                
            VStack {
                Text("Add Friends")
                    .font(.system(size: 35))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple3)

                Text("-Tap the [Add & Invite Friends] circle")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey1)
                     
                     Text("-Add up to 5 friends")
                         .font(.system(size: 15))
                         .fontWeight(.light)
                         .multilineTextAlignment(.center)
                         .foregroundColor(ColorManager.grey1)
                     
                     Text("-Friend show up as planets on homepage")
                         .font(.system(size: 15))
                         .fontWeight(.light)
                         .multilineTextAlignment(.center)
                         .foregroundColor(ColorManager.grey1)
                    


//                Spacer()
//                .frame(height: 15)

                VStack {

               
            }
        }
        
    }
}
}




