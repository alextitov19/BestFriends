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
                
          
              
                    
                Spacer()
                    .frame(height: 25)
                
                Text("Our teens have")
                    .font(.system(size: 35))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
             
                
                Text("some ideas, but ...")
                    .font(.system(size: 31))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                
                Spacer()
                    .frame(height: 35)
                
            
                
                Text("All Friend Groups are ")
                    .font(.system(size: 40))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.blue)
          
                
                Text("DIFFERENT")
                    .font(.system(size: 55))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.blue)
                
         
                
            VStack {
                Spacer()
                    .frame(height: 25)
                
                Text("Let's Customize")
                    .font(.system(size: 30))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.white)
             
//
//                Text("& Accessorize")
//                    .font(.system(size: 30))
//                    .fontWeight(.ultraLight)
//                    .foregroundColor(Color.white)
//
                Spacer()
                    .frame(height: 25)
                
                Text("to fit your")
                    .font(.system(size: 40))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                Text("FRIEND GROUP")
                    .font(.system(size: 55))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.blue)
          
                Spacer()
                    .frame(height: 100)
                    
                    NavigationLink(
                        destination: FG_GettingStarted(),
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
                
         
    }
}
}
}




struct Step2FG_TeenBehavior_Previews : PreviewProvider {
    static var previews: some View {
        Step2FG_TeenBehavior()
    }
}

