//
//  TextingNote.swift
//  BestFriends
//
//  Created by Social Tech on 5/2/22.
//

import Foundation

import Foundation
import SwiftUI

struct TextingNote: View {
    
    var body: some View {
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            AdPlayerView(name: "backgroundAnimation")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            //            put in Friend 1 planet
//            Image("2 weeks")
//                .resizable()
//                .frame(width: 400, height: 400)
//
            
            
            VStack {
                Text("You Got ")
                    .font(.system(size: 50, weight: .bold))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.purple)
                
                
                Text("T H I S")
                    .font(.system(size: 80, weight: .bold))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.purple)
                    .kerning(10)
                
                
                Spacer()
                    .frame(height: 100)
                
                Text("“It always seems impossible until it's done.” — Nelson Mandela")
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 310, height: 100, alignment: .leading)
                    .font(.system(size: 25))
                    .padding(10)
                    .background(Color.purple)
                    .cornerRadius(15)
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                
                
                
                Spacer()
                    .frame(height: 170)
              
                
                NavigationLink(
                    destination: Step6_TextingFirst(),
                    label: {
                        Text("Step-6")
                            .fontWeight(.thin)
                            .frame(width: 110, height: 40)
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


struct TextingNote_Previews : PreviewProvider {
    static var previews: some View {
        TextingNote()
    }
}


