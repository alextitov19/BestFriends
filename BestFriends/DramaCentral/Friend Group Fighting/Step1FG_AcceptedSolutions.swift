//
//  Step1FG_AcceptedSolutions.swift
//  BestFriends
//
//  Created by Social Tech on 5/8/22.
//

import Foundation

import SwiftUI
import AVKit

struct Step1FG_SuggestedSolutions: View {
    
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
                    .frame(height: 10)
                
                Text("Teen Reality")
                    .font(.system(size: 70))
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    
                Spacer()
                    .frame(height: 25)
                
               
                Text("Teens say they dislike drama")
                    .font(.system(size: 30))
                    .fontWeight(.light)
                    .foregroundColor(Color.blue)
                
                Text("but some in Friend Groups are:")
                    .font(.system(size: 26))
                    .fontWeight(.light)
                    .foregroundColor(Color.blue)
               
                Spacer()
                    .frame(height: 20)
                
            VStack {
                Text("- drawn to it \n- get involved in others fights \n- commerizerate playing both sides \n- express their opinions \n- play two against one \n- talk behind others backs \n- win friends at the cost of others")
                    .font(.system(size: 24))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
     
                Text("")
                    .font(.system(size: 17))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                
                
                
            VStack {
                Spacer()
                    .frame(height: 45)
                    
                    NavigationLink(
                        destination: Step2FG_NewSolutions(),
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
                
                Text("We hope for something \nbetter")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                
        }
    }
}
}
}




struct Step1FG_SuggestedSolutions_Previews : PreviewProvider {
    static var previews: some View {
        Step1FG_SuggestedSolutions()
    }
}

