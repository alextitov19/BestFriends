//
//  ShakingCoolDtaSource.swift
//  BestFriends
//
//  Created by Alex Titov on 5/24/21.
//

import SwiftUI
import Amplify

struct ShakingCoolDataSource {
    func downloadImage(key: String) -> UIImage {
        var image = UIImage()
        
        let group = DispatchGroup()
        group.enter()
        
        Amplify.Storage.downloadData(
            key: key,
            progressListener: { progress in
                print("Progress: \(progress)")
            }, resultListener: { (event) in
                switch event {
                case let .success(data):
                    print("Completed: \(data)")
                    //data downloaded
                    image = UIImage(data: data) ?? UIImage()
                    group.leave()
                    
                case let .failure(storageError):
                    print("Failed: \(storageError.errorDescription). \(storageError.recoverySuggestion)")
            }
        })
        
        group.wait()
        
        if image.size.height > image.size.width {
            image = image.rotate(radians: (.pi/2))
        }
        
        return image
    }
    
    func uploadImage(image: UIImage) {
        guard let userID = Amplify.Auth.getCurrentUser()?.username else { return }
        let user = UserDataSource().getUser(id: userID)
        let data = image.pngData()!
        let key = "Image/" + randomString(length: 20)
        Amplify.Storage.uploadData(key: key, data: data,
            progressListener: { progress in
                print("Progress: \(progress)")
            }, resultListener: { (event) in
                switch event {
                case .success(let data):
                    print("Completed: \(data)")
                    guard let userid = Amplify.Auth.getCurrentUser()?.username else { return }
                    var user = UserDataSource().getUser(id: userid)
                    guard var links = user.shakingCoolLinks else { return }
                    links.append(key)
                    user.shakingCoolLinks = links
                    UserDataSource().updateUser(user: user)
                case .failure(let storageError):
                    print("Failed: \(storageError.errorDescription). \(storageError.recoverySuggestion)")
            }
        })
    }
    
    func randomString(length: Int) -> String {

        let letters : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        let len = UInt32(letters.length)

        var randomString = ""

        for _ in 0 ..< length {
            let rand = arc4random_uniform(len)
            var nextChar = letters.character(at: Int(rand))
            randomString += NSString(characters: &nextChar, length: 1) as String
        }

        return randomString
    }
}
