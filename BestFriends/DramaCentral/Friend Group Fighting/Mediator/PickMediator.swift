//
//  PickMediator.swift
//  BestFriends
//
//  Created by Social Tech on 6/10/22.
//

import Foundation
import SwiftUI

struct PickMediator: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    let groups: [Group]


    var body: some View {
       
        ZStack {
            
            ColorManager.grey4
                .ignoresSafeArea()
//                .onAppear()
           
//
//            Image("ballons")
//                .frame(width: 320, height: 20)
////                .resizable()
//                .scaledToFill()
//                .ignoresSafeArea()
//
//
            VStack {
             
                Text("Are two friends in your \nFriend Group fighting?")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 15)
                
                Text("Making life unconfortable \nfor everyone.")
                            .font(.system(size: 25))
                            .italic()
                            .foregroundColor(.white)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)

                Spacer()
                    .frame(height: 60)
                
                Text("You can Refer them to a \nmutual friend \nto be the go-between!")
                    .font(.system(size: 17))
                    .italic()
                    .fontWeight(.thin)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 25)
                
            VStack {
                    NavigationLink(
                        destination: PickMediator2(user: user, friends: friends, groups: groups),
                        label: {
                            Text("Start this Process")
                                .fontWeight(.thin)
                                .frame(width: 250, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 27))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                      
                        })
                
                
      
                    
                Spacer()
                    .frame(height: 75)
                    
//
//                    .font(.system(size: 20))
//                    .italic()
//                    .foregroundColor(Color.white)
////                Spacer()
//            }
              
        }
    }
}
}
}


//
//
//struct PickMediator_Previews : PreviewProvider {
//    static var previews: some View {
//        PickMediator()
//    }
//}
//
