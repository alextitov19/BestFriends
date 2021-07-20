//
//  Registration.swift
//  BestFriends
//
//  Created by Alex Titov on 4/17/21.
//

import Foundation
import Amplify

class UserManager: ObservableObject {
    
    func create(_ user: User) {
        let group = DispatchGroup()
        group.enter()
        Amplify.API.mutate(request: .create(user)) { [weak self] mutationResult in
            switch mutationResult {
            
            case .success(let creationResult):
                
                switch creationResult {
                case .success:
                    print("Successfully created user")
                    group.leave()
                    
                    
                case .failure(let error):
                    print(error)
                }
                
            case .failure(let apiError):
                print(apiError)
            }
        }
        group.wait()
        return
    }
    
    func resetPassword(username: String) {
        Amplify.Auth.resetPassword(for: username) { result in
            do {
                let resetResult = try result.get()
                switch resetResult.nextStep {
                case .confirmResetPasswordWithCode(let deliveryDetails, let info):
                    print("Confirm reset password with code send to - \(deliveryDetails) \(info)")
                case .done:
                    print("Reset completed")
                }
            } catch {
                print("Reset password failed with error \(error)")
            }
        }
    }
    
    func confirmResetPassword(
        username: String,
        newPassword: String,
        confirmationCode: String
    ) {
        Amplify.Auth.confirmResetPassword(
            for: username,
            with: newPassword,
            confirmationCode: confirmationCode
        ) { result in
            switch result {
            case .success:
                print("Password reset confirmed")
            case .failure(let error):
                print("Reset password failed with error \(error)")
            }
        }
    }
    
    func changePassword(oldPassword: String, newPassword: String) -> Bool {
        var bool = false
        let group = DispatchGroup()
        group.enter()
        
        Amplify.Auth.update(oldPassword: oldPassword, to: newPassword) { result in
            switch result {
            case .success:
                print("Change password succeeded")
                bool = true
                group.leave()
            case .failure(let error):
                print("Change password failed with error \(error)")
            }
        }
        group.wait()
        return bool
    }
    
    func updateEmail(email: String) -> Bool {
        var bool = false
        let group = DispatchGroup()
        group.enter()
        
        Amplify.Auth.update(userAttribute: AuthUserAttribute(.email, value: email)) { result in
            do {
                let updateResult = try result.get()
                switch updateResult.nextStep {
                case .confirmAttributeWithCode(let deliveryDetails, let info):
                    print("Confirm the attribute with details send to - \(deliveryDetails) \(String(describing: info))")
                case .done:
                    print("Update completed")
                    bool = true
                    group.leave()
                }
            } catch {
                print("Update attribute failed with error \(error)")
            }
        }
        
        group.wait()
        return bool
    }
    
    func confirmEmailUpdate(code: String) {
        Amplify.Auth.confirm(userAttribute: .email, confirmationCode: code) { result in
            switch result {
            case .success:
                print("Attribute verified")
            case .failure(let error):
                print("Update attribute failed with error \(error)")
            }
        }
    }
    
    func deleteUser(reason: String) {
        let user = UserDataSource().getCurrentUser()
        let date = Temporal.Date.now()
        let deletionRequest = DeletionRequest(userid: user.id, userEmail: user.email, reason: reason, date: date)
        Amplify.API.mutate(request: .create(deletionRequest)) { [weak self] mutationResult in
            switch mutationResult {
            case .success(let creationResult):
                switch creationResult {
                case .success:
                    print("Successfully created DeletionRequest")
                case .failure(let error):
                    print(error)
                }
            case .failure(let apiError):
                print(apiError)
            }
        }
    }
    
}



