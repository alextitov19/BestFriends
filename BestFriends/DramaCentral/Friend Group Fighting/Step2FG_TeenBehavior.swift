//
//  Step2FG_TeenBehavior.swift
//  BestFriends
//
//  Created by Social Tech on 5/29/22.
//

import Foundation

import SwiftUI
import AVKit

struct Step2FG_TeenBehavior: View {
    
    @EnvironmentObject var sessionManager: SessionManager

    var body: some View {
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
//
//            AdPlayerView(name: "backgroundAnimation")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//
            
            VStack {
          
                Text("Here's the Deal")
                    .font(.system(size: 55))
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    
                Spacer()
                    .frame(height: 25)
                
                Text("Yep, we're teens ")
                    .font(.system(size: 35))
                    .fontWeight(.light)
                    .foregroundColor(Color.blue)
                Spacer()
                    .frame(height: 10)
                
                Text("Yep, we have some ideas")
                    .font(.system(size: 35))
                    .fontWeight(.light)
                    .foregroundColor(Color.blue)
                Spacer()
                    .frame(height: 10)
            VStack {
                
                Text("But, you decide  ")
                    .font(.system(size: 35))
                    .fontWeight(.light)
                    .foregroundColor(Color.blue)
               
                Spacer()
                    .frame(height: 10)
                
                Text("YOU build YOUR solution")
                    .font(.system(size: 35))
                    .fontWeight(.light)
                    .foregroundColor(Color.blue)
                
             
                
            VStack {
                Spacer()
                    .frame(height: 80)
                    
                    NavigationLink(
                        destination: Step3FG_Accountability(),
                        label: {
                            Text("NEXT")
                                .fontWeight(.thin)
                                .frame(width: 100, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                      
                        })

            }
                
               
                Spacer()
                    .frame(height: 25)
                
                Text("Reality: if we tell you how to build it you will try to figure out why it is stupid.")
                    .font(.system(size: 10))
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
             
                Spacer()
                    .frame(height: 5)
                
                Text("Every FG is different - you need to build a solution that works for your FG.")
                    .font(.system(size: 10))
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 5)
                
                Text("Besides, if it's your IDEA you will LOVE IT -right?")
                    .font(.system(size: 10))
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                
        }
    }
}
}
}




struct Step2FG_TeenBehavior_Previews : PreviewProvider {
    static var previews: some View {
        Step2FG_TeenBehavior()
    }
}

