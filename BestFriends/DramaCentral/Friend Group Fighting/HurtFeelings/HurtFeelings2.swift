//
//  HurtFeelings2.swift
//  BestFriends
//
//  Created by Social Tech on 6/14/22.
//

import Foundation

import SwiftUI


struct HurtFeelings2: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    let groups: [Group]

    var body: some View {
        ZStack {
            
            ColorManager.grey4
                .ignoresSafeArea()
                .onAppear()

       
              
              VStack {
              
               
                  
                  VStack {
                      Text("If you're feeling")
                          .font(.system(size: 50))
                          .foregroundColor(.white)
                          .fontWeight(.ultraLight)
                          .multilineTextAlignment(.center)
                   
                      
                      
                      Text("B A D")
                          .font(.system(size: 65))
                          .foregroundColor(.white)
                          .fontWeight(.ultraLight)
                          .multilineTextAlignment(.center)
                            
                        Spacer()
                            .frame(height: 15)
                     
            VStack {
                      
                        Text("It's ok to let them know")
                            .font(.system(size: 23))
                            .italic()
//                            .foregroundColor(ColorManager.grey4)
                            .fontWeight(.thin)
                            .foregroundColor(Color.white)
                
                Spacer()
                    .frame(height: 50)
           
                    
                    NavigationLink(
                        destination: HurtFeelings3(user: user, friends: friends, groups: groups),
                        label: {
                            Text("Let's give it a shot, ok!")
                                .fontWeight(.thin)
                                .frame(width: 300, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                      
                        })
                Spacer()
                    .frame(height: 30)
                
                Text("Before it starts eating")
                    .font(.system(size: 30))
                     .fontWeight(.thin)
                    .foregroundColor(Color.white)
                Text("you up inside.")
                    .font(.system(size: 30))
                     .fontWeight(.thin)
                    .foregroundColor(Color.white)
                          
         
              
        }
    }
}
}
    }
}

