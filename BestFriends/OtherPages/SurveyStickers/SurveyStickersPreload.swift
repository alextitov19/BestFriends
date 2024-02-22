//
//  SurveyStickersPreload.swift
//  BestFriends
//
//  Created by Social Tech on 11/18/22.
//


import Foundation
import SwiftUI


struct SurveyStickersPreload: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
//    let user: User
//    let atmosphere: Atmosphere
//    let friends: [User]
//    let groups: [Group]
//    let friendAtmospheres: [Atmosphere]
//
    var body: some View {
        ZStack {

            Color .black
                .ignoresSafeArea()
                .onAppear()
            
            //            Image("purpleBackground")
            //                 .resizable()
            //                 .ignoresSafeArea()
            //                 .scaledToFill()
            //
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)

            
            VStack {
//                        Spacer()
//                            .frame(height: 30)
                        
                        Text("We would love to")
        //                    .font(.system(size: 25, weight: .bold))
                            .font(.system(size: 35, weight: .bold))
                            .foregroundColor(ColorManager .purple3)
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                            .opacity(0.50)
        //                    .foregroundColor(ColorManager.purple5)
        //                    .fontWeight(.ultraLight)
                            .multilineTextAlignment(.center)

           
                        
                        
                        Text("hear from you")
        //                    .font(.system(size: 25, weight: .bold))
                            .font(.system(size: 35, weight: .bold))
                            .foregroundColor(ColorManager .purple3)
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                            .opacity(0.50)
        //                    .foregroundColor(ColorManager.purple5)
        //                    .fontWeight(.ultraLight)
                            .multilineTextAlignment(.center)
                
                
                
                
                
                        Link(destination: URL(string: "https://docs.google.com/forms/d/e/1FAIpQLSdpTah0IIOpTjgGgC6x8hxxA5zs5MA6JZWohmd0bKwXDzK0bQ/viewform?usp=sf_link")!) {
                            
                            Text("Take, 90-second Survey")
                                .fontWeight(.thin)
                                .frame(width: 310, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 25))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        }
                     
                
                Spacer()
                    .frame(height: 30)
                
                Text("Get free sticker pack")
//                    .font(.system(size: 25, weight: .bold))
                    .font(.system(size: 20, weight: .light))
                    .italic()
                    .foregroundColor(ColorManager .purple5)
//                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                    .opacity(0.50)
//                    .foregroundColor(ColorManager.purple5)
//                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
    
                
                    }
                }
                
            }
}
    
    
    


