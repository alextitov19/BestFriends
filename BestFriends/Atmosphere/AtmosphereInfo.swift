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
            
            Text("Updating Your")
                .font(.system(size: 30))
                .fontWeight(.thin)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.blue)
         
            Text("A T O M S P H E R E")
                .font(.system(size: 37))
                .fontWeight(.thin)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.blue)
            
          
            
            Spacer()
            .frame(height: 15)
            
            Text("Friends can offer help on bad days")
                .font(.system(size: 17))
                .italic()
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.white)
    
       
       Text("Celebrate with you on great days")
           .font(.system(size: 20))
           .italic()
           .fontWeight(.light)
           .multilineTextAlignment(.center)
           .foregroundColor(Color.white)

         
            VStack {
           
                Spacer()
                .frame(height: 25)
                
                Text("Atmosphere Surrounding Planet")
                    .font(.system(size: 20))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    
                   .foregroundColor(Color.purple)
         
                Text("Blue ... 'negative'")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey1)
              
                
                
                VStack {
                    
                    Text("Green ... 'I'm Ok'")
                        .font(.system(size: 15))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.grey1)
                    
                    Text("Orange ... 'bored'")
                        .font(.system(size: 15))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.grey1)
                    
                    
                    Text("Yellow ... 'positive'")
                        .font(.system(size: 15))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.grey1)
                Spacer()
                .frame(height: 20)
                
                Text("Atmosphere instantly shows")
                    .font(.system(size: 20))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                   .foregroundColor(Color.purple)
                    
                    Text("on homepage")
                        .font(.system(size: 20))
                        .fontWeight(.thin)
                        .multilineTextAlignment(.center)
                       .foregroundColor(Color.purple)
                    
                    VStack {
                        
                Spacer()
                .frame(height: 20)
                
                Text("Type a short explaination")
                    .font(.system(size: 20))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                   .foregroundColor(Color.purple)
                    
                    Text("of whats going on")
                        .font(.system(size: 20))
                        .fontWeight(.thin)
                        .multilineTextAlignment(.center)
                       .foregroundColor(Color.purple)
                
                Text("-Letting friends know what's up")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey1)
                    
                    Text("-Makes entry into 'Tracker'")
                        .font(.system(size: 15))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.grey1)

                    
            }
            
        VStack {
        
                
            Spacer()
                 .frame(height: 20)
                 
           
            Text("Sending Push Notification")
                .font(.system(size: 20))
                .fontWeight(.thin)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.purple)
            
            Text("-Tap the names of the friends \nyou want to notify")
                .font(.system(size: 15))
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .foregroundColor(ColorManager.grey1)
            Text("-Tap [Submit]")
                .font(.system(size: 15))
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .foregroundColor(ColorManager.grey1)
            
                Spacer()
                .frame(height: 0)
            }
            
        VStack {
  Spacer()
            .frame(height: 15)
            

            
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
          
            Spacer()
                 .frame(height: 50)
        }
    }
    
}
}
}
}
}

}
