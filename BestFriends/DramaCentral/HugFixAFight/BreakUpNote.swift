//
//  BreakUpNote.swift
//  BestFriends
//
//  Created by Social Tech on 5/2/22.
//

import Foundation
import SwiftUI

struct BreakUpNote: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
       NavigationView {
            
            ZStack {
                Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                    .ignoresSafeArea()

                
                Image("purpleBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
               
                AdPlayerView(name: "backgroundAnimation")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                    .offset(y: -250)
                
    //            put in Friend 1 planet
                Image("2 weeks")
            
                
                
                VStack {
                    Text("Don't change yourself so that other people will like you. Be yourself, and the right people will like you.")
                        .font(.system(size: 25))
                        .fontWeight(.light)
                        .foregroundColor(Color.white)
                        .frame(width: 350, height: 120, alignment: .leading)
                    
                    Spacer()
                        .frame(height: 30)
                    
                    Text("")
                        .font(.system(size: 25))
                        .fontWeight(.light)
                        .foregroundColor(Color.blue)
                        .frame(width: 350, height: 120, alignment: .leading)
                    Spacer()
                        .frame(height: 00)
                    
                    NavigationLink(
                        destination: DramaMainView(),
                        label: {
                            Text("“It always seems impossible until it's done.” — Nelson Mandela")
                                .fontWeight(.light)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .frame(width: 350, height: 100, alignment: .leading)
                                .font(.system(size: 25))
                                .padding(10)
                                .background(Color.purple)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                    Spacer()
                        .frame(height: 400)
                 }
                      }
                    
               }
            }
        
}

struct BreakUpNote_Previews : PreviewProvider {
    static var previews: some View {
        BreakUpNote()
    }
}

//
//Text("“Forgiveness is not something we do for other people. It's something we do for ourselves to move on.”")
//    .font(.system(size: 25))
//    .fontWeight(.light)
//    .foregroundColor(Color.white)
//    .frame(width: 350, height: 120, alignment: .leading)
