//
//  PhotoPOPFGPreload.swift
//  BestFriends
//
//  Created by Social Tech on 11/14/22.
//


import Foundation
import SwiftUI


struct PhotoPOPFGPreload: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    
    @State private var showingAlert = false
    
    var body: some View {
        ZStack {
            ColorManager.grey4
                .ignoresSafeArea()
                .onAppear()
            
            VStack {
              
            
                
                Text("Connecting FriendGroups")
                    .font(.system(size: 30))
                    .foregroundColor(ColorManager .purple3)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                
                
                Spacer()
                    .frame(height: 20)
                
                Text("W O R L D W I D E")
                    .font(.system(size: 40))
                    .foregroundColor(ColorManager .purple4)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 15)
                
                Text("with")
                    .font(.system(size: 20))
                    .foregroundColor(ColorManager .purple4)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
          
                Text("Images")
                    .font(.system(size: 50))
                    .foregroundColor(ColorManager .purple4)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
          
                
                Spacer()
                    .frame(height: 150)
             
                
                Text("Designed for users")
                    .font(.system(size: 25))
                 
                    .foregroundColor(.white)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                Text("in mutiple FriendGroups")
                    .font(.system(size: 25))
                 
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                
                VStack {
                        
 
                Spacer()
                    .frame(height: 50)
                
 

                Text("comming soon")
                    .font(.system(size: 20))
                    .italic()
                    .foregroundColor(.green)
                    .fontWeight(.light)
                    .padding()
              
                    Spacer()
                    .frame(height: 50)
                    }
                }
                
            }
            
        }
        
}
    

