//
//  AudioPlayer.swift
//  BestFriends
//
//  Created by Robert Roe on 5/20/21.
//

import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
          //  audioPlayer = try AVAudioPlayer(contentsOf: URLfileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("error")
        }
    }
}
