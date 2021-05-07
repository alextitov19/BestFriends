//
//  ManageMyFriends.swift
//  BestFriends
//
//  Created by Robert Roe on 5/7/21.
//

import Foundation
import Amplify
import SwiftUI


struct ManageMyFriends: View {

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

struct ManageMyFriends_Previews : PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
