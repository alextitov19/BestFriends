//
//  BackgroundVideoController.swift
//  BestFriends
//
//  Created by Alex Titov on 4/17/21.
//

import SwiftUI
import AVKit

final class BackgroundVideoController : UIViewControllerRepresentable {
    var playerLooper: AVPlayerLooper?
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<BackgroundVideoController>) ->
        AVPlayerViewController {
            let controller = AVPlayerViewController()
            controller.showsPlaybackControls = false
            
            guard let path = Bundle.main.path(forResource: "backgroundAnimation", ofType:"mp4") else {
                debugPrint("backgroundAnimation.mp4 not found")
                return controller
            }
                    
            let asset = AVAsset(url: URL(fileURLWithPath: path))
            let playerItem = AVPlayerItem(asset: asset)
            let queuePlayer = AVQueuePlayer()
            // OR let queuePlayer = AVQueuePlayer(items: [playerItem]) to pass in items
            
            playerLooper = AVPlayerLooper(player: queuePlayer, templateItem: playerItem)
            queuePlayer.play()
            controller.player = queuePlayer
                
            return controller
        }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: UIViewControllerRepresentableContext<BackgroundVideoController>) {
    }
}
