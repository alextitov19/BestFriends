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
            
        
         
            Text("A T O M S P H E R E")
                .font(.system(size: 35))
                .fontWeight(.thin)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.blue)
            
          
            
            Spacer()
            .frame(height: 15)

            Text("Selecting NEW Aura")
                .font(.system(size: 20))
                .fontWeight(.thin)
                .multilineTextAlignment(.center)
                
               .foregroundColor(Color.purple)
            
            
         
            VStack {
           
                
            Text("-Tap button reflecting NEW mood \n- Type a short explaination \nof whats going on")
                .font(.system(size: 15))
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .foregroundColor(ColorManager.grey1)
//                    .foregroundColor(.gray)
             
                Spacer()
                .frame(height: 25)
                
                Text("Coloring Your Atmosphere")
                    .font(.system(size: 20))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    
                   .foregroundColor(Color.purple)
         
                Text("-Blue for 'negative' \n-Green for 'I'm Ok' \n-Orange for 'bored' \n-Yellow for 'positive'")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey1)
                
                Spacer()
                .frame(height: 25)
                
                Text("Your's and Friends Atmosphere \ninstantly shows on homepage")
                    .font(.system(size: 20))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    
                   .foregroundColor(Color.purple)
                
            }
            
        VStack {
            
            Spacer()
            .frame(height: 25)
            
      
       Text("Notifying Friends")
           .font(.system(size: 20))
           .fontWeight(.thin)
           .multilineTextAlignment(.center)
           .foregroundColor(Color.purple)
       
       Text("-Tap the names of the friends you want \nto notify of your change")
           .font(.system(size: 15))
           .fontWeight(.light)
           .multilineTextAlignment(.center)
           .foregroundColor(ColorManager.grey1)
//               .foregroundColor(.gray)
                
            Spacer()
                 .frame(height: 25)
                 
           
            Text("Sending Push Notification")
                .font(.system(size: 20))
                .fontWeight(.thin)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.purple)
            
            Text("-Tap [Submit]")
                .font(.system(size: 15))
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .foregroundColor(ColorManager.grey1)
//                    .foregroundColor(.gray)
            
                Spacer()
                .frame(height: 0)
            }
            
        VStack {
  Spacer()
            .frame(height: 35)
            

            
            NavigationLink(
                destination: AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends),
                label: {
                    Text("Update Aura")
                        .fontWeight(.thin)
                        .frame(width: 150, height: 40)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 20))
                        .background(ColorManager.purple3)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
              
                })
          
            Spacer()
                 .frame(height: 125)
        }
    }
    
}
}
}
}



