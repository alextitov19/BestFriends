//
//  ShakingCoolDtaSource.swift
//  BestFriends
//
//  Created by Alex Titov on 5/24/21.
//

import SwiftUI
import Amplify

struct ShakingCoolDataSource {
    func downloadImage(key: String, rotating: Bool, tall: Bool) -> UIImage {
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
        if rotating {
            if tall {
                if (image.size.width > image.size.height) {
                    image = image.rotate(radians: (.pi/2))
                }
            } else {
                if (image.size.height > image.size.width) {
                    image = image.rotate(radians: (.pi/2))
                }
            }
        }
        
        
        return image
    }
    
    func uploadImage(image: UIImage, targetID: String) -> Bool {
        var success = false
        let group = DispatchGroup()
        group.enter()
        let data = image.pngData()!
        let key = "Image/" + Helper().randomString(length: 20)
        Amplify.Storage.uploadData(key: key, data: data,
                                   progressListener: { progress in
                                    print("Progress: \(progress)")
                                   }, resultListener: { (event) in
                                    switch event {
                                    case .success(let data):
                                        print("Completed: \(data)")
                                        var user = UserDataSource().getCurrentUser()
                                        var shakingCool = user.shakingCool ?? []
                                        shakingCool.append(ShakingCool(id: Helper().randomString(length: 20), link: key, intendedid: targetID, intendedname: UserDataSource().getUser(id: targetID).firstName))
                                        user.shakingCool = shakingCool
                                        UserDataSource().updateUser(user: user)
                                        success = true
                                        group.leave()
                                    case .failure(let storageError):
                                        print("Failed: \(storageError.errorDescription). \(storageError.recoverySuggestion)")
                                        group.leave()
                                    }
                                   })
        group.wait()
        return success
    }
    
    
    func deleteImage(id: String) {
        guard let userID = Amplify.Auth.getCurrentUser()?.username else { return }
        var user = UserDataSource().getUser(id: userID)
        guard var shakingCool = user.shakingCool else { return }
        for i in shakingCool.indices {
            if shakingCool[i].id == id {
                shakingCool.remove(at: i)
            }
        }
        user.shakingCool = shakingCool
        UserDataSource().updateUser(user: user)
        
        Amplify.Storage.remove(key: id) { event in
            switch event {
            case let .success(data):
                print("Completed: Deleted \(data)")
            case let .failure(storageError):
                print("Failed: \(storageError.errorDescription). \(storageError.recoverySuggestion)")
            }
        }
    }
}
