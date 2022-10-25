//
//  InfoKeepNotificationsOn.swift
//  BestFriends
//
//  Created by Social Tech on 10/25/22.
//



import Foundation
import SwiftUI


struct InfoKeepNotificationsOn: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    
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
            
//            VStack {

          
              
                
            VStack {
                Text("Add Friends")
                    .font(.system(size: 35))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple3)

                Text("-Tap the [Add & Invite Friends] circle")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey1)
                     
                     Text("-Add up to 5 friends")
                         .font(.system(size: 15))
                         .fontWeight(.light)
                         .multilineTextAlignment(.center)
                         .foregroundColor(ColorManager.grey1)
                     
                     Text("-Friend show up as planets on homepage")
                         .font(.system(size: 15))
                         .fontWeight(.light)
                         .multilineTextAlignment(.center)
                         .foregroundColor(ColorManager.grey1)
                    


//                Spacer()
//                .frame(height: 15)

                VStack {

          
                VStack {
                    Spacer()
                    .frame(height: 15)

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
                    .foregroundColor(ColorManager.red)
                   
                    Text("-Tap [Create NEW Chat Rooms]")
                        .font(.system(size: 15))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.red)

                    Text("-Name Chat Room")
                        .font(.system(size: 15))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.red)
                    
                    Text("-Exit app and re-enter")
                        .font(.system(size: 23))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.red)
                    
                    Text("  to Activate NEW Room")
                        .font(.system(size: 23))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.red)
                    
                    Text("-Try 'motion' background in Settings")
                        .font(.system(size: 15))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                    
                    
                }
                
            VStack {
                
                Spacer()
                .frame(height: 15)
                
          
           Text("Inside Chat Rooms")
               .font(.system(size: 35))
               .fontWeight(.light)
               .multilineTextAlignment(.center)
               .foregroundColor(ColorManager.purple3)
           
           Text("-Long-tap messages to save to 'Nice' messages")
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
                    .frame(height: 20)
                }
                
           VStack {
               
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
                
                Text("from dropdown menu")
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
   
               NavigationLink(

                   destination: SettingsNotificationsView(),
                   label: {
                       Text("Why keep Notifications 'ON'")
                           .fontWeight(.thin)
                           .foregroundColor(Color.white)
                           .frame(width: 310, height: 40)
                           .font(.system(size: 25))
                           .background(ColorManager.purple3)
                           .cornerRadius(15)
                           .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)

                   }
               )}
             
              
                Spacer()
                .frame(height: 15)
                
                VStack {
//                        NavigationLink(
//                            destination: SettingsView(user: user, atmosphere: atmosphere),
//                            label: {
//                                Text("SETTINGS PAGE")
//                                    .fontWeight(.thin)
//                                    .frame(width: 275, height: 40)
//                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                    .font(.system(size: 30))
//                                    .background(ColorManager.purple3)
//                                    .cornerRadius(15)
//                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//
//                            })
            
//                    Spacer()
//                    .frame(height: 20)
//
//                    Button(action: {
//                        sessionManager.showLogin()
//                    },
//                        label: {
//                            Text("Home / Chat")
//                                .fontWeight(.thin)
//                                .frame(width: 200, height: 40)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .font(.system(size: 30))
//                                .background(ColorManager.purple3)
//                                .cornerRadius(15)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                        })
                
                Spacer()
                .frame(height: 100)
                

           
               
            }
        }
        
    }
}
}
}


