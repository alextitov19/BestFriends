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
            
            
            AdPlayerView(name: "backgroundAnimation")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            
            VStack {
                
                Text("Before we")
                    .font(.system(size: 50, weight: .bold))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.purple)
                
                
                Text("START")
                    .font(.system(size: 80, weight: .bold))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.purple)
                    .kerning(10)
                
                
                Spacer()
                    .frame(height: 60)
                
                Link(destination: URL(string: "https://socialtechlabs.com/fix-a-fight-terms/")!) {
                    
                    Text("View / Agree to Strategy")
                        .fontWeight(.thin)
                        .frame(width: 325, height: 50)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 30))
                        .background(ColorManager.purple3)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                }
                
                Button(action: {
                    sessionManager.showDramaMainView()
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
                .padding(.vertical, 20)
                
            }
        }
    }
}








struct DramaCentralView_Previews : PreviewProvider {
    static var previews: some View {
        DramaCentralView()
    }
}


