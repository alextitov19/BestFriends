//
//  InfoView.swift
//  BestFriends
//
//  Created by Social Tech on 6/2/22.
//


import Foundation
import SwiftUI
import AVKit

struct InfoView: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    
    var body: some View {
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            AdPlayerView(name: "green")
                .ignoresSafeArea()
            
            VStack {
                
                Text("Long-tap")
                    .font(.system(size: 40))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
             
                Text("M E S S A G E")
                    .font(.system(size: 55))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.purple)
          
                VStack {
               
                    
                Text("Save SuperCool Messages")
                    .font(.system(size: 25))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                  
                    Spacer()
                    .frame(height: 10)
                }
                
            VStack {
                Text("Delete Message")
                    .font(.system(size: 25))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
              
                Spacer()
                .frame(height: 10)
                
                Text("Report User")
                    .font(.system(size: 24))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                
                
                     Spacer()
                     .frame(height: 30)
                     
               
                Text("Hide Chat - Restore")
                    .font(.system(size: 42))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.purple)
                
                Text("with Secret PIN")
                    .font(.system(size: 35))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
                
                Text("(tap lock icon)")
                    .font(.system(size: 25))
                    .italic()
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                  
                    Spacer()
                    .frame(height: 30)
                }
                
            VStack {
                
                Text("For Your Safety")
                    .font(.system(size: 55))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.purple)
                
                Text("Friends CAN'T")
                    .font(.system(size: 35))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
                
                Text("Download images")
                    .font(.system(size: 25))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
              
                Text("Copy/paste messages")
                    .font(.system(size: 25))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                Text("Screen-shot Chat messages")
                    .font(.system(size: 24))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                
                Spacer()
                .frame(height: 45)
                
           
                NavigationLink(
                    destination: EmptyView(),
                    label: {
                        Text("back to Chat")
                            .fontWeight(.thin)
                            .frame(width: 200, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                
               
            }
        }
        
    }
}
}








struct InfoView_Previews : PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}


