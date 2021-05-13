//
//  ChangeChatBackground.swift
//  BestFriends
//
//  Created by Robert Roe on 5/13/21.
//

import Amplify
import SwiftUI


struct ChangeChatBackground: View {

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

struct ChangeChatBackground_Previews : PreviewProvider {
    static var previews: some View {
        ChangeChatBackground()
    }
}
