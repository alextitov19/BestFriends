//
//  RemoveFriend.swift
//  BestFriends
//
//  Created by Social Tech on 4/9/22.
//

import Foundation
import SwiftUI


struct RemoveFriend: View {
    
    var body: some View {
      
        ZStack {
            
        
        ColorManager.grey4
            .ignoresSafeArea()
        
        VStack {
         
      
                
                Text("Remove Friend from BestFriends")
                    .font(.system(size: 25))
                   
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 0)
                Spacer()
                    .frame(height: 15)
           
         
            
            
                 VStack {
                     NavigationLink(
                        destination: EmptyView(),
                        label: {
                            Text("Submit")
                                .fontWeight(.thin)
                                .frame(width: 120, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                    
                    
                    .padding(.vertical, 40)
                }
            }
            
        }
    }
}






struct RemoveFriend_Previews : PreviewProvider {
    static var previews: some View {
        RemoveFriend()
    }
}


