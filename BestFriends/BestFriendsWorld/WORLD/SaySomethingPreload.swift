//
//  SaySomethingPreload.swift
//  BestFriends
//
//  Created by Social Tech on 10/6/22.
//



import Foundation
import SwiftUI


struct SaySomethingPreload: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    
    @State private var showingAlert = false
    
    var body: some View {
        ZStack {
            ColorManager.purple2
                .ignoresSafeArea()
                .onAppear()
            
            VStack {
              
            
                
                Text("Be part of making")
                    .font(.system(size: 30))
                    .italic()
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Text("social media ")
                    .font(.system(size: 30))
                    .italic()
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
          
                Text("less toxit and negative")
                    .font(.system(size: 30))
                    .italic()
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 40)
                
                Text("Say Something Nice")
                    .font(.system(size: 37))
                 
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                
                Text("to a friend in Chat")
                    .font(.system(size: 37))
                  
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                
                
             
                Spacer()
                    .frame(height: 20)
                
            VStack {
                    
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
                    .frame(height: 20)
                
                Text("Then come back here and \nsend them a push notifictiion \nto make sure they got it.")
                    .font(.system(size: 20))
                    .italic()
                    .foregroundColor(.pink)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                Spacer()
                    .frame(height: 20)

                Text("Just long-tap their messages to you \nsaving them to World Messages, \nfor a rainy day.")
                    .font(.system(size: 20))
                    .italic()
                    .foregroundColor(.pink)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
               
                Spacer()
                    .frame(height: 50)
                    }
                }
                
            }
            
        }
        
}
    

