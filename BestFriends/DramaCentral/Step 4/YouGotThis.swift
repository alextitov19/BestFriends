//
//  YouGotThis.swift
//  BestFriends
//
//  Created by Social Tech on 5/1/22.
//

import Foundation
import SwiftUI

struct YouGotThis: View {
    
    var body: some View {
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
//            AdPlayerView(name: "backgroundAnimation")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//
            //            put in Friend 1 planet
//            Image("2 weeks")
//                .resizable()
//                .frame(width: 400, height: 400)
//
            
            
            VStack {
                
                Text("Words")
                    .font(.system(size: 90))
                    .fontWeight(.thin)
                    .foregroundColor(Color.purple)
                    
//
//                Text("BREAK")
//                        .font(.system(size: 60))
//                        .fontWeight(.thin)
//                        .foregroundColor(Color.white)
//                        .kerning(10)
//
                Spacer()
                    .frame(height: 5)
                    
                Text("you end up \ntaking back later")
                    .font(.system(size: 40))
                    .italic()
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.blue)
                Spacer()
                    .frame(height: 60)
                
                Text("Forever burned in their brain")
                    .font(.system(size: 23))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                Spacer()
                    .frame(height: 10)
               
            VStack {
                Text("Unable to be taken back")
                    .font(.system(size: 23))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                Spacer()
                    .frame(height: 10)
                
                Text("Unable to be forgotten")
                    .font(.system(size: 23))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                Spacer()
                    .frame(height: 30)
                
                Text("Erasing all the nice words \nyou've ever said")
                    .font(.system(size: 31))
                    .italic()
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.blue)
                Spacer()
                    .frame(height: 15)
                
                NavigationLink(
                    destination: Step5_Why(),
                    label: {
                        Text("Step-5")
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
}








struct YouGotThis_Previews : PreviewProvider {
    static var previews: some View {
        YouGotThis()
    }
}


