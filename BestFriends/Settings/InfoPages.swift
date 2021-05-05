//
//  InfoPages.swift
//  BestFriends
//
//  Created by Robert Roe on 5/5/21.
//

//import Foundation

import Amplify
import SwiftUI

struct InfoView: View {

    var body: some View {

    
  
        ZStack {
            
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
                
                Spacer()
                    .frame(height: 125)
                
       
            
                VStack {
                    Text("Put Text Here")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                        .frame(height: 50)
                   
                   
                    Text("Put 2nd Text Here")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    
                   
                    Image("Penguin1")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .scaledToFill()
                    
                }
                Spacer()
                    .frame(height: 125)
            }
        
    
    }
}
struct InfoView_Previews : PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
