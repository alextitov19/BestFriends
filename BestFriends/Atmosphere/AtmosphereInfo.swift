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
            
//                        Spacer()
//                        .frame(height: 20)
//               
//                       
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
                        
                        Text("by the color of the")
                            .font(.system(size: 18))
                            .italic()
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                           .foregroundColor(Color.white)
                        
                        Text("atmosphere around your planet")
                            .font(.system(size: 18))
                            .italic()
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                           .foregroundColor(Color.white)
                    
                        Spacer()
                             .frame(height: 25)
                    
                        VStack {
                            
                        Text("So They Can")
                            .font(.system(size: 30))
                            .italic()
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager .grey3)
                        

                        Text("Cheer you in good times")
                                     .font(.system(size: 25))
                                     .fontWeight(.thin)
                                     .multilineTextAlignment(.center)
                                     .foregroundColor(ColorManager .purple3)
                        
                                 Text("and lend Support in bad")
                                     .font(.system(size: 25))
                                     .fontWeight(.thin)
                                     .multilineTextAlignment(.center)
                                     .foregroundColor(ColorManager .purple3)
                    
            }
                
                
                VStack {
          
                        Spacer()
                            .frame(height: 25)
                 
                    
                    Text("YOU")
                        .font(.system(size: 30))
                        .italic()
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .grey3)
                    
                 
                    
                    Text("Step 1: Select your new Aura")
                        .font(.system(size: 18))
                        .italic()
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                       .foregroundColor(Color.white)
                    
                    Text("Step 2: Type brief explaination")
                        .font(.system(size: 18))
                        .italic()
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                       .foregroundColor(Color.white)
                VStack {
          
                  
                    
                    
                    Text("Step 3: Slect who you want to notify")
                        .font(.system(size: 18))
                        .italic()
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                       .foregroundColor(Color.white)
              
                    
                    Text("-tap [Share] sending push notification")
                        .font(.system(size: 18))
                        .italic()
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                  
                    Spacer()
                         .frame(height: 25)
                VStack {
                    Text("YOUR FRIEND")
                        .font(.system(size: 30))
                        .italic()
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .grey3)
                
                    
                    Text("Your friend taps the push notification")
                        .font(.system(size: 18))
                        .italic()
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                       .foregroundColor(Color.white)
                    
                    
                    Text("-taps your planet on homepage")
                        .font(.system(size: 18))
                        .italic()
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                       .foregroundColor(Color.white)
                    
                    
                    Text("-taps [Friends Aura] from the dropdown")
                        .font(.system(size: 18))
                        .italic()
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                       .foregroundColor(Color.white)
                
                    Spacer()
                         .frame(height: 25)
                    
                    Text("FRIEND RESPONDS")
                        .font(.system(size: 30))
                        .italic()
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .grey3)
      
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
                    
                    
                    Text("-a song that matches your Aura")
                        .font(.system(size: 18))
                        .italic()
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .purple3)
                    
                    
        VStack {
  
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

}
