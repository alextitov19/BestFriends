//
//  BreathInviteView.swift
//  BestFriends
//
//  Created by Social Tech on 4/16/22.
//

import Foundation
import SwiftUI

struct BreathInviteView: View {
    var body: some View {
        NavigationView {
        
            
            ZStack {
                Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                    .ignoresSafeArea()
                Image("blueBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
                  
                    Text("C a l m i n g")
                        .font(.system(size: 45, weight: .bold))
                        .foregroundColor(.purple)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    Text("ourselves down")
                        .font(.system(size: 35, weight: .bold))
                        .foregroundColor(.purple)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    
                    Spacer()
                        .frame(height: 35)

                    
                    Text("taking a much needed breather")
                        .font(.system(size: 20, weight: .bold))
                        .italic()
                        
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 0)
                 
                    Spacer()
                        .frame(height: 35)
                    
                    
//                    Button(action: {
//                    }) {
//                        Text("Take a breather alone")
//                    }
//                    NavigationLink(
//                          destination: BreathInView(),
//                          label: {
//
//                                  Text("Take a Breather Alone")
//                                      .font(.system(size: 10))
//                                      .foregroundColor(.white)
////                                      .padding(0)
//
              
                    
                    NavigationLink(
                        destination: BreathInView(),
                        label: {
                            Text("Take a breather alone")
                                .frame(width: 325, height: 50)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                .cornerRadius(25)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                        
                  
                
                
                
                
                }
            
        }
    }
}

}
struct BreathInviteView_Previews : PreviewProvider {
    static var previews: some View {
        BreathInviteView()
    }
}
