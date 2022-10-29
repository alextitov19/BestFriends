//
//  INFOPreload.swift
//  BestFriends
//
//  Created by Social Tech on 10/28/22.
//


import Foundation
import SwiftUI

struct INFOPreload: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
        let user: User
   
    
    var body: some View {
        
        VStack {
            
            
            ZStack {
                
//                ColorManager.purple1
//                    .ignoresSafeArea()
//                    .onAppear()
//

                Image("purpleBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()

                AdPlayerView(name: "HugVideo")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                    .opacity(0.75)
                
                
                VStack {
                    
                    Spacer()
                        .frame(height: 30)
                    
                    Text("No one wants to be")
                        .font(.system(size: 30))
                        .fontWeight(.thin)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.purple5)
                    
                    
                    
                    Spacer ()
                        .frame(height: 30)
                    
                    ZStack{
                        
                        
                        
                        Image(systemName: "heart.fill")
                            .resizable()
                            .foregroundColor(.pink)
                            .frame(width: 250, height: 200)
                        //                    .blur(radius: 2)
                        
                            .shadow(color: .purple, radius: 65, x: 30, y: 50)
                            .opacity(0.70)
                        
                        VStack {
                        
                            
                            Text("just")
                                .font(.system(size: 20))
                            //                            .italic()
                                .foregroundColor(.white)
                                .fontWeight(.thin)
                                .multilineTextAlignment(.center)
                                .shadow(color: .black, radius: 1, x: 0, y: 1)
                            
                            Text("another")
                                .font(.system(size: 20))
                            //                             .italic()
                                .foregroundColor(.white)
                                .fontWeight(.thin)
                                .multilineTextAlignment(.center)
                                .shadow(color: .black, radius: 1, x: 0, y: 1)
                            
                            Text("F R I E N D")
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                                .fontWeight(.thin)
                                .multilineTextAlignment(.center)
                                .shadow(color: .black, radius: 1, x: 0, y: 1)
                            
                            
                        }
                    }
                   
                    VStack {
                        
                        
                        Spacer()
                            .frame(height: 290)
                    
                        
                        
                        
                        
                        NavigationLink(
                            destination: InfoCoolVideo(user: user),
                            label: {
                                Text("Walk-through")
                                    .fontWeight(.thin)
                                    .frame(width: 200, height: 30)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 25))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                            })
          
                        
                        Spacer()
                            .frame(height: 100)
                    }
                }
                
            }
        }
        
    }
}


