//
//  HowToAddFriends.swift
//  BestFriends
//
//  Created by Alex Titov on 11/21/21.
//

import SwiftUI

struct HowToAddFriends: View {
    var body: some View {
        ZStack {
            ColorManager.purple1
                .ignoresSafeArea()
            
            VStack {
                Text("Adding Friends")
            }
        }
    }
}

struct HowToAddFriendsPreview : PreviewProvider {
    static var previews: some View {
        Group {
            HowToAddFriends()
        }
    }
}
