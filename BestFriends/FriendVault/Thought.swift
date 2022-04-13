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
        ScrollView{
            
            ZStack {
                Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                    .ignoresSafeArea()
                Image("Star Page")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
                    
                    Spacer()
                        .frame(height: 50)
                    
                    Text("Just a Thought")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    
                    Spacer()
                        .frame(height: 15)
                    
                    Text("Do something nice for a freind today")
                        .font(.system(size: 20, weight: .bold))
                        .italic()
                        .foregroundColor(.green)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 0)
                    
                    
                    Spacer()
                        .frame(height: 25)
                    
                    Spacer()
                        .frame(height: 50)
                    
                    Text("Nope, you don't get free Tokens")
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    Spacer()
                        .frame(height: 50)
                    

                    VStack {
                        
                 
                    
                    Text("Nope, don't even get a special badge")
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                   
                        Spacer()
                            .frame(height: 100)
                        
                        Text("But maybe, just maybe you'll get a genuine smile back")
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(.green)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 0)
                       
                        
                        NavigationLink(
                           destination: FriendVaultView(),
                           label: {
                                HStack {
                                    Text("Reset Password")
                                        .font(.system(size: 20))
         //                              .foregroundColor(.black)
                                       .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                    Spacer().frame(maxHeight: 0)

                                   Image("arrowRight")
                                       .resizable()
                                        .frame(width: 25, height: 25)
                                      .scaledToFit()
                                       .colorInvert()
                        
                }
            }
       )}
    }
}
                           
                    
                    
                    
//                    struct Thought_Previews : PreviewProvider {
//                        static var previews: some View {
//                            Thought()
//                        }
//                    }

}
    }
}
