//
//  ParentsFighting.swift
//  BestFriends
//
//  Created by Social Tech on 5/3/22.
//

import Foundation
import Foundation
import SwiftUI

struct ParentsFighting: View {
    
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
                
                
                Text("OMG, my parents are")
                    .font(.system(size: 35))
                    .fontWeight(.thin)
                    .foregroundColor(Color.white)
                    
                    
                Text("FIGHTING")
                        .font(.system(size: 60))
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        .kerning(10)
                
                Text("AGAIN")
                        .font(.system(size: 60))
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        .kerning(10)
                
                Spacer()
                    .frame(height: 30)
                
                Text("We know how unsettling")
                    .font(.system(size: 31))
                    .italic()
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.blue)
             
                VStack {
                
                Text("this can be")
                    .font(.system(size: 31))
                    .italic()
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.blue)
                
                Spacer()
                    .frame(height: 30)
                
                Text("Hold tighly to")
                    .font(.system(size: 35))
                    .fontWeight(.thin)
                    .foregroundColor(Color.white)
                    
                    
                Text("YOURSELF")
                        .font(.system(size: 45))
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        .kerning(10)
                }
                    
                    
                VStack {
               
                    Spacer()
                    .frame(height: 15)
                    
                
                
                Spacer()
                    .frame(height: 30)
                
                Text("Are they getting a divorce?")
                    .font(.system(size: 23))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                Spacer()
                    .frame(height: 10)
                }
                
            VStack {
                Text("What happens to me?")
                    .font(.system(size: 23))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                Spacer()
                    .frame(height: 10)
                
                Text("Sometimes I really hate it here")
                    .font(.system(size: 23))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                Spacer()
                    .frame(height: 15)
                
                NavigationLink(
                    destination: JournalFight(),
                    label: {
                        Text("My Journal")
                            .fontWeight(.thin)
                            .frame(width: 200, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                        
                        
                Spacer()
                    .frame(height: 30)
                
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








struct ParentsFighting_Previews : PreviewProvider {
    static var previews: some View {
        ParentsFighting()
    }
}


