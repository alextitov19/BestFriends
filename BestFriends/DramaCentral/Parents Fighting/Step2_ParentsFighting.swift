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
                    
                    Text("Talk it out with others")
                        .font(.system(size: 40))
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color.blue)
                    
                    Text("comming fall 2022")
                        .font(.system(size: 25))
                        .italic()
                        .fontWeight(.light)
                        .foregroundColor(Color.white)
                    
                    NavigationLink(
                        destination: ParentsFighting(),
                        label: {
                            Text("Anonymous FORUM ???")
                                .fontWeight(.thin)
                                .frame(width: 310, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                      
                        
                        
                        })
                
                VStack {
                    Spacer()
                        .frame(height: 60)
                    
                    NavigationLink(
                        destination: HomeView(),
                        label: {
                            Text("HOME")
                                .fontWeight(.thin)
                                .frame(width: 100, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                      
                        
                        
                        })
                
//
//                Button(action: {
//                    sessionManager.showDramaMainView()
//                }, label: {
//                    Text("NEXT")
//                        .fontWeight(.thin)
//                        .frame(width: 100, height: 40)
//                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                        .font(.system(size: 30))
//                        .background(ColorManager.purple3)
//                        .cornerRadius(15)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                })
//                .padding(.vertical, 40)
                
            }
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

