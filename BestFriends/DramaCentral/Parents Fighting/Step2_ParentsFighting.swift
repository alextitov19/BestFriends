//
//  Step2_ParentsFighting.swift
//  BestFriends
//
//  Created by Social Tech on 5/7/22.
//


import Foundation

import SwiftUI
import AVKit

struct Step2_ParentsFighting: View {
    
    @EnvironmentObject var sessionManager: SessionManager

    var body: some View {
        ZStack {
            
            
            Image("blueBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()

    
            VStack {
                
                
                Text("After things")
                    .font(.system(size: 40))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.blue)
                
                Text("Calm Down")
                    .font(.system(size: 60))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.blue)
                
            
                
                Text("Tell parents how much")
                    .font(.system(size: 20))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
               
  Text("their arguing upsets you")
                    .font(.system(size: 20))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                
                Spacer ()
                    .frame(height: 15)
                
                Button(action: {
                    sessionManager.showLogin()
                },
                    label: {
                        Text("Home / Chat")
                            .fontWeight(.thin)
                            .frame(width: 200, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
//
//                VStack {
//                    Spacer()
//                        .frame(height: 40)
//
//                    Text("Talk it out with others")
//                        .font(.system(size: 27))
//                        .fontWeight(.ultraLight)
//                        .foregroundColor(Color.black)
//
//                    Spacer()
//                        .frame(height: 20)
//
//                    Text("(Send us an email if you \nwould like us to consider \nbuilding a forum.)")
//                        .font(.system(size: 20))
//                        .italic()
//                        .fontWeight(.light)
//                        .foregroundColor(Color.white)
//
//                    Spacer()
//                        .frame(height: 10)
//
//                    Text("Admin@SocialTechLabs.com")
//                        .font(.system(size: 20))
////                        .italic()
//                        .fontWeight(.light)
//                        .foregroundColor(Color.white)
//
                    Spacer()
                        .frame(height: 265)
//
//
//                    NavigationLink(
//                        destination: EmptyView(),
//                        label: {
//                            Text("FORUM comming Aug 2022")
//                                .fontWeight(.thin)
//                                .frame(width: 310, height: 40)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .font(.system(size: 22))
//                                .background(ColorManager.purple3)
//                                .cornerRadius(15)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//
//
//                        })
                
            
            }
        }
    }
}





struct Step2_ParentsFighting_Previews : PreviewProvider {
    static var previews: some View {
        Step2_ParentsFighting()
    }
}

