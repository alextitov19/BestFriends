//
//  SaySomethingNice6.swift
//  BestFriends
//
//  Created by Social Tech on 11/30/22.
//



import Foundation

import Foundation
import SwiftUI

struct SaySomethingNice6: View {
    
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
          
                    Text("When you send 'Nice' message")
                        .font(.system(size: 30))
                        
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .purple3)
                 
                    Spacer()
                        .frame(height: 30)
                    
                    Text("Your friend will get a")
                        .font(.system(size: 25))
                        .foregroundColor(Color.white)
                        .fontWeight(.thin)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .purple3)
                    
                    Text("Push Notification")
                        .font(.system(size: 25))
                        .foregroundColor(Color.white)
                        .fontWeight(.thin)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .purple3)
                 
                    Spacer()
                        .frame(height: 30)
                    
//                    Text("They Tap it")
//                        .font(.system(size: 30))
//
//                        .fontWeight(.regular)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager .purple3)
//
                    Spacer()
                        .frame(height: 60)
                    
                    Text("Step 1: On homepage they tap \nyour planet")
                        .font(.system(size: 18))
                        .italic()
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .purple3)
                   
                    Spacer()
                        .frame(height: 20)
                    
                    
                    Text("Step 2: Select [Friend sent 'Nice' \nmessage} from dropdown")
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



