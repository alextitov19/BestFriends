//
//  bff.swift
//  BestFriends
//
//  Created by Social Tech on 7/30/21.
//

import Foundation
import Amplify
import SwiftUI
import AVKit

struct bff: View {
    
    var body: some View {
        
        ZStack {
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
         
            
            VStack {
                
                
                Text("bff")
                    .font(.system(size: 50))
//                    .italic()
                    .fontWeight(.regular)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(width: 350, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 16)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 16)
               
                Text("Yep, you've got tons of followers on social media, but we have ")
                    .font(.system(size: 25))
//                    .italic()
                    .fontWeight(.regular)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Text(" your best friends!")
                    .font(.system(size: 35))
                    .italic()
                    .fontWeight(.regular)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Spacer()
                    .frame(height: 600)
                
                
                
            }
        }
    }
}

struct bff_Previews : PreviewProvider {
    static var previews: some View {
        bff()
    }
}
