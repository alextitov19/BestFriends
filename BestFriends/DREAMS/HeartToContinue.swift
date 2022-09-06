//
//  HeartToContinue.swift
//  BestFriends
//
//  Created by Social Tech on 9/5/22.
//



import Foundation
import SwiftUI
import AVKit


struct HeartToContinue: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
//    let user: User
//    let friends: [User]
    
    var body: some View {
        ZStack {
//            ColorManager.grey4
//                .ignoresSafeArea()
//                .onAppear()
//
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
//            AdPlayerView(name: "Planet6")
//                .ignoresSafeArea()
//                .blendMode(.screen)
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            VStack {
              
                Text("Together with motivational stories \nand your friends we will help get you there!")
                    .font(.system(size: 40))
                    .italic()
                    .foregroundColor(ColorManager.purple1)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                
                             Spacer()
                                 .frame(height: 15)
                
               
             
                Spacer()
                    .frame(height: 340)

             
                
                VStack {

                
       
                    Spacer()
                        .frame(height: 15)
                
                    VStack {
                        Link(destination: URL(string: "https://socialtechlabs.com/dreams-we-dare-but-whisper/")!) {
                            
                            Text("Dreams we Dare but Whisper")
                                .fontWeight(.thin)
                                .frame(width: 310, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 25))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        }


                    
                    Spacer()
                        .frame(height: 55)
                    
                Text("T O G E T H E R")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                  
                
                        Text("with your BestFriends")
                            .font(.system(size: 30))
                            .italic()
                            .foregroundColor(.white)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                
           
                
                
                    Spacer()
                        .frame(height: 50)


               
                
                    }
                }
                
            }
            
        }
        
    }
    
}
