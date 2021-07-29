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
    
    func getAdDocuemnt() -> ManagementDocument {
        var adDoc = ManagementDocument(id: "", documents: [])
        
        let group = DispatchGroup()
        group.enter()
        
        Amplify.API.query(request: .get(ManagementDocument.self, byId: "currentRuningAds")) { event in
            switch event {
            case .success(let result):
                switch result {
                case .success(let addoc):
                    guard let addoc = addoc else {
                        print("Could not find ad doc")
                        return
                    }
                    print("Successfully retrieved ad doc: \(addoc)")
                    //ad found
                    adDoc = addoc
                    group.leave()
                    
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
        
        
        group.wait()
        
        return adDoc
    }
    
    
    func updateAd(ad: Advertisement) {
        Amplify.API.mutate(request: .update(ad)) { event in  //update user
            switch event {
            case .success(let result):
                switch result {
                case .success(let ad):
                    print("Successfully updated ad: \(ad)")
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
    }
    
    private func uploadAnAd(name: String) {
        guard let url = Bundle.main.url(forResource: "first", withExtension: "mp4") else { fatalError() }
        let key = "Advertisement/" + Helper().randomString(length: 20)
        
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
                                                registerAnAd(name: key, category: "Non-Profit", link: "https://socialtechlabs.com/", hasAudio: false)
                                            case .failure(let storageError):
                                                print("Failed: \(storageError.errorDescription). \(storageError.recoverySuggestion)")
                                            }
                                           })
            }
        }
        task.resume()
        
        
    }
    
    func registerAnAd(name: String, category: String, link: String, hasAudio: Bool) {
        let ad = Advertisement(category: category, videoName: name, adLink: link, duration: 0, hasAudio: hasAudio, likes: 0, views: 0, shares: 0, clicks: 0)
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
    
    
//    func createAd() {
//            let group = DispatchGroup()
//            group.enter()
//        let ad = Advertisement(id: "school",category: "N/A", videoName: "school", adLink: "https://socialtechlabs.com/beta-team/", duration: 10.0, hasAudio: false, likes: 0, views: 0, shares: 0, clicks: 0)
//        Amplify.API.mutate(request: .create(ad)) { mutationResult in
//                switch mutationResult {
//
//                case .success(let creationResult):
//
//                    switch creationResult {
//                    case .success:
//                        print("Successfully created ad")
//                        group.leave()
//
//
//                    case .failure(let error):
//                        print(error)
//                    }
//
//                case .failure(let apiError):
//                    print(apiError)
//                }
//            }
//            group.wait()
//            return
//        }
    
}
