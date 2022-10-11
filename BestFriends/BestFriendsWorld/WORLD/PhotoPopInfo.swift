//
//  PhotoPopInfo.swift
//  BestFriends
//
//  Created by Social Tech on 10/10/22.
//



import Foundation
import SwiftUI


struct PhotoPopInfo: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    
    @State private var showingAlert = false
    
    var body: some View {
        ZStack {
            ColorManager.grey2
                .ignoresSafeArea()
                .onAppear()
            
            VStack {
              
            
                
                Text("Send image that will ")
                    .font(.system(size: 30))
                
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Text("make your friends ")
                    .font(.system(size: 30))
                
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
          
                Text("S M I L E")
                    .font(.system(size: 70))
                    
                    .foregroundColor(.purple)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 90)
          
                
            VStack {
                
                Text("When they")
                    .font(.system(size: 20))
                 
                    .foregroundColor(.white)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                Text("S H A K E")
                    .font(.system(size: 45))
                  
                    .foregroundColor(.purple)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                
                Text("their phone")
                    .font(.system(size: 20))
                  
                    .foregroundColor(.white)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                Text("image")
                    .font(.system(size: 20))
                  
                    .foregroundColor(.white)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                Text("Pops-UP \nFull-screen")
                    .font(.system(size: 45))
                  
                    .foregroundColor(.purple)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 65)
             
                Text("(tap images to remove)")
                    .font(.system(size: 17))
                    .italic()
                    .foregroundColor(.red)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
            VStack {
               
                Spacer()
                    .frame(height: 40)
                
           
//
//
//                Text("- Send push notifictiion to alert them")
//                    .font(.system(size: 20))
//                    .italic()
//                    .foregroundColor(.pink)
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//
//
//
               
                Spacer()
                    .frame(height: 50)
                    }
                }
                
            }
            
        }
        
}
}

