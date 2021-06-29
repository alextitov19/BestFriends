//
//  SocialChangeVid2.swift
//  BestFriends
//
//  Created by Social Tech on 6/4/21.
//


import SwiftUI
import Amplify
import AVKit

struct SocialChangeVid2: View {
    @Environment(\.presentationMode) var presentationMode
    
    var names: [String] = ["SocialChange"]
    
    //    var timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            AdPlayerView(name: "SocialChange")
                .ignoresSafeArea()
            
        }
    }
}
struct SocialChangeVid2_Previews : PreviewProvider {
    static var previews: some View {
        SocialChangeVid2()
    }
}
