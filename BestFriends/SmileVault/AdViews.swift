//
//  SmileVaultAdView.swift
//  BestFriends
//
//  Created by Alex Titov on 7/24/21.
//

import SwiftUI

struct SmileVaultAdView: View {
    var body: some View {
        AdPlayerView(name: "BestFriendsAd1")
            .ignoresSafeArea()
    }
}

struct ShakingCoolAdView: View {
    var body: some View {
        AdPlayerView(name: "SplashScreen1")
            .ignoresSafeArea()
    }
}
