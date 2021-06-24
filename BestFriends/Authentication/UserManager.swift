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
        Amplify.API.mutate(request: .create(user)) { [weak self] mutationResult in
            switch mutationResult {

            case .success(let creationResult):
                
                switch creationResult {
                case .success:
                    print("Successfully created user")
                    
                    
                    
                case .failure(let error):
                    print(error)
                }
                
            case .failure(let apiError):
                print(apiError)
            }
        }
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

    func changePassword(oldPassword: String, newPassword: String) {
        Amplify.Auth.update(oldPassword: oldPassword, to: newPassword) { result in
            switch result {
            case .success:
                print("Change password succeeded")
            case .failure(let error):
                print("Change password failed with error \(error)")
            }
        }
    }
    
    func updateEmail(email: String) {
        Amplify.Auth.update(userAttribute: AuthUserAttribute(.email, value: email)) { result in
            do {
                let updateResult = try result.get()
                switch updateResult.nextStep {
                case .confirmAttributeWithCode(let deliveryDetails, let info):
                    print("Confirm the attribute with details send to - \(deliveryDetails) \(String(describing: info))")
                case .done:
                    print("Update completed")
                }
            } catch {
                print("Update attribute failed with error \(error)")
            }
        }
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

}



