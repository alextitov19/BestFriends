//
//  BestFriendsApp.swift
//  BestFriends
//
//  Created by Alex Titov on 4/12/21.
//

import SwiftUI
import Amplify
import AmplifyPlugins
import Firebase

@main
struct BestFriendsApp: App {

//    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @ObservedObject var sessionManager = SessionManager()
    
    init() {
        configureAmplify()
        uploadAnAd(name: "firstAd")
        sessionManager.getCurrentAuthUser()
    }
    
    var body: some Scene {
        WindowGroup {
            switch sessionManager.appState {
            case .login:
                LoginView()
                    .environmentObject(sessionManager)
            case .signUp:
                SignUpPage1()
                    .environmentObject(sessionManager)
            case .confirmationCode(let username):
                ConfirmationView(username: username)
                    .environmentObject(sessionManager)
            case .home(let userID):
                LandingView(myID: userID)
                    .environmentObject(sessionManager)
            case .rooms:
                RoomsView()
                    .environmentObject(sessionManager)
            case .smileNotes:
                ShakingCoolView()
                    .environmentObject(sessionManager)
            case .settings:
                SettingsView()
                    .environmentObject(sessionManager)
                
            }
            
        }
    }
   
    private func configureAmplify() {
        do {
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.add(plugin: AWSS3StoragePlugin())
            try Amplify.add(plugin: AWSAPIPlugin())
            try Amplify.configure()
            
            print("Amplify configured successfully")
        } catch {
            print("Could not initialize Amplify", error)
        }
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
                                    registerAnAd(key: key, category: "Non-Profit", link: "https://socialtechlabs.com/")
                                case .failure(let storageError):
                                    print("Failed: \(storageError.errorDescription). \(storageError.recoverySuggestion)")
                            }
                        })
                    }
                }
                task.resume()
        
        
    }
    
    private func registerAnAd(key: String, category: String, link: String) {
        let ad = Advertisement(category: category, videoLink: key, adLink: link)
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




