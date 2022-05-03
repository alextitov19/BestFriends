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
            Image("2 weeks")
                .resizable()
                .frame(width: 300, height: 300)
            
            
            
            VStack {
                
                Text("Your friend: 'hey'")
                    .font(.system(size: 25))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                
                Spacer()
                    .frame(height: 10)
                
                Text("You: 'hey'")
                    .font(.system(size: 25))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                
                
                Spacer()
                    .frame(height: 10)
                
                Text("Your friend again: 'what's up'")
                    .font(.system(size: 25))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                
                
                NavigationLink(
                    destination: Step6_TextingFirst(),
                    label: {
                        Text("Step-6")
                            .fontWeight(.medium)
                            .frame(width: 120, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 25))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                .padding(.vertical, 50)
            }
        }
        
    }
}


struct TextingNote_Previews : PreviewProvider {
    static var previews: some View {
        TextingNote()
    }
}


