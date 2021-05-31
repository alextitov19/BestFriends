//
//  AdPlayerView.swift
//  BestFriends
//
//  Created by Alex Titov on 5/26/21.
//

import SwiftUI
import AVKit
import AVFoundation

struct AdPlayerView: UIViewRepresentable {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<AdPlayerView>) {
    }

    func makeUIView(context: Context) -> UIView {
        return AdLoopingPlayerUIView(frame: .zero, name: name)
    }
}


class AdLoopingPlayerUIView: UIView {
    private let playerLayer = AVPlayerLayer()
    private var playerLooper: AVPlayerLooper?
    
    var name: String
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    init(frame: CGRect, name: String) {
        self.name = name
        
        super.init(frame: frame)
        

        // Load the resource
        let fileUrl = Bundle.main.url(forResource: name, withExtension: "mp4")!
        let asset = AVAsset(url: fileUrl)
        let item = AVPlayerItem(asset: asset)
        
        // Setup the player
        let player = AVQueuePlayer()
        playerLayer.player = player
        playerLayer.videoGravity = .resizeAspectFill
        layer.addSublayer(playerLayer)
         
        // Create a new player looper with the queue player and template item
        playerLooper = AVPlayerLooper(player: player, templateItem: item)

        // Start the movie
        player.play()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }
}

