//
//  BlueModePlaylist.swift
//  BestFriends
//
//  Created by Social Tech on 5/27/22.
//

import Foundation
import SwiftUI

struct BlueModePlaylist: View {
    
    var body: some View {
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
         
            
            VStack {
                
                Text("Build")
                    .font(.system(size: 50))
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.blue)
             
                Text("BlueMode")
                    .font(.system(size: 80))
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.blue)
               
                Spacer()
                    .frame(height: 40)
                
                Text("Playlist")
                    .font(.system(size: 40))
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                
                
                    
                
            VStack {
               
                
                Spacer()
                    .frame(height: 40)
                
                NavigationLink(
                    destination: EmptyView(),
                    label: {
                        Text("what here???")
                            .fontWeight(.thin)
                            .frame(width: 200, height: 40)
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








struct BlueModePlaylist_Previews : PreviewProvider {
    static var previews: some View {
        BlueModePlaylist()
    }
}


