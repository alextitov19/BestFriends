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
    
//    let user: User
//    let friends: [User]
    
    var body: some View {
        ZStack {
//            ColorManager.grey4
//                .ignoresSafeArea()
//                .onAppear()
//
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
//            AdPlayerView(name: "Planet6")
//                .ignoresSafeArea()
//                .blendMode(.screen)
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
        }
            VStack {
              
                Text("DREAMS")
                    .font(.system(size: 45))
                    .foregroundColor(.white)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
               
                NavigationLink(
                    
                    destination: HorizonsPreload1(),
                    label: {
                        Text("Your Life's Dreams")
                            .fontWeight(.thin)
                            .foregroundColor(Color.white)
                            .frame(width: 250, height: 40)
                            .font(.system(size: 25))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                    }
                )}
          
            VStack {
            Spacer()
                .frame(height: 30)
            
                Text("HORIZONS")
                    .font(.system(size: 45))
                    
                    .foregroundColor(.white)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
            Text("Short-term PROJECTS")
                .font(.system(size: 25))
                
                .foregroundColor(.white)
                .fontWeight(.thin)
                .multilineTextAlignment(.center)
            
                Text("Together with your friends")
                    .font(.system(size: 20))
                    .italic()
                    .foregroundColor(.white)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
          

                  
                        Text("(this fall)")
                            .font(.system(size: 30))
                            .italic()
                            .foregroundColor(ColorManager.pmbc_green)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                 
                
           
                
                
                    Spacer()
                        .frame(height: 300)


               
                
                    
                }
                
            }
            
        }
        
    
    

