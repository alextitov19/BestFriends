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
            
            Text("Why Update Your")
                .font(.system(size: 30))
                .fontWeight(.thin)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.blue)
         
            Text("A T M O S P H E R E ?")
                .font(.system(size: 35))
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
           .font(.system(size: 17))
           .italic()
           .fontWeight(.light)
           .multilineTextAlignment(.center)
           .foregroundColor(Color.white)
            
            Spacer()
            .frame(height: 15)

//            Text("Becoming a BestFriend")
//                .font(.system(size: 30))
//                .fontWeight(.thin)
//                .multilineTextAlignment(.center)
//                .foregroundColor(Color.blue)
            Text("By doing the same for them")
                .font(.system(size: 20))
                .fontWeight(.thin)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.blue)
          
            
            Text("Become a BestFriend")
                .fontWeight(.thin)
                .frame(width: 300, height: 50)
                .foregroundColor(Color .blue)
                .font(.system(size: 30))
                .background(ColorManager.grey2)
                .cornerRadius(15)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
           
         
            
            
            
            VStack {
           
                Spacer()
                .frame(height: 25)
                
                Text("Update your Atmosphere")
                    .font(.system(size: 20))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    
                   .foregroundColor(Color.purple)
         
                Text("'Negative' ... Blue")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey1)
              
                
                
                VStack {
                    
                    Text("'I'm Ok' ... Green")
                        .font(.system(size: 15))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.grey1)
                    
                    Text("'Bored' ... Orange")
                        .font(.system(size: 15))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.grey1)
                    
                    
                    Text("'Positive' ... Yellow")
                        .font(.system(size: 15))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.grey1)
                Spacer()
                .frame(height: 10)
                
                Text("Updated Atmosphere instantly shows")
                        .font(.system(size: 15))
                        .italic()
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                   .foregroundColor(Color.white)
                    
                    Text("on friend's homepage")
                        .font(.system(size: 15))
                        .italic()
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                       .foregroundColor(Color.white)
                    
                    VStack {
            
                        
                        Spacer()
                        .frame(height: 20)

                        Text("Alerting Friends")
                            .font(.system(size: 30))
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.blue)
//
//                        Text("By doing the same for them")
//                            .font(.system(size: 20))
//                            .fontWeight(.thin)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(Color.blue)
//
                        
//
//                Text("Type a short explaination")
//                    .font(.system(size: 20))
//                    .fontWeight(.thin)
//                    .multilineTextAlignment(.center)
//                   .foregroundColor(Color.purple)
//
//                    Text("of whats going on")
//                        .font(.system(size: 20))
//                        .fontWeight(.thin)
//                        .multilineTextAlignment(.center)
//                       .foregroundColor(Color.purple)
                
                Text("-Type short explaination \nof whats going on")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey1)
                   
                    
//                    Text("-Mak")
//                        .font(.system(size: 15))
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager.grey1)

                    
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
