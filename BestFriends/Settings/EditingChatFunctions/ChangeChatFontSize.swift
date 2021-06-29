//
//  ChangeChatFontSize.swift
//  BestFriends
//
//  Created by Social Tech on 6/2/21.
//

import Amplify
import SwiftUI


struct ChangeChatFontSize: View {
    
    var body: some View {
        NavigationView{
            ZStack {
                
                
                Image("purpleBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
            }
        }
    }
}

struct ChangeChatFontSize_Previews : PreviewProvider {
    static var previews: some View {
        ChangeChatFontSize()
    }
}

