//
//  Thought.swift
//  BestFriends
//
//  Created by Social Tech on 4/13/22.
//

import Foundation
import SwiftUI

struct Thought: View {
    
    var body: some View {
    
            
            ZStack {
                Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                    .ignoresSafeArea()
                Image("Star Page")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
                    
                    Spacer()
                        .frame(height: 5)
                    
                    Text("TODAY,")
                        .font(.system(size: 35, weight: .bold))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    Spacer()
                        .frame(height: 10)
                    
                    Text("Say something nice")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(.orange)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    Spacer()
                        .frame(height: 5)
                    
                    Text("to your freind in chat")
                        .font(.system(size: 20, weight: .bold))
                        .italic()
                        
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 0)
                    
                  
                    
                    Spacer()
                        .frame(height: 40)
                    Text("Get a smile back")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(.orange)
                        .italic()
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    
                    Spacer()
                        .frame(height: 100)
                    
                    
                    VStack {
                        
                        Spacer()
                            .frame(height: 5)
                        
                        Text("You just started a streak")
                            .font(.system(size: 25,
                    weight: .bold))
                            .foregroundColor(.green)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 0)
                        
                        Spacer()
                            .frame(height: 80)
                        
                        NavigationLink(
                            destination: FriendVaultView(),
                            label: {
                                HStack {
                                    Text("FriendVault")
                                        .font(.system(size: 30))
                                        .foregroundColor(.white)
                                        .padding(30)
                                    
                                
                                 
                                    
                                    
                                }
                            }
                        )}
                }
            }
            
        }
    }



struct Thought_Previews : PreviewProvider {
    static var previews: some View {
        Thought()
    }
}


