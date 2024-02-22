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
                      
                      Text("Ok, your friend")
                          .font(.system(size: 35))
                          .foregroundColor(.white)
                          .fontWeight(.ultraLight)
                          .multilineTextAlignment(.center)
                      
                      Text("hurt your feelings.")
                          .font(.system(size: 35))
                          .foregroundColor(.white)
                          .fontWeight(.ultraLight)
                          .multilineTextAlignment(.center)
                      
                      Spacer()
                          .frame(height: 15)
                      
                      Text("Maybe you're a little scared")
                          .font(.system(size: 25))
                          .foregroundColor(.white)
                          .fontWeight(.ultraLight)
                          .multilineTextAlignment(.center)
                   
                      Text("to say something.")
                          .font(.system(size: 25))
                          .foregroundColor(.white)
                          .fontWeight(.ultraLight)
                          .multilineTextAlignment(.center)
                    
                      Spacer()
                          .frame(height: 25)
                      
                      
                      Text("That's Ok.")
                          .font(.system(size: 50))
                          .foregroundColor(.white)
                          .fontWeight(.ultraLight)
                          .multilineTextAlignment(.center)
                            
                    
            VStack {
                      
//                        Text("It's ok to let them know")
//                            .font(.system(size: 23))
//                            .italic()
////                            .foregroundColor(ColorManager.grey4)
//                            .fontWeight(.thin)
//                            .foregroundColor(Color.white)
                
                Spacer()
                    .frame(height: 40)
           
                    
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
                
                
                Text("Now, find strength by")
                    .font(.system(size: 25))
                     .fontWeight(.thin)
                    .foregroundColor(Color.white)
                
                Text("joining the rest of the world")
                    .font(.system(size: 25))
                     .fontWeight(.thin)
                    .foregroundColor(Color.white)
                Text("saying something right")
                    .font(.system(size: 25))
                     .fontWeight(.thin)
                    .foregroundColor(Color.white)
                Text("NOW!")
                    .font(.system(size: 40))
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

