//
//  HeartToContinue.swift
//  BestFriends
//
//  Created by Social Tech on 9/5/22.
//



import Foundation
import SwiftUI
import AVKit


struct HeartToContinue: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    
    
//    let user: User
//    let friends: [User]
    
    var body: some View {
        ZStack {
          

            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            

            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
            
//            ColorManager.grey4
//                .ignoresSafeArea()
//                .onAppear()
            
        
            VStack {
      
            VStack {
              
                Text("Chasing Down Your")
                    .font(.system(size: 35))
                    .foregroundColor(ColorManager.purple2)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                Text("DREAMS")
                    .font(.system(size: 65))
                    .foregroundColor(ColorManager.purple2)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
//                Text("(a different methodology)")
//                    .font(.system(size: 20))
//                    .italic()
//                    .foregroundColor(ColorManager.red)
//                    .fontWeight(.thin)
//                    .multilineTextAlignment(.center)
               
                NavigationLink(
                    
                    destination: HorizonsPreload1(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres:  friendAtmospheres),
                    label: {
                        Text("Dreams we dare but whisper")
                            .fontWeight(.thin)
                            .foregroundColor(Color.white)
                            .frame(width: 300, height: 80)
                            .font(.system(size: 30))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                    }
                )}
          
        
            Spacer()
                .frame(height: 100)
            
            Text("Work on")
                .font(.system(size: 35))
                
                .foregroundColor(ColorManager.purple2)
                .fontWeight(.thin)
                .multilineTextAlignment(.center)
                
            Text("Fun PROJECTS")
                .font(.system(size: 50))
                .foregroundColor(ColorManager.purple2)
                .fontWeight(.thin)
                .multilineTextAlignment(.center)
      
            
       
                Text("together with your friends")
                    .font(.system(size: 30))
                    
                    .foregroundColor(ColorManager.purple2)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
            
            Spacer()
                .frame(height: 15)
            
            Text("(coming this fall)")
                .font(.system(size: 20))
                .italic()
                .foregroundColor(ColorManager.red)
                .fontWeight(.thin)
                .multilineTextAlignment(.center)
          
            NavigationLink(
                
                destination: EmptyView(),
                label: {
                    Text("HORIZONS")
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        .frame(width: 290, height: 40)
                        .font(.system(size: 30))
                        .background(ColorManager.purple3)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                         
                }
                
            )}
            
            Spacer()
                .frame(height: 30)
              
                }
             
            }
}


    

