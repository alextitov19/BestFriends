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
                    .font(.system(size: 75))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                    
                Spacer()
                    .frame(height: 25)
                
                Text("Wow, that list doesn't sound")
                    .font(.system(size: 30))
                    .fontWeight(.light)
                    .foregroundColor(Color.blue)
                
                Text("like me and my friends")
                    .font(.system(size: 30))
                    .fontWeight(.light)
                    .foregroundColor(Color.blue)
               
                Spacer()
                    .frame(height: 20)
                
            VStack {
                Text("- we can't just ignore fights \n- we get involved \n- we sort of commiserate \n- we for sure express our opinions \n- may even talk behind their back")
                    .font(.system(size: 24))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
     
                Spacer()
                    .frame(height: 25)
                
                Text("Hey, we're just teens")
                    .font(.system(size: 37))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                
                Text("being teens")
                    .font(.system(size: 40))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                
                
            VStack {
                Spacer()
                    .frame(height: 45)
                    
                    NavigationLink(
                        destination: Step_OurAdvantage(),
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
                
                Text("So, now what do we do?")
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

