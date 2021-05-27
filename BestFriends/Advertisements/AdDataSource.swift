//
//  AdDataSource.swift
//  BestFriends
//
//  Created by Alex Titov on 5/26/21.
//

import SwiftUI
import Amplify

struct AdDataSource {
    
    func getAd(id: String) -> Advertisement {
        var finalAd = Advertisement(category: "", videoName: "", adLink: "", duration: 0, hasAudio: false, likes: 0, views: 0, shares: 0, clicks: 0)

        let group = DispatchGroup()
        group.enter()
        
            Amplify.API.query(request: .get(Advertisement.self, byId: id)) { event in
                switch event {
                case .success(let result):
                    switch result {
                    case .success(let ad):
                        guard let ad = ad else {
                            print("Could not find ad")
                            return
                        }
                        print("Successfully retrieved ad: \(ad)")
                        //ad found
                        finalAd = ad
                        group.leave()
                    
                    case .failure(let error):
                        print("Got failed result with \(error.errorDescription)")
                    }
                case .failure(let error):
                    print("Got failed event with error \(error)")
                }
            }
        
        
        group.wait()
        
        return finalAd
            
    }
  
    
    
    
    private func uploadAnAd(name: String) {
        guard let url = Bundle.main.url(forResource: "first", withExtension: "mp4") else { fatalError() }
        let key = "Advertisement/" + randomString(length: 20)

        let task = URLSession.shared.dataTask(with: url) { data, response, error in
                    guard let data = data else { return }
                    DispatchQueue.main.async {
                        Amplify.Storage.uploadData(key: key, data: data,
                            progressListener: { progress in
                                print("Progress: \(progress)")
                            }, resultListener: { (event) in
                                switch event {
                                case .success(let data):
                                    print("Completed: \(data)")
                                    print("Path for uploaded file: \(key)")
                                    registerAnAd(name: key, category: "Non-Profit", link: "https://socialtechlabs.com/")
                                case .failure(let storageError):
                                    print("Failed: \(storageError.errorDescription). \(storageError.recoverySuggestion)")
                            }
                        })
                    }
                }
                task.resume()
        
        
    }
    
    private func registerAnAd(name: String, category: String, link: String) {
        let ad = Advertisement(category: category, videoName: name, adLink: link, duration: 0, hasAudio: false, likes: 0, views: 0, shares: 0, clicks: 0)
        Amplify.API.mutate(request: .create(ad)) { mutationResult in
            switch mutationResult {

            case .success(let creationResult):
                
                switch creationResult {
                case .success:
                    print("Successfully created ad")
                    
                case .failure(let error):
                    print(error)
                }
                
            case .failure(let apiError):
                print(apiError)
            }
        }
    }
    

    private func randomString(length: Int) -> String {

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
