//
//  DramaCentralView.swift
//  BestFriends
//
//  Created by Social Tech on 4/29/22.
//

import Foundation

import SwiftUI
import AVKit

struct DramaCentralView: View {
    
    @EnvironmentObject var sessionManager: SessionManager

    var body: some View {
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
           
            VStack {
                Text("helping you through")
                    .font(.system(size: 25))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                Spacer()
                    .frame(height: 25)
                Text("the WAITING")
                    .font(.system(size: 40))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.blue)
                    .kerning(10)
                Text("NIGHTMARE")
                    .font(.system(size: 55))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.blue)
                    .kerning(10)
                
                Spacer()
                    .frame(height: 35)
                
                Text("Wow, you reached out first")
                    .font(.system(size: 25))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                Text("with a text message in Chat")
                    .font(.system(size: 25))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                
                Text("trying to fix this MESS and . . .")
                    .font(.system(size: 25))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                
                Spacer()
                    .frame(height: 40)
                
                VStack {
                Text("NO")
                    .font(.system(size: 80))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.blue)
                    .kerning(10)
        
                Text("RESPONSE")
                    .font(.system(size: 60))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.blue)
                    .kerning(10)
              
                Button(action: {
                }, label: {
                    Text("NEXT")
                        .fontWeight(.thin)
                        .frame(width: 100, height: 40)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 30))
                        .background(ColorManager.purple3)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
              
             
              
                  
                })
           
                .padding(.vertical, 40)
                
            }
        }
    }
}

}






struct DramaCentralView_Previews : PreviewProvider {
    static var previews: some View {
        DramaCentralView()
    }
}


