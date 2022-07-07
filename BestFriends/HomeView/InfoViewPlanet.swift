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
    
//    @State var group: Group
//    @State var user: User
//  
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
                Text("Getting STARTED")
//                    .foregroundColor(.gray)
                    .foregroundColor(ColorManager.grey2)
                    .font(.system(size: 25, weight: .bold))
               
                Spacer()
                .frame(height: 5)
              
                Text("Tap Center Planet on Homepage")
                    .font(.system(size: 20))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.purple)
                
                Text("-Planet menu page show up")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(Color.white)
                    .foregroundColor(ColorManager.grey1)
                
                Spacer()
                .frame(height: 15)
             
              
                    
                
                
            VStack {
                
            
             
                Text("Add Friends")
                    .font(.system(size: 20))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.purple)
                
                Text("-Tap [Add My Friends] circle \n-Add up to five friends \n-Their 'Planets' will appear on Homepage")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
//                    .foregroundColor(Color.white)
                    .foregroundColor(ColorManager.grey1)
                
                
                Spacer()
                .frame(height: 15)

                Text("Create NEW Chat Rooms")
                    .font(.system(size: 20))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    
                   .foregroundColor(Color.purple)
                
                
             
                VStack {
               
                    
                Text("-Tap Friend's Planet \n-Tap [Create NEW Chat Rooms] \n-Name Chat Room \n-We send Push Notification to Friend")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey1)
//                    .foregroundColor(.gray)

             
                }
                
            VStack {
                
                Spacer()
                .frame(height: 15)
                
          
           Text("My Chat Rooms")
               .font(.system(size: 20))
               .fontWeight(.thin)
               .multilineTextAlignment(.center)
               .foregroundColor(Color.purple)
           
           Text("-Use 'Pullup' to see existing Rooms \nTap [Remove Me] to be removed \nTap 'HOME' icon to Exit")
               .font(.system(size: 15))
               .fontWeight(.light)
               .multilineTextAlignment(.center)
               .foregroundColor(ColorManager.grey1)
//               .foregroundColor(.gray)
                    
                Spacer()
                     .frame(height: 15)
                     
               
                Text("Hide Chat")
                    .font(.system(size: 20))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.purple)
                
                Text("-Tap 'Lock' icon \nTo 'Un-Hide' enter 4 digit PIN")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey1)
//                    .foregroundColor(.gray)
                
                    Spacer()
                    .frame(height: 0)
                }
                
            VStack {
                
//                Text("Planet page Circles")
//                    .font(.system(size: 20))
//                    .fontWeight(.thin)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(Color.purple)
//                
//                Text("-[My Room] having a bad day \n-[My Atmosphere] mood changed \n[Drama & Fights] drama in FriendGroups \n{Horizons] building Dreams together")
//                    .font(.system(size: 15))
//                    .fontWeight(.light)
//                    .foregroundColor(ColorManager.grey1)
////                    .foregroundColor(.gray)
//                    .multilineTextAlignment(.center)
//                
                Spacer()
                     .frame(height: 15)
                
                Text("Received Push Notification")
                    .font(.system(size: 20))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.purple)
                
                Text("-Tap friend's planet that sent notification \n-Select appropriate button from dropdown")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .foregroundColor(ColorManager.grey1)
//                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                 
         
                Spacer()
                .frame(height: 30)
                
//
//                        Text("back to Chat")
//                            .fontWeight(.thin)
//                            .frame(width: 200, height: 40)
//                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                            .font(.system(size: 30))
//                            .background(ColorManager.purple3)
//                            .cornerRadius(15)
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2).onTapGesture(perform: {
//                                sessionManager.showHome()
//                            })
//
//
//                   Text("back to HomePage")
//                            .fontWeight(.thin)
//                            .frame(width: 300, height: 40)
//                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                            .font(.system(size: 30))
//                            .background(ColorManager.purple3)
//                            .cornerRadius(15)
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2).onTapGesture(perform: {
//
//                            })
               
                Spacer()
                .frame(height: 15)
               
            }
        }
        
    }
}
}



}



//
//struct InfoViewPlanet_Previews : PreviewProvider {
//    static var previews: some View {
//        InfoViewPlanet()
//    }
//}



//
//func showHome() {
//    appState = .home
//}
