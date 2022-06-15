//
//  HurtFeelings2.swift
//  BestFriends
//
//  Created by Social Tech on 6/14/22.
//

import Foundation

import SwiftUI


struct HurtFeelings2: View {
    
    @EnvironmentObject var sessionManager: SessionManager

    var body: some View {
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
       
              
              VStack {
              
               
                  
                  VStack {
                      Text("If you're feeling")
                          .font(.system(size: 50))
                          .foregroundColor(.blue)
                          .fontWeight(.ultraLight)
                          .multilineTextAlignment(.center)
                   
                      
                      
                      Text("B A D")
                          .font(.system(size: 65))
                          .foregroundColor(.blue)
                          .fontWeight(.ultraLight)
                          .multilineTextAlignment(.center)
                            
                        Spacer()
                            .frame(height: 50)
                     
            VStack {
                      
                        Text("It may be a good idea \nto let your friend know \nhow you're feeling to \nclear things up.")
                            .font(.system(size: 30))
                            .italic()
                            .fontWeight(.light)
                            .foregroundColor(Color.white)
                
                Spacer()
                    .frame(height: 70)
                
                Text("Yes")
                    .font(.system(size: 50))
                    .italic()
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                
                
                Text("It's absolutely okay \nto talk about this")
                    .font(.system(size: 30))
                    .italic()
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                
                          
            VStack {
                Spacer()
                    .frame(height: 30)
                    
                    NavigationLink(
                        destination: EmptyView(),
                        label: {
                            Text("Let's give it a shot, ok!")
                                .fontWeight(.thin)
                                .frame(width: 300, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                      
                        })

            }
              
        }
    }
}
}
    }
}



struct HurtFeelings2_Previews : PreviewProvider {
    static var previews: some View {
        HurtFeelings2()
    }
}

