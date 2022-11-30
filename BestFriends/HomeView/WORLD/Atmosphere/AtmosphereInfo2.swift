//
//  AtmosphereInfo2.swift
//  BestFriends
//
//  Created by Social Tech on 11/2/22.
//

import Foundation

import Foundation
import SwiftUI

struct AtmosphereInfo2: View {
    
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
          
                    Text("Cheer you in good times")
                        .font(.system(size: 25))
                        .foregroundColor(Color.white)
                        .fontWeight(.thin)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .purple3)
                    
                    Text("and lend Support in bad")
                        .font(.system(size: 25))
                        .foregroundColor(Color.white)
                        .fontWeight(.thin)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .purple3)
                 
                    
                    Text("YOU")
                        .font(.system(size: 30))
                        
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .purple3)
                    
                 
                    
                    Text("Step 1: Select your new Vibe")
                        .font(.system(size: 18))
                        .italic()
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .purple3)
                    
                    Text("Step 2: Type brief explaination")
                        .font(.system(size: 18))
                        .italic()
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .purple3)
                    
                VStack {
          
                  
                    
                    
                    Text("Step 3: Select who you want to notify")
                        .font(.system(size: 18))
                        .italic()
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .purple3)
              
                    
                    Text("-tap [Share] sending push notification")
                        .font(.system(size: 18))
                        .italic()
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .purple3)
                  
                    Spacer()
                         .frame(height: 25)
                VStack {
                    Text("YOUR FRIEND")
                        .font(.system(size: 30))
                        
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .purple3)
                
                    
                    Text("-friend taps your Push Notification")
                        .font(.system(size: 18))
                        .italic()
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .purple3)
                   
                    
                    
                  
                    
                    Text("-taps your planet on homepage")
                        .font(.system(size: 18))
                        .italic()
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .purple3)
                    
                    
                    Text("-taps [Friend's Vibe Changed] from the dropdown")
                        .font(.system(size: 18))
                        .italic()
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .purple3)
      
            VStack {
                    
                    Spacer()
                         .frame(height: 25)
                    
                    Text("FRIEND RESPONDS")
                        .font(.system(size: 30))
                        
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .purple3)
      
                    Text("-with supportive message")
                        .font(.system(size: 18))
                        .italic()
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .purple3)
                    
                    
                    Text("-a virtual Hug")
                        .font(.system(size: 18))
                        .italic()
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .purple3)
                    
                    
                    Text("-or a song that matches your Aura")
                        .font(.system(size: 18))
                        .italic()
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .purple3)
                    
                    
       
  

                Spacer()
                    .frame(height: 140)
            
        }
    }
    
}
}
}
}
}
}
}
}


