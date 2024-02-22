//
//  FG_GettingStarted.swift
//  BestFriends
//
//  Created by Social Tech on 5/30/22.
//


import Foundation

import SwiftUI


struct FG_GettingStarted: View {
    
    @EnvironmentObject var sessionManager: SessionManager

    var body: some View {
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
          VStack {
          
           
//                Text("First,")
//                    .font(.system(size: 50))
//                    .foregroundColor(.white)
//                    .fontWeight(.ultraLight)
//                    .multilineTextAlignment(.center)
         
              
              Text("Some DRAMA in your ")
                  .font(.system(size: 30))
                  .fontWeight(.light)
                  .foregroundColor(Color.blue)
              
              Text("Friend Group")
                  .font(.system(size: 30))
                  .fontWeight(.light)
                  .foregroundColor(Color.blue)
            
        VStack {
              Text("is expected")
                  .font(.system(size: 60))
                  .foregroundColor(.white)
                  .fontWeight(.ultraLight)
                  .multilineTextAlignment(.center)
             
              Spacer()
                  .frame(height: 80)
              
              Text("BestFriends helps ")
                  .font(.system(size: 30))
                  .fontWeight(.light)
                  .foregroundColor(Color.blue)
            
            Text("keep it to")
                .font(.system(size: 30))
                .fontWeight(.light)
                .foregroundColor(Color.blue)
         
            
              Text("managable screams")
                  .font(.system(size: 45))
                  .fontWeight(.light)
                  .foregroundColor(Color.white)
          
               
                Spacer()
                    .frame(height: 40)

                
            VStack {
            
                    
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


//
//
//struct FG_GettingStarted_Previews : PreviewProvider {
//    static var previews: some View {
//        FG_GettingStarted(user: User(id: "", firstName: "", lastName: "", APNToken: "", atmosphere: ""), friends: [])
//    }
//}
//
