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
                      
//                      Text("Building Stronger FriendGroups")
//                          .fontWeight(.thin)
//                          .frame(width: 300, height: 40)
//                          .foregroundColor(Color .blue)
//                          .font(.system(size: 22))
//                          .background(ColorManager.grey2)
//                          .cornerRadius(15)
//                          .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//                      Spacer()
//                          .frame(height: 15)
                      
                      Text("Ok, maybe you just didn't \nfeel right saying something.")
                          .font(.system(size: 25))
                          .foregroundColor(.white)
                          .fontWeight(.ultraLight)
                          .multilineTextAlignment(.center)
                   
                      Text("Maybe a little scared or nervious.")
                          .font(.system(size: 25))
                          .foregroundColor(.white)
                          .fontWeight(.ultraLight)
                          .multilineTextAlignment(.center)
                      
                      Text("it's ok.")
                          .font(.system(size: 65))
                          .foregroundColor(.white)
                          .fontWeight(.ultraLight)
                          .multilineTextAlignment(.center)
                            
                        Spacer()
                            .frame(height: 15)
                     
            VStack {
                      
//                        Text("It's ok to let them know")
//                            .font(.system(size: 23))
//                            .italic()
////                            .foregroundColor(ColorManager.grey4)
//                            .fontWeight(.thin)
//                            .foregroundColor(Color.white)
                
                Spacer()
                    .frame(height: 50)
           
                    
                    NavigationLink(
                        destination: HurtFeelings4(user: user, friends: friends, groups: groups),
                        label: {
                            Text("Let's give this a shot!")
                                .fontWeight(.thin)
                                .frame(width: 310, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                      
                        })
                Spacer()
                    .frame(height: 60)
                
                Text("join the rest of the world")
                    .font(.system(size: 25))
                     .fontWeight(.thin)
                    .foregroundColor(Color.purple)
                Text("doing it right")
                    .font(.system(size: 30))
                     .fontWeight(.thin)
                    .foregroundColor(Color.purple)
                Text("NOW!")
                    .font(.system(size: 30))
                     .fontWeight(.thin)
                    .foregroundColor(Color.white)
                          
          
              
        }
                      
                      Spacer()
                          .frame(height: 75)
    }
                  
               
}
}
    }
}

