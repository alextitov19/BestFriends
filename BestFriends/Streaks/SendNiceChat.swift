//
//  SendNiceChat.swift
//  BestFriends
//
//  Created by Social Tech on 4/22/22.
//

import Foundation
import SwiftUI

struct SendNiceChat: View {
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                    .ignoresSafeArea()
//                Image("Star Page")
                Image("purpleBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
                    
                    Spacer()
                        .frame(height: 5)
                    
                    Text("go ahead")
                        .font(.system(size: 100))
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    Spacer()
                        .frame(height: 20)
                    
                    Text("say something nice")
                        .font(.system(size: 30))
                        .italic()
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    Spacer()
                        .frame(height: 5)
                    
                    Text("to your freind in chat")
                        .font(.system(size: 30, weight: .bold))
                        .italic()
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 0)
                    
                  
                    
                    Spacer()
                        .frame(height: 40)
                    
                    Text("get a smile back")
                        .font(.system(size: 45, weight: .bold))
                        .fontWeight(.ultraLight)
                        .foregroundColor(.white)
//                        .italic()
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    
                    Spacer()
                        .frame(height: 60)
                    
                    
                    VStack {
                     
                        
//                        Text("You just started a . . .")
//                            .font(.system(size: 25,
//                    weight: .bold))
//                            .foregroundColor(.white)
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//                            .padding(.horizontal, 0)
//
//
                        HStack {
                        NavigationLink(
                           destination: MyStreaks(),
                             label: {
                        Text("See My \nSTREAKS")
                            .font(.system(size: 25,
                    weight: .bold))
                            .fontWeight(.regular)
                            .italic()
                            .foregroundColor(.green)
//                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 10)
                        
                        
                        
                        
                        Spacer()
//                           .frame(height: 50)
                        
                        
                        
                    


                      NavigationLink(
                         destination: HomeView(),
                           label: {
                               
                               Image("ChatBlue")
                               
                           }
                               
//                                Text("take me to CHAT")
//                                   .fontWeight(.semibold)
//                                   .foregroundColor(Color.white)
//                                   .frame(width: 350.0, height: 50)
//                                  .font(.system(size: 20))
//                                  .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
//
//                                    .cornerRadius(15)
//                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)




                        )}
                      )}
                    
               }
            }
        }
    }
}
struct SendNiceChat_Previews : PreviewProvider {
    static var previews: some View {
        SendNiceChat()
    }
}

}
