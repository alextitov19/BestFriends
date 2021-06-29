//
//  UIWindowExtension.swift
//  BestFriends
//
//  Created by Alex Titov on 5/23/21.
//

import SwiftUI

extension UIWindow {
    open override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            NotificationCenter.default.post(name: UIDevice.deviceDidShakeNotification, object: nil)
        }
    }
}
