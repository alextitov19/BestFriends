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
            
//            NavigationLink(destination: AtmosphereDVid(user: user, atmosphere: atmosphere, friends: friends), label: {
//                Text("Demo Video")
//                    .fontWeight(.thin)
//                    .frame(width: 200, height: 40)
//                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                    .font(.system(size: 30))
//                    .background(ColorManager.pmbc_blue)
//                    .cornerRadius(15)
//                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//            })
//
//            Text("Let your friends know")
//                .font(.system(size: 30))
//                .fontWeight(.thin)
//                .multilineTextAlignment(.center)
//                .foregroundColor(Color.blue)
//
//            Text("your A U R A changed")
//                .font(.system(size: 30))
//                .fontWeight(.thin)
//                .multilineTextAlignment(.center)
//                .foregroundColor(Color.blue)
//
     
            VStack {
           
                Spacer()
                .frame(height: 60)

        
                
                Text("Your friends can instantly see")
                    .font(.system(size: 20))
                    .italic()
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                   .foregroundColor(Color.white)
                
                Text("from the color of the \natmosphere around your planet ")
                    .font(.system(size: 20))
                    .italic()
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                   .foregroundColor(Color.white)
                
                Spacer()
                .frame(height: 20)
                
                Text("Your mood has Changed")
                    .font(.system(size: 30))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                   .foregroundColor(Color.blue)
                    
                    VStack {
            
//                
                   

                    
            }
            
      
        VStack {
  
                Spacer()
                    .frame(height: 35)
            

            
            NavigationLink(
                destination: AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends),
                label: {
                    Text("SKIP")
                        .fontWeight(.thin)
                        .frame(width: 100, height: 40)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 20))
                        .background(ColorManager.purple3)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
              
                })

            Text("Cheering in good times")
                         .font(.system(size: 20))
                         .fontWeight(.thin)
                         .multilineTextAlignment(.center)
                         .foregroundColor(Color.blue)
         
                     Text("Lending Support in bad times")
                         .font(.system(size: 20))
                         .fontWeight(.thin)
                         .multilineTextAlignment(.center)
                         .foregroundColor(Color.blue)
          
            Spacer()
                 .frame(height: 125)
        }
    }
    
}
}
}
}
}


