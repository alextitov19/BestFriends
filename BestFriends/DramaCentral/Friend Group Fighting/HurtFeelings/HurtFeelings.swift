//
//  HurtFeelings.swift
//  BestFriends
//
//  Created by Social Tech on 6/14/22.
//

import Foundation
import SwiftUI

struct HurtFeelings: View {
    
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
                
                
                Text("Building Stronger FriendGroups")
                    .fontWeight(.thin)
                    .frame(width: 300, height: 35)
                    .foregroundColor(Color .blue)
                    .font(.system(size: 30))
                    .background(ColorManager.grey2)
                    .cornerRadius(15)
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                
                Spacer()
                    .frame(height: 15)
                
                Text("Did your friend hurt")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Text("Y O U R  F E E L I N G S?")
                    .font(.system(size: 35))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 50)
                
            
                 
            VStack {  
                    NavigationLink(
                        destination: HurtFeelings2(user: user, friends: friends, groups: groups),
                        label: {
                            Text("If so, we can HELP")
                                .fontWeight(.thin)
                                .frame(width: 275, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                      
                        
                        })
//                
               
//                
//                Text("Did they say or do \nsomething hurtful?")
//                    .font(.system(size: 30))
//                    .italic()
//                    .fontWeight(.light)
//                    .foregroundColor(Color.white)
            
            }
              
        }
            Spacer()
                .frame(height: 200)

    }
}
}
    }


//struct HurtFeelings_Previews : PreviewProvider {
//    static var previews: some View {
//        HurtFeelings()
//    }
//}

