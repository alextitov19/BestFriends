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
                    
                    
                    Button(action: {
                    }) {
                        Text("Take a breather alone")
                    }
                    NavigationLink(
                          destination: BreathInView(),
                          label: {
                              
                                  Text("Take a Breather Alone")
                                      .font(.system(size: 10))
                                      .foregroundColor(.white)
//                                      .padding(0)
                                      
                }
            )}
        }
    }
}
}

struct BreathInviteView_Previews : PreviewProvider {
    static var previews: some View {
        BreathInviteView()
    }
}
