//
//  BetaTesters1.swift
//  BestFriends
//
//  Created by Social Tech on 7/28/22.
//

import Foundation
import SwiftUI
import AVKit


struct BetaTesters1: View {
    
    var body: some View {
        
        ZStack {
            
//            ColorManager.grey4
//                  .ignoresSafeArea()

//         
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()

            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
         

            VStack {
                
                
                Text("Be the 1st of your friends")
                    .font(.system(size: 30))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.gray)
                Spacer()
                    .frame(height: 15)
                
                
                Text("Join our exclusive \nteam of TESTERS")
                    .font(.system(size: 30))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.gray)
                
                
                Spacer()
                    .frame(height: 15)
                
//                Link(destination: URL(string: "https://socialtechlabs.com")!) {
//                        Text("Team")
//                            .fontWeight(.thin)
//                            .frame(width: 120, height: 40)
//                            .font(.system(size: 30))
//                            .foregroundColor(.white)
//                            .background(ColorManager.purple3)
//                            .cornerRadius(15)
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                            .opacity(0.8)
//
//                }
//                Text("(the 'Zen Masters' of social media)")
//
//                    .font(.system(size: 20))
//                    .italic()
//                    .fontWeight(.ultraLight)
//                    .foregroundColor(Color.white)
//
//                Spacer()
//                    .frame(height: 50)
                
               
//                Link(destination: URL(string: "https://socialtechlabs.com/about-bestfriends/")!) {
//                        Text("Features Explained")
//                            .fontWeight(.thin)
//                            .frame(width: 225, height: 40)
//                            .font(.system(size: 30))
//                            .foregroundColor(.white)
//                            .background(ColorManager.purple3)
//                            .cornerRadius(15)
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                           .opacity(0.8)
//
//                }
//                Spacer()
//                    .frame(height: 50
//                    )
                
                NavigationLink(
                    destination: BetaTestVideo(),
                    label: {
                        Text("Test 'Future Prototypes'")
                            .fontWeight(.thin)
                            .frame(width: 310, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            .opacity(0.8)

                        
                        
                    })
                
                
                Spacer()
                    .frame(height: 90)
                
         
            
              
                        

            }//VStack
        }//ZStack
    }//body
}//struct

    

