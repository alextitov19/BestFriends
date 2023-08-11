//
//  TwinkieDream.swift
//  BestFriends
//
//  Created by Social Tech on 9/16/22.
//



import Foundation
import SwiftUI
import AVKit


struct TwinkieDream: View {
    
    @EnvironmentObject var sessionManager: SessionManager
  
    let user: User
    let friends: [User]
    
    
    
//    let user: User
//    let friends: [User]
    
    var body: some View {
        ZStack {
//            ColorManager.grey4
//                .ignoresSafeArea()
//                .onAppear()
//
            Image("Twinkie")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
//            AdPlayerView(name: "Planet6")
//                .ignoresSafeArea()
//                .blendMode(.screen)
            
//            AdPlayerView(name: "Dreams1")
//                .ignoresSafeArea()
//                .blendMode(.screen)
            
            VStack {
           
              
                VStack {

                
//                    Text("Oops,")
//                        .font(.system(size: 40))
//                        .foregroundColor(ColorManager.purple2)
//                        .fontWeight(.thin)
//                        .multilineTextAlignment(.center)
//
//
//
//                        Spacer()
//                            .frame(height: 30)
//
//                Text("we thought our")
//                    .font(.system(size: 27))
//                    .foregroundColor(ColorManager.purple2)
//                    .fontWeight(.thin)
//                    .multilineTextAlignment(.center)
//
//                    Text("dreams lasted")
//                        .font(.system(size: 27))
//                        .foregroundColor(ColorManager.purple2)
//                        .fontWeight(.thin)
//                        .multilineTextAlignment(.center)
//
//
//                    Text("forever")
//                        .font(.system(size: 80))
//                        .italic()
//                        .foregroundColor(ColorManager.purple2)
//                        .fontWeight(.thin)
//                       .multilineTextAlignment(.center)
//
                   
                    VStack {
                        Link(destination: URL(string: "https://socialtechlabs.com/twinkie-dreams/")!) {
                            
                            Text("our Twinkie Dream")
                                .fontWeight(.thin)
                                .frame(width: 310, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 25))
                                .background(ColorManager.pmbc_green)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        }
//
                  
 
//                
//                    Spacer()
//                        .frame(height: 200)


               
                
                    }
                }
                
            }
            
        }
        
    }
}


