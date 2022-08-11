//
//  Step_OurAdvantage.swift
//  BestFriends
//
//  Created by Social Tech on 5/30/22.
//

import Foundation

import SwiftUI
import AVKit

struct Step_OurAdvantage: View {
    
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
                
                Text("We use who we are")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 25)
                
                Text("to our")
                    .font(.system(size: 55))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
          
                Text("ADVANTAGE")
                    .font(.system(size: 65))
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    
                Spacer()
                    .frame(height: 150)
                
              
                
                Text("READY?")
                    .font(.system(size: 45))
                    .fontWeight(.light)
                    .foregroundColor(Color.green)
                
             
                
            VStack {
                Spacer()
                    .frame(height: 20)
                    
                    NavigationLink(
                        destination: Step2FG_TeenBehavior(),
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
                
              
                
        }
    }
}
}





struct Step_OurAdvantage_Previews : PreviewProvider {
    static var previews: some View {
        Step_OurAdvantage()
    }
}

