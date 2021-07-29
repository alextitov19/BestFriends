//
//  ManDocDataSource.swift
//  BestFriends
//
//  Created by Alex Titov on 7/20/21.
//

import Foundation
import Amplify

struct ManDocDataSource {
    
    func getManDoc(id: String) -> ManagementDocument {
        var finalDoc = ManagementDocument(id: " ")
        
        let group = DispatchGroup()
        group.enter()
        
        Amplify.API.query(request: .get(ManagementDocument.self, byId: id)) { event in
            switch event {
            case .success(let result):
                switch result {
                case .success(let doc):
                    guard let doc = doc else {
                        print("Could not find doc")
                        return
                    }
                    print("Successfully retrieved doc: \(doc)")
                    finalDoc = doc
                    group.leave()
                    
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
        group.wait()
        return finalDoc
    }
    
    func updateDoc(doc: ManagementDocument) {
        Amplify.API.mutate(request: .update(doc)) { event in  //update doc
            switch event {
            case .success(let result):
                switch result {
                case .success(let doc):
                    print("Successfully updated doc: \(doc)")
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }
        }
    }
    
//    func createDoc() {
//            let group = DispatchGroup()
//            group.enter()
//        let doc = ManagementDocument(id: "currentAds", documents: ["blender", "bull", "phone", "pink", "school"])
//            Amplify.API.mutate(request: .create(doc)) { mutationResult in
//                switch mutationResult {
//
//                case .success(let creationResult):
//
//                    switch creationResult {
//                    case .success:
//                        print("Successfully created doc")
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
