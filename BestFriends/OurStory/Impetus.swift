//
//  Impetus.swift
//  BestFriends
//
//  Created by Social Tech on 4/27/22.
//


import Foundation
import SwiftUI

struct Impetus: View {
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                    .ignoresSafeArea()
//                Image("purpleBackground")
//                    .resizable()
//                    .ignoresSafeArea()
//                    .scaledToFill()
//
                Image("Shayla3")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
//                
//                AdPlayerView(name: "backgroundAnimation")
//                    .ignoresSafeArea()
//                    .blendMode(.screen)
//                    .offset(y: -250)
//                
                VStack {
                    
//
//                    Text("shayla")
//                        .font(.system(size: 50))
//                        .foregroundColor(.white)
//                        .fontWeight(.ultraLight)
//                        .multilineTextAlignment(.center)
//                        .padding(.horizontal, 0)
//
//                    Spacer()
//                        .frame(height: 100)
//
//                    Text("say something nice")
//                        .font(.system(size: 30))
//                        .italic()
//                        .foregroundColor(.white)
//                        .fontWeight(.heavy)
//                        .multilineTextAlignment(.center)
//                        .padding(.horizontal, 0)
//                    Spacer()
//                        .frame(height: 5)
//
//                    Text("to your freind in Chat")
//                        .font(.system(size: 30, weight: .bold))
//                        .italic()
//                        .foregroundColor(.white)
//                        .fontWeight(.heavy)
//                        .multilineTextAlignment(.leading)
//                        .padding(.horizontal, 0)
//
                  
                    
                    Spacer()
                        .frame(height: 500)
                    
                    Text("shayla")
                        .font(.system(size: 45, weight: .bold))
                        .fontWeight(.ultraLight)
                        .foregroundColor(.white)
//                        .italic()
                        .multilineTextAlignment(.center)
                         .padding(.horizontal, 0)
                    
                    
                    Spacer()
                        .frame(height: 10)
                    
                    Link(destination: URL(string: "https://www.hrwmusicgroup.com/")!) {

                            Text("the story")
                                .fontWeight(.light)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .frame(width: 80, height: 20, alignment: .leading)
                                .font(.system(size: 20))
                                .padding(10)
                                .background(Color.gray)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)


                               
                 }
                      }
                    
               }
            }
        }
}

struct Impetus_Previews : PreviewProvider {
    static var previews: some View {
        Impetus()
    }
}


