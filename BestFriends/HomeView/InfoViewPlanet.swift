//
//  InfoViewPlanet.swift
//  BestFriends
//
//  Created by Social Tech on 7/6/22.
//

import Foundation

import SwiftUI


struct InfoViewPlanet: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    
    
    var body: some View {
        ZStack {
            
//            Image("purpleBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
//
//            AdPlayerView(name: "FieldFlowers")
//                .ignoresSafeArea()
            
            ColorManager.grey4
                .ignoresSafeArea()
                .onAppear()
            
            VStack {
//                Text("Getting STARTED")
////                    .foregroundColor(.gray)
//                    .foregroundColor(ColorManager.grey2)
//                    .font(.system(size: 25, weight: .bold))

                
                Spacer()
                .frame(height: 15)
              
                
            VStack {
             
                
                Text("Friend sent you")
                    .font(.system(size: 35))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple3)
                
                Text("Push Notification")
                    .font(.system(size: 35))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple3)
                
                Text("-Tap friend's planet that")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .foregroundColor(ColorManager.grey1)
//                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                 
                Text("sent notification")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .foregroundColor(ColorManager.grey1)
//                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                
                Text("-Tap appropriate notification")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .foregroundColor(ColorManager.grey1)
//                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                Text("-tap planet to 'hide' dropdown")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .foregroundColor(ColorManager.grey1)
//                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
             
                VStack {
                    Spacer()
                    .frame(height: 35)

                    Text("Create")
                        .font(.system(size: 35))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.purple3)
                    
                    Text("NEW Chat Rooms")
                        .font(.system(size: 35))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.purple3)
                    
                Text("-Tap Friend's Planet")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey1)
                   
                    Text("-Tap [Create NEW Chat Rooms]")
                        .font(.system(size: 15))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.grey1)

                    Text("-Name Chat Room")
                        .font(.system(size: 15))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.grey1)
                }
                
            VStack {
                
                Spacer()
                .frame(height: 35)
                
          
           Text("Chat Rooms")
               .font(.system(size: 35))
               .fontWeight(.light)
               .multilineTextAlignment(.center)
               .foregroundColor(ColorManager.purple3)
           
           Text("-Long-tap messages to save to SmileVault")
               .font(.system(size: 15))
               .fontWeight(.light)
               .multilineTextAlignment(.center)
               .foregroundColor(ColorManager.grey1)
                
                Text("-Long-tap messages to Report Abuse")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey1)
                
                Text("-Tap [Remove Me] to be removed")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey1)
               

                Text("-Tap 'Lock' icon to Hide Chat")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey1)

                Text("-'Un-Hide' Chat enter 4 digit PIN")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey1)
                    Spacer()
                    .frame(height: 0)
                }
                
            VStack {
 
//                
             
              
                Spacer()
                .frame(height: 40)
                
//                Button(action: {
//                    sessionManager.EmptyView()
//                },
//                    label: {
//                        Text("Settings")
//                            .fontWeight(.thin)
//                            .frame(width: 200, height: 40)
//                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                            .font(.system(size: 30))
//                            .background(ColorManager.purple3)
//                            .cornerRadius(15)
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                    })
//                
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
                
//
//                Spacer()
//                .frame(height: 15)
//
//                NavigationLink(
//                    destination: BuiltByTeens2(),
//                    label: {
//                        Text("Team / Demo / Prototypes")
//                            .fontWeight(.thin)
//                            .frame(width: 300, height: 40)
//                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                            .font(.system(size: 25))
//                            .background(ColorManager.purple3)
//                            .cornerRadius(15)
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//                    })
              

                
                Spacer()
                .frame(height: 150)
                

           
               
            }
        }
        
    }
}
}



}
