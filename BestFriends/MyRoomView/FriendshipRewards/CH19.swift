//
//  CH19.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 7/17/23.
//
//
//import SwiftUI
//
//struct CH19: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct CH19_Previews: PreviewProvider {
//    static var previews: some View {
//        CH19()
//    }
//}
//


import Foundation
import SwiftUI
import AVKit

struct CH19: View {
    
    let user: User
    
    var body: some View {
        
        ZStack {
        
            ColorManager .purple4
                .opacity(0.6)
                .ignoresSafeArea()

            
            Image("FHBackground")
                     .resizable()
                     .scaledToFill()
                     .edgesIgnoringSafeArea(.all)
            
            Circle()
                          .frame(width: 300, height: 300)
                          .foregroundColor(ColorManager.purple3)
                          .offset(x: -200, y: 400)
            
            VStack {
                
                
                Text("CareHeart Streaks")
                    .font(.system(size: 37))
            
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey1)
                
                Text("shown as 'star' next to you planet")
                    .italic()
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                
                ZStack {
                    
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(ColorManager .purple4)
                        .frame(width: 400, height: 400)
                        .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                        .opacity(0.95)
                    
                    
                    
                    VStack {
                        
                        
                        Spacer ()
                            .frame(height: 100)
                        
                        Text("BestFriends rewards you for ")
//                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey1)
                        
                        Text("helping friends on bad days")
//                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey1)
                        
                        Spacer ()
                            .frame(height: 40)
                        
                        Text("Streaks apply to sending CareHearts")
//                            .italic()
                            .font(.system(size: 23))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey1)
                       
                        Spacer ()
                            .frame(height: 10)
                        
                        Text("(Hugs _ Blowing Kisses _ PhotoPOP)")
                            .italic()
                            .font(.system(size: 20))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager.grey1)
                        
                        
                        Spacer ()
                            .frame(height: 40)

                        VStack {
                       
                            
                            
                            Spacer ()
                                .frame(height: 100)
                            
                        }
                    }
                }
            }
        }
        
    }
}


