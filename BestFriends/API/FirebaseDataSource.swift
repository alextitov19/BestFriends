//
//  FirebaseDataSource.swift
//  BestFriends
//
//  Created by Alex Titov on 6/24/21.
//

import SwiftUI
import Firebase

struct FirebaseDataSource {
    
    func getFCMToken(username: String) -> String {
        let db = Firestore.firestore()
        let docRef = db.collection("users_table").document(username)
        print("Username: ", username)
        var token = ""
        let group = DispatchGroup()
        group.enter()
        
        docRef.getDocument { (document, error) in
            if let document = document, document.exists {
                let dataDescription = document.data().map(String.init(describing:)) ?? "nil"
                print("Document data: \(dataDescription)")
                token = document.get("fcmToken") as! String
                group.leave()
            } else {
                print("Document does not exist")
                token = "Cound not find field"
                group.leave()
            }
        }
        
        group.wait()
        
        return token
    }
    
    
}
