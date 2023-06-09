//
//  HurtFeelingsPreload.swift
//  BestFriends
//
//  Created by Social Tech on 11/5/22.
//


import Foundation
import SwiftUI

struct HurtFeelingsPreload: View {
    
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
                
              
                 
            VStack {
                    NavigationLink(
                        destination: BuiltByTeensView(user: user, friends: friends),
                        label: {
                            Text("I hurt friend's feeling")
                                .fontWeight(.thin)
                                .frame(width: 310, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 25))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                      
                        
                        })
                
                Spacer()
                    .frame(height: 30)
                
                NavigationLink(
                    destination: HurtFeelings2(user: user, friends: friends, groups: groups),
                    label: {
                        Text("Friend hurt my feelings")
                            .fontWeight(.thin)
                            .frame(width: 310, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 25))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                  
                    
                    })
            }
              
        }
            Spacer()
                .frame(height: 200)

    }
}
}
    }

