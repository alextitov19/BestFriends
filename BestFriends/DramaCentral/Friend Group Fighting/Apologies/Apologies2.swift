//
//  Apologies2.swift
//  BestFriends
//
//  Created by Social Tech on 6/14/22.
//

import Foundation
import SwiftUI

struct Apologies2: View {
    
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
                      Text("Do you think you hurt")
                          .font(.system(size: 37))
                          .foregroundColor(.white)
                          .fontWeight(.ultraLight)
                          .multilineTextAlignment(.center)
                   
                      Text("your friend's")
                          .font(.system(size: 37))
                          .foregroundColor(.white)
                          .fontWeight(.ultraLight)
                          .multilineTextAlignment(.center)
                      
                      Text("F E E L I N G S?")
                          .font(.system(size: 55))
                          .foregroundColor(.white)
                          .fontWeight(.ultraLight)
                          .multilineTextAlignment(.center)
                            
                        Spacer()
                            .frame(height: 50)
                     
            VStack {
                
                Link(destination: URL(string: "https://socialtechlabs.com/apoloigize/")!) {
                    
                    Text("Is it time to Apologize?")
                        .fontWeight(.thin)
                        .frame(width: 260, height: 40)
                       .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .background(ColorManager.purple5)
                        .font(.system(size: 27))
                        .background(ColorManager.purple3)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    
                }
//                Text("It may be time \nto apologize")
//                    .font(.system(size: 30))
//
//                    .fontWeight(.light)
//                    .foregroundColor(Color.white)
//
                Spacer()
                    .frame(height: 20)
                
                      
                        Text("Holding yourself accountable \nis one of the best ways to be \na good friend and show them \nyou care.")
                            .font(.system(size: 20))
//                            .foregroundColor(ColorManager.white)
                            .fontWeight(.light)
                            .foregroundColor(Color.white)
                          
                
                
                          
            VStack {
                Spacer()
                    .frame(height: 30)
                    
                    NavigationLink(
                        destination: Apologies4(user: user, friends: friends, groups: groups),
                        label: {
                            Text("Ok, let's do this ...")
                                .fontWeight(.thin)
                                .frame(width: 300, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
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






//
//
//struct Apologies2_Previews : PreviewProvider {
//    static var previews: some View {
//        Apologies2(user: user, friends: friends, groups: groups)
//    }
//}
//
