//
//  AppDelegate.swift
//  BestFriends
//
//  Created by Alex Titov on 4/12/21.
//

import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
            
        // initialize Amplify
        let _ = Backend.initialize()
        
        return true
    }
    
}
