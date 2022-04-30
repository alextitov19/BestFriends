//
//  Why.swift
//  BestFriends
//
//  Created by Social Tech on 4/29/22.
//



import Foundation
import SwiftUI

struct Why: View {
    
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
              
//                Image("ballons")
//                    .resizable()
//                    .ignoresSafeArea()
//                    .scaledToFill()
//
                
                AdPlayerView(name: "backgroundAnimation")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                    .offset(y: -250)
                
                VStack {
                    
                    HStack {
                        NavigationLink(
                            destination: DramaMainView(),
                            label: {
                                Text("<")
                                    .fontWeight(.thin)
                                    .frame(width: 100, height: 50)
                                    
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 30))
//                                    .background(ColorManager.purple3)
//                                    .cornerRadius(15)
//                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            })
                    
                   
                    Text("What Started all this")
                        .font(.system(size: 40))
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20)

                    }
                        
                    Text("M E S S?")
                        .font(.system(size: 60))
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20)
                    
                    
                  Spacer()
                        .frame(height: 150)
                    
                    Text("this takes Courage \nto figure out . . . ")
                        .font(.system(size: 30))
                        .italic()
                        .foregroundColor(.white)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    Spacer()
                        .frame(height:35)
                    
                    Link(destination: URL(string: "https://socialtechlabs.com/understanding-the-why/")!) {
               
                           Text("Being REAL with Ourselves")
                                .fontWeight(.thin)
                                .frame(width: 350, height: 50)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    
                          
                        
                    }
                }
            }
        }
    }
}

    
struct Why_Previews : PreviewProvider {
    static var previews: some View {
        Why()
    }
}



