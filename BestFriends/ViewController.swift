//
//  ViewController.swift
//  BestFriends
//
//  Created by Alex Titov on 3/26/21.
//
import Foundation
import UIKit
import Amplify
import AmplifyPlugins

class ViewController: UIViewController {
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        fetchCurrentAuthSession()
        createTodo()
    }
    
    func createTodo() {
        let message = Message(id: "110012", senderid: "senderid992371", body: "this is a test message made in viewController", creationDate: Temporal.Date.init(Date()))
        Amplify.API.mutate(request: .create(message)) { event in
            switch event {
            case .success(let result):
                switch result {
                case .success(let todo):
                    print("Successfully created the message: \(message)")
                case .failure(let graphQLError):
                    print("Failed to create graphql \(graphQLError)")
                }
            case .failure(let apiError):
                print("Failed to create a todo", apiError)
            }
        }
    }

//    func fetchCurrentAuthSession() {
//        _ = Amplify.Auth.fetchAuthSession { result in
//            switch result {
//            case .success(let session):
//                print("Is user signed in - \(session.isSignedIn)")
//            case .failure(let error):
//                print("Fetch session failed with error \(error)")
//            }
//        }
//    }

}

