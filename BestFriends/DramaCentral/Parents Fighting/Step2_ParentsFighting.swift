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
            
            Image("purpleBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
//
//            AdPlayerView(name: "backgroundAnimation")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//
            
            VStack {
                
                
                Text("After things")
                    .font(.system(size: 50))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.blue)
                
                Spacer()
                    .frame(height: 10)
                
                Text("Calm Down")
                    .font(.system(size: 70))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.blue)
                
                Spacer()
                    .frame(height: 20)
                
                Text("- Tell parents how much their \narguing upsets you")
                    .font(.system(size: 25))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
               
            
      
                VStack {
                    Spacer()
                        .frame(height: 70)
                    
                    Text("Talk it out with others like you")
                        .font(.system(size: 27))
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color.white)
                    
                    Spacer()
                        .frame(height: 20)
                    
                    Text("(Send us an email if you \nwould like us to consider \nbuilding a forum.)")
                        .font(.system(size: 20))
                        .italic()
                        .fontWeight(.light)
                        .foregroundColor(Color.white)
                  
                    Spacer()
                        .frame(height: 20)
                    
                    Text("Admin@SocialTechLabs.com")
                        .font(.system(size: 20))
//                        .italic()
                        .fontWeight(.light)
                        .foregroundColor(Color.white)
                    
                    Spacer()
                        .frame(height: 25)
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
}




struct Step2_ParentsFighting_Previews : PreviewProvider {
    static var previews: some View {
        Step2_ParentsFighting()
    }
}

