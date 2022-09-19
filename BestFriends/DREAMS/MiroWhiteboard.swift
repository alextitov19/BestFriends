//
//  MiroWhiteboard.swift
//  BestFriends
//
//  Created by Social Tech on 9/14/22.
//



import Foundation
import SwiftUI


struct MiroWhiteboard: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    
    var body: some View {
        ZStack {
            ColorManager.grey4
                .ignoresSafeArea()
                .onAppear()
            
            VStack {
               
               
            VStack {
//                Text("If you're a visual person")
//                    .font(.system(size: 35))
//                    .foregroundColor(.white)
//                    .fontWeight(.ultraLight)
//                    .multilineTextAlignment(.center)
                
                Text("Mapping your")
                    .font(.system(size: 35))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                
                Text("dream's journey")
                    .font(.system(size: 35))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
//                Text("on a digital whiteboard")
//                    .font(.system(size: 35))
//                    .foregroundColor(.white)
//                    .fontWeight(.ultraLight)
//                    .multilineTextAlignment(.center)
                Spacer()
                    .frame(height:50)
                
                Text("for now you can use")
                    .font(.system(size: 20))
                    .italic()
                    .foregroundColor(ColorManager.pmbc_green)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Text("a free version of Miro")
                    .font(.system(size: 20))
                    .italic()
                    .foregroundColor(ColorManager.pmbc_green)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                VStack {
               
                    
                    Link(destination: URL(string: "https://miro.com")!) {
                        
                        Text("Miro Visual Platform")
                            .fontWeight(.thin)
                            .frame(width: 310, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 25))
                            .background(ColorManager.pmbc_green)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    }
                      
                    
//                    Text("If we find that you like using Miro we will build this functionality into BestFriends")
//                        .font(.system(size: 20))
//                        .italic()
//                        .foregroundColor(ColorManager.pmbc_green)
//                        .fontWeight(.ultraLight)
//                        .multilineTextAlignment(.center)
//                        .padding()
                    }
                }
                
            }
            
        }
        
    }
    
}
