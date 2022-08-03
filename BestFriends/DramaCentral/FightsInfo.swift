//
//  FightsInfo.swift
//  BestFriends
//
//  Created by Social Tech on 7/28/22.
//


import Foundation
import SwiftUI

struct FightsInfo: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    let groups: [Group]

    var body: some View {
       
        VStack {
    
            
            ZStack {
               
                ColorManager.grey4
                    .ignoresSafeArea()
                    .onAppear()
    //
    //            Image("girlwalking")
    ////                .frame(width: 300, height: 20)
    //                .resizable()
    //                .scaledToFill()
    //                .ignoresSafeArea()
    //
    //                      Spacer()
    //                          .frame(height: 0)
    //
        
           
            
        VStack {
            
//            NavigationLink(destination: FightsDVid(user: user, friends: friends, groups: groups), label: {
//                Text("Demo Video")
//                    .fontWeight(.thin)
//                    .frame(width: 200, height: 40)
//                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                    .font(.system(size: 30))
//                    .background(ColorManager.pmbc_blue)
//                    .cornerRadius(15)
//                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//            })
            
            Text("Welcome to ")
                .font(.system(size: 30))
                .fontWeight(.thin)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.blue)
         
            Text("Drama Central")
                .font(.system(size: 35))
                .fontWeight(.thin)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.blue)
            
         
            VStack {
           
//                Spacer()
//                .frame(height: 40)
//
//                Text("We Help With")
//                    .font(.system(size: 25))
//                    .fontWeight(.thin)
//                    .multilineTextAlignment(.center)
//                   .foregroundColor(Color.purple)
//
//                Text("Huge Fight with BFF")
//                    .font(.system(size: 15))
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(ColorManager.grey1)
//
//
//
//                VStack {
//
//                    Text("FriendGroup Drama")
//                        .font(.system(size: 15))
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager.grey1)
//
//                    Text("Adult Fights")
//                        .font(.system(size: 15))
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager.grey1)
//
//
//                    Text("Parents Fighting")
//                        .font(.system(size: 15))
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager.grey1)
//
//                    Text("Fight with Parents")
//                        .font(.system(size: 15))
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager.grey1)
//
//                    Text("Just Messed Up Big Time")
//                        .font(.system(size: 15))
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager.grey1)
//
//
//                    Text("BestFamily")
//                        .font(.system(size: 15))
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager.grey1)
//
//
//                Text("Updated Atmosphere instantly shows")
//                        .font(.system(size: 15))
//                        .italic()
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//                   .foregroundColor(Color.white)
//
//                    Text("on friend's homepage")
//                        .font(.system(size: 15))
//                        .italic()
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//                       .foregroundColor(Color.white)
//
//                Text("with corresponding color scheme")
//                    .font(.system(size: 15))
//                    .italic()
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//                   .foregroundColor(Color.white)
//
                    VStack {
            
                        
                        Spacer()
                        .frame(height: 100)

                        Text("We get you back to")
                            .font(.system(size: 25))
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.blue)
                        
                        Text("Being Friends")
                            .font(.system(size: 40))
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.blue)

              
            }
            
      
        VStack {
  
                Spacer()
                    .frame(height: 35)
            

            
            NavigationLink(
                destination: WhoFighting(user: user, friends: friends, groups: groups),
                label: {
                    Text("SKIP")
                        .fontWeight(.thin)
                        .frame(width: 100, height: 40)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 20))
                        .background(ColorManager.purple3)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
              
                })

            Spacer()
                 .frame(height: 125)
        }
    }
    
}
}
}
}
}


