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
                
           
                NavigationLink(destination: PhotoPopView(user: user, friends: friends),
                               label: {
                    Text("SEND a PhotoPOP")
                        .fontWeight(.thin)
                        .frame(width: 300, height: 50)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 30))
                        .background(Color .green)
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

