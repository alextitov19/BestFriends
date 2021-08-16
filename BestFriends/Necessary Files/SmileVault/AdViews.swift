//
//  SmileVaultAdView.swift
//  BestFriends
//
//  Created by Alex Titov on 7/24/21.
//

import SwiftUI

struct SmileVaultAdView: View {
    @Environment(\.openURL) var openURL
    var body: some View {
        AdPlayerView(name: "BestFriendsAd1")
            .ignoresSafeArea()
            .onTapGesture {
                openURL(URL(string: "https://socialtechlabs.com/beta-team/")!)
            }
    }
}

struct ShakingCoolAdView: View {
    @Environment(\.openURL) var openURL
    var body: some View {
        AdPlayerView(name: "SplashScreen2")
            .ignoresSafeArea()
            .onTapGesture {
                openURL(URL(string: "https://socialtechlabs.com/beta-team/")!)
            }
    }
}
