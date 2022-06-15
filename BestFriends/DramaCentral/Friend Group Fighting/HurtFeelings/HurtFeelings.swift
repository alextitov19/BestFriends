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

    var body: some View {
       
        
        VStack {
            
      
            Text("Did your friend hurt")
                .font(.system(size: 30))
                .foregroundColor(.blue)
                .fontWeight(.ultraLight)
                .multilineTextAlignment(.center)
            
            Text("Y O U R  F E E L I N G S?")
                .font(.system(size: 38))
                .foregroundColor(.blue)
                .fontWeight(.ultraLight)
                .multilineTextAlignment(.center)
        
        ZStack {
           
            Image("purpleBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
         
            Image("AriC2")
                .frame(width: 300, height: 40)
//                .resizable()
//                .scaledToFill()
//                .ignoresSafeArea()
//
              VStack {
              
                  Spacer()
                      .frame(height: 450)
                  
                  VStack {
//                      Text("Hurt")
//                          .font(.system(size: 60))
//                          .foregroundColor(.blue)
//                          .fontWeight(.ultraLight)
//                          .multilineTextAlignment(.center)
//
//
//
//                      Text("F E E L I N G S")
//                          .font(.system(size: 60))
//                          .foregroundColor(.blue)
//                          .fontWeight(.ultraLight)
//                          .multilineTextAlignment(.center)
//
//                        Spacer()
//                            .frame(height: 50)
//
            VStack {
                Text("Did they \ncross the line?")
                    .font(.system(size: 30))
                    .italic()
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                 
            VStack {  
                    NavigationLink(
                        destination: HurtFeelings2(),
                        label: {
                            Text("If so, we can HELP")
                                .fontWeight(.thin)
                                .frame(width: 300, height: 40)
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
    }
}

}

struct HurtFeelings_Previews : PreviewProvider {
    static var previews: some View {
        HurtFeelings()
    }
}

