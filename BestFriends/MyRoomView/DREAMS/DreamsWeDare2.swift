//
//  DreamsWeDare2.swift
//  BestFriends
//
//  Created by Social Tech on 1/25/23.
//



import Foundation
import SwiftUI
import AVKit


struct DreamsWeDare2: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
  
    var body: some View {
        ZStack {
                        ColorManager.grey4
                            .ignoresSafeArea()
                            .onAppear()
            
//            Image("Twinkie")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
            
            //            AdPlayerView(name: "Planet6")
            //                .ignoresSafeArea()
            //                .blendMode(.screen)
            
            //            AdPlayerView(name: "Dreams1")
            //                .ignoresSafeArea()
            //                .blendMode(.screen)
            
            VStack {
                
                
                VStack {
//
//                    Text("chasing down")
//                        .font(.system(size: 35))
//
//                        .foregroundColor(ColorManager.purple4)
//                        .fontWeight(.thin)
//                        .multilineTextAlignment(.center)
//
//                        Text("our dreams")
//                            .font(.system(size: 35))
//                            .foregroundColor(ColorManager.purple4)
//                            .fontWeight(.thin)
//                           .multilineTextAlignment(.center)
//
                       
                    VStack {
                        
                        VStack {
                            Link(destination: URL(string: "https://socialtechlabs.com/dreams-we-dare-but-whisper/")!) {
                                
                                Text("Dreams we Dare but Whisper")
                                    .fontWeight(.thin)
                                    .frame(width: 310, height: 40)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 25))
                                    .background(ColorManager.pmbc_green)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            }
                            //                        Link(destination: URL(string: "https://socialtechlabs.com/twinkie-dreams/")!) {
                            //
                            //                            Text("our Twinkie Dream")
                            //                                .fontWeight(.thin)
                            //                                .frame(width: 310, height: 40)
                            //                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            //                                .font(.system(size: 25))
                            //                                .background(ColorManager.pmbc_green)
                            //                                .cornerRadius(15)
                            //                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            //                        }
                            //
                            
                            
                            
                            
                            
                        }
                    }
                    
                }
                
            }
            
        }
    }
    
}
