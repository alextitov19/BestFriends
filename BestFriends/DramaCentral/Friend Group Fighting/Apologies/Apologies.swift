//
//  Apologies.swift
//  BestFriends
//
//  Created by Social Tech on 6/14/22.
//


import Foundation
import SwiftUI

struct Apologies: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    let groups: [Group]
    

    var body: some View {
       
        
        VStack {
            
      
         
            
            Text("A P O L O G I E S")
                .font(.system(size: 40))
                .foregroundColor(.blue)
                .fontWeight(.ultraLight)
                .multilineTextAlignment(.center)
        
        ZStack {
           
            Image("purpleBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
         
            Image("book")
                .frame(width: 320, height: 20)
//                .resizable()
//                .scaledToFill()
//                .ignoresSafeArea()
//
              VStack {
              
             
                  
                  VStack {
//
//
            VStack {
                Text("Did you hurt \nyour friend's feelings?")
                    .font(.system(size: 28))
                    .italic()
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                 
                Spacer()
                    .frame(height: 350)
                
            VStack {
                    NavigationLink(
                        destination: Apologies2(user: user, friends: friends, groups: groups),
                        label: {
                            Text("Need to Apologise?")
                                .fontWeight(.thin)
                                .frame(width: 300, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                      
                        })

                
                
                Link(destination: URL(string: "https://socialtechlabs.com/apoloigize/")!) {
                    
                    Text("Is it time to Apologize?")
                        .fontWeight(.thin)
                        .frame(width: 260, height: 40)
                       .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .background(ColorManager.pmbc_blue)
                        .font(.system(size: 27))
                        .background(ColorManager.purple3)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    
                }
                
                
            }
              
        }
    }
}
}
    }
}

}


