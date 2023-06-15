//
//  YouGotThis.swift
//  BestFriends
//
//  Created by Social Tech on 5/1/22.
//

import Foundation
import SwiftUI

struct YouGotThis: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    
    var body: some View {
        ZStack {
            

            
            ColorManager.grey2
                  .ignoresSafeArea()
          

            
            
     
        
               
               
            VStack {
                
                Text("REMEMBER")
                 .font(.system(size: 50))
                 .foregroundColor(.purple)
                 .fontWeight(.ultraLight)
                
                 Spacer()
                     .frame(height: 20)
//                Text("you can't take them back")
//                    .font(.system(size: 23))
//                    .fontWeight(.thin)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(Color.white)
//                Spacer()
//                    .frame(height: 10)
//
//                Text("and they will never forget")
//                    .font(.system(size: 23))
//                    .fontWeight(.thin)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(Color.white)
               
                
                Text("Sharp words erase all the nice words you've ever said")
                            .fontWeight(.ultraLight)
                            .foregroundColor(Color.white)
                            .italic()
                            .multilineTextAlignment(.center)
                            .frame(width: 310, height: 130, alignment: .leading)
                            .font(.system(size: 32))
                           .padding(10)
                            .background(Color.gray)
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                
                
//                Text("Erasing all the nice words you've ever said")
//                    .fontWeight(.ultraLight)
//                    .foregroundColor(Color.white)
//                    .italic()
////                    .multilineTextAlignment(.center)
//                    .frame(width: 320, height: 100, alignment: .leading)
//                    .font(.system(size: 35))
//                    .padding(10)
//                    .background(Color.green)
//                    .cornerRadius(40)
//                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
               
                Spacer()
                    .frame(height: 30)
                
                NavigationLink(
                    destination: Step5_Why(user: user, friends: friends),
                    label: {
                        Text("A look inside")
                            .fontWeight(.thin)
                            .frame(width: 200, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                
                
                Spacer()
                    .frame(height: 25)
                
                Button(action: {
                                                                     sessionManager.showLogin()
                                                                 },
                                                                     label: {
                                                                     Image("home-alt2")
                                                                         .frame(width: 50, height: 25)
                                                                         .foregroundColor(.white)
                                                                         .font(.system(size: 20))
                                                                         .background(ColorManager .grey3)
                                                                         .cornerRadius(15)
                                                                         .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                                                                         .opacity(0.70)
                                                                     
                                                                 })

                
                Spacer()
                    .frame(height: 100)
            }
        }
        
    }
}







//
//
//struct YouGotThis_Previews : PreviewProvider {
//    static var previews: some View {
//        YouGotThis()
//    }
//}


