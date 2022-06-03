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
    
    var body: some View {
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            AdPlayerView(name: "FieldFlowers")
                .ignoresSafeArea()
            
            VStack {
                
                Text("Long-tap")
                    .font(.system(size: 40))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
             
                Text("M E S S A G E")
                    .font(.system(size: 60))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.purple)
                
                Text("for dropdown")
                    .font(.system(size: 40))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black)
                
                
                    
                VStack {
               
                    Spacer()
                    .frame(height: 250)
                    
//                    Text("Questioning?")
//                        .font(.system(size: 40))
//                        .fontWeight(.thin)
//                        .foregroundColor(Color.blue)
//                        .kerning(10)
//           
//                    Spacer()
//                    .frame(height: 20)
                    
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
                    .frame(height: 40)
                
                NavigationLink(
                    destination: Step1_ParentsFighting(),
                    label: {
                        Text("???????")
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


