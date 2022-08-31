//
//  AtmosphereInfo.swift
//  BestFriends
//
//  Created by Social Tech on 6/30/22.
//
//



import Foundation
import SwiftUI

struct AtmosphereInfo: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]

    var body: some View {
       
        VStack {
    
            
            ZStack {
               
                ColorManager.grey4
                    .ignoresSafeArea()
                    .onAppear()
    //
    //            Image("girlwalking")
    ////                .frame(width: 300, height: 20)
    //                .resizable()
    //                .scaledToFill()
    //                .ignoresSafeArea()
    //
    //                      Spacer()
    //                          .frame(height: 0)
    //
        
           
            
        VStack {
            

     
            VStack {
           
                    VStack {
                        
                        Text("Let your friends know")
                            .font(.system(size: 33))
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                           .foregroundColor(Color.blue)
                        Text("if your day has changed")
                            .font(.system(size: 33))
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                           .foregroundColor(Color.blue)
            
                        Spacer()
                        .frame(height: 20)
                        
                    
                        Text("So they can")
                                     .font(.system(size: 18))
                                     .italic()
                                     .fontWeight(.thin)
                                     .multilineTextAlignment(.center)
                                     .foregroundColor(Color.white)
                        Spacer()
                        .frame(height: 20)
                        
                        
                        Text("Cheer you in good times")
                                     .font(.system(size: 25))
                                     .fontWeight(.thin)
                                     .multilineTextAlignment(.center)
                                     .foregroundColor(Color.blue)
                        
                                 Text("and lend Support in bad")
                                     .font(.system(size: 25))
                                     .fontWeight(.thin)
                                     .multilineTextAlignment(.center)
                                     .foregroundColor(Color.blue)
                    
            }
            
      
        VStack {
  
                Spacer()
                    .frame(height: 70)
            

//            
//            NavigationLink(
//                destination: AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends),
//                label: {
//                    Text("SKIP")
//                        .fontWeight(.thin)
//                        .frame(width: 100, height: 40)
//                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                        .font(.system(size: 20))
//                        .background(ColorManager.purple3)
//                        .cornerRadius(15)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//              
//                })

            Spacer()
                 .frame(height: 50)
            Text("Your friends can instantly see")
                .font(.system(size: 18))
                .italic()
                .fontWeight(.light)
                .multilineTextAlignment(.center)
               .foregroundColor(Color.white)
            
            Text("how your day is going")
                .font(.system(size: 18))
                .italic()
                .fontWeight(.light)
                .multilineTextAlignment(.center)
               .foregroundColor(Color.white)
            
            Text("by the color of the \natmosphere around your planet ")
                .font(.system(size: 18))
                .italic()
                .fontWeight(.light)
                .multilineTextAlignment(.center)
               .foregroundColor(Color.white)
            
          
            Spacer()
                 .frame(height: 125)
        }
    }
    
}
}
}
}
}


