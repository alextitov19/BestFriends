//
//  Step3FG_Acountability.swift
//  BestFriends
//
//  Created by Social Tech on 5/28/22.
//

import Foundation

import SwiftUI
import AVKit

struct Step3FG_Accountability: View {
    
    @EnvironmentObject var sessionManager: SessionManager

    var body: some View {
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
          VStack {
          
           
                Text("Friend Group")
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
              
              Text("H A R M O N Y")
                  .font(.system(size: 60))
                  .foregroundColor(.white)
                  .fontWeight(.ultraLight)
                  .multilineTextAlignment(.center)
                    
                Spacer()
                    .frame(height: 25)
                
                Text("Trust, safety &")
                    .font(.system(size: 30))
                    .fontWeight(.light)
                    .foregroundColor(Color.blue)
                
                Text("always there for each other")
                    .font(.system(size: 30))
                    .fontWeight(.light)
                    .foregroundColor(Color.blue)
               
                Spacer()
                    .frame(height: 40)
                
            VStack {
                Text("- come up with a team name \n- teams members watch out for each other")
                    .font(.system(size: 24))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
     
                
                
                
            VStack {
                Spacer()
                    .frame(height: 145)
                    
                    NavigationLink(
                        destination: FG_VideoCall(user: User(id: "", firstName: "", lastName: "", APNToken: "", atmosphere: "", chatPin: "", chatBackground: ""), friends: [], groups: []),
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
                
                Text("")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                
        }
    }
}
}
}




struct Step3FG_Accountability_Previews : PreviewProvider {
    static var previews: some View {
        Step3FG_Accountability()
    }
}

