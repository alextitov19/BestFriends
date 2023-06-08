//
//  YouGotThis.swift
//  BestFriends
//
//  Created by Social Tech on 5/1/22.
//

import Foundation
import SwiftUI

struct YouGotThis: View {
    
    let user: User
    let friends: [User]
    
    var body: some View {
        ZStack {
            
//            Image("purpleBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
            
            ColorManager.grey2
                  .ignoresSafeArea()
          
            // Stars animation...
            AdPlayerView(name: "backgroundAnimation")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            VStack {
                Text("We get it - you're upset!")
                    .font(.system(size: 25))
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                Spacer()
                    .frame(height: 15)
                
                Text("but,")
                    .font(.system(size: 30))
                    .fontWeight(.thin)
                    .foregroundColor(Color.white)
                Text("Sharp Words")
                    .font(.system(size: 60))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.purple)
        
                Spacer()
                    .frame(height: 15)
               
            VStack {
                Text("you can't take them back")
                    .font(.system(size: 23))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                Spacer()
                    .frame(height: 10)
                
                Text("and they will never forget")
                    .font(.system(size: 23))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                Spacer()
                    .frame(height: 40)
                
                Text("Erasing all the nice words you've ever said")
                            .fontWeight(.ultraLight)
                            .foregroundColor(Color.white)
                            .italic()
                            .multilineTextAlignment(.center)
                            .frame(width: 310, height: 100, alignment: .leading)
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
                        Text("Next_Step 3")
                            .fontWeight(.thin)
                            .frame(width: 200, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                
                Spacer()
                    .frame(height: 100)
            }
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


