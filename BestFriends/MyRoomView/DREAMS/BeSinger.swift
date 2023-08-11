//
//  BeSinger.swift
//  BestFriends
//
//  Created by Social Tech on 9/27/22.
//


import Foundation
import SwiftUI
import AVKit


struct BeSinger: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    
    
    var body: some View {
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()

//            AdPlayerView(name: "FieldFlowers")
//                .ignoresSafeArea()
            
//            ColorManager.purple7
//                .ignoresSafeArea()
//                .onAppear()
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            VStack {
                
                Text("YEP!")
                    .font(.system(size: 30))
                    .italic()
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple3)
                
                Text("we own an small indie")
                    .font(.system(size: 20))
                    .italic()
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple3)
             
                
               
                Text("Record Label")
                    .font(.system(size: 40))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple3)
            
                Spacer()
                .frame(height: 35)
                
          
                Text("We can help with Step 1 ")
                    .font(.system(size: 20))
                    .italic()
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple3)
                
                Text("YOUR START")
                    .font(.system(size: 40))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple3)

//
                VStack {
                
                Spacer()
                .frame(height: 35)
            
                
            
                
                    
                    
                    
                    
                    Link(destination: URL(string: "https://socialtechlabs.com/i-wanna-be-a-singer/")!) {
                        
                        Text("See Contest Details")
                            .fontWeight(.thin)
                            .frame(width: 280, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 20))
                            .background(ColorManager.pmbc_green)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    }
                    Spacer()
                    .frame(height: 35)
                    
                    Text("We're recording ONE orginal song \nfor three (3) BestFriends users in 2023")
                        .font(.system(size: 20))
                        .fontWeight(.thin)
                        .multilineTextAlignment(.center)
    //                    .foregroundColor(.white)
                        .foregroundColor(.green)
                    Spacer()
                    .frame(height: 40)
                    
                    Text("* Winners choosen by BestFriends users")
                        .font(.system(size: 17))
                        .italic()
                        .fontWeight(.thin)
                        .multilineTextAlignment(.center)
    //                    .foregroundColor(.white)
                       .foregroundColor(ColorManager.purple3)
             
                    Text("* Winning songs featured on BestFriends \nto get you noticed")
                        .font(.system(size: 17))
                        .italic()
                        .fontWeight(.thin)
                        .multilineTextAlignment(.center)
    //                    .foregroundColor(.white)
                        .foregroundColor(ColorManager.purple3)
                    
                    Spacer()
                    .frame(height: 15)
                    
                    VStack {
      
                    Text("* Give artists all Rights to the song")
                        .font(.system(size: 17))
                        .italic()
                        .fontWeight(.thin)
                        .multilineTextAlignment(.center)
    //                    .foregroundColor(.white)
                       .foregroundColor(ColorManager.purple3)
                    
                    Text("to do with it whatever you please")
                        .font(.system(size: 17))
                        .italic()
                        .fontWeight(.thin)
                        .multilineTextAlignment(.center)
    //                    .foregroundColor(.white)
                       .foregroundColor(ColorManager.purple3)
   
                Spacer()
                .frame(height: 25)
                
                        Button(action: {
                            sessionManager.showLogin()
                        },
                               label: {
                            Text("Home / Chat")
                                .fontWeight(.thin)
                                .frame(width: 200, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
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


