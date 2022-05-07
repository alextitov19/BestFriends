//
//  Step1_ParentsFighting.swift
//  BestFriends
//
//  Created by Social Tech on 5/7/22.
//



import Foundation

import SwiftUI
import AVKit

struct Step1_ParentsFighting: View {
    
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
                
                Text("50% of our")
                    .font(.system(size: 25))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
               
                Text("Mom's and Dad's")
                    .font(.system(size: 25))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                 
                Text("get")
                    .font(.system(size: 25))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .kerning(10)
                
                Text("Divorced")
                    .font(.system(size: 30))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .kerning(10)
                
            VStack {
                Spacer()
                    .frame(height: 35)
            
                
                Text("Iit's not your fault")
                    .font(.system(size: 45))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.blue)
               
                
                
                
                Spacer()
                    .frame(height: 35)
                
                Text("You're no longer ")
                    .font(.system(size: 30))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.white)
                
                
                Text("ALONE")
                    .font(.system(size: 30))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.white)
                    .kerning(10)
                
                Text("with the Screams")
                    .font(.system(size: 40))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.white)
                
                Spacer()
                    .frame(height: 20)
                     
                VStack {
                        
                        NavigationLink(
                            destination: HomeView(),
                            label: {
                                Text("my Journal")
                                    .fontWeight(.thin)
                                    .foregroundColor(Color.white)
                                    .frame(width: 160, height: 40)
                                    .font(.system(size: 30)).background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                            }
                        )}
                
                
                VStack {
                    Spacer()
                        .frame(height: 35)
                    
                    NavigationLink(
                        destination: ParentsFighting(),
                        label: {
                            Text("NEXT")
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



//
//
//
//struct Step1_ParentsFighting:_Previews : PreviewProvider {
//    static var previews: some View {
//    Step1_ParentsFighting:()
//    }
//}
//

