//
//  SessionManager.swift
//  BestFriends
//
//  Created by Alex Titov on 4/16/21.
//

import Amplify
import AmplifyPlugins

enum AppState {
    case signUp
    case login
    case confirmationCode(username: String, password: String)
    case home(userID: String)
    case rooms
    case settings
    case smileNotes
    case chat(room: Room)
    case infoPages(username: String, password: String)
}

final class SessionManager: ObservableObject {
    @Published var appState: AppState = .login
    
    func getCurrentAuthUser() {
        if let user = Amplify.Auth.getCurrentUser() {
            appState = .home(userID: user.username)
        } else {
            appState = .login
        }
    }
    
    func showRooms() {
        appState = .rooms
    }
    
    func chat(room: Room) {
        appState = .chat(room: room)
    }
    
    func showSettings() {
        appState = .settings
    }
    
    func showSmileNotes() {
        appState = .smileNotes
    }
    
    func showSignUp() {
        appState = .signUp
    }
    
    func showLogin() {
        appState = .login
    }
    
    func showInfoPages(username: String, password: String) {
        appState = .infoPages(username: username, password: password)
    }
    
    func signUp(username: String, email: String, password: String) {
        let attributes = [AuthUserAttribute(.email, value: email)]
        let options = AuthSignUpRequest.Options(userAttributes: attributes)
        
        _ = Amplify.Auth.signUp(
            username: username,
            password: password,
            options: options
        ) { [weak self] result in
            
            switch result {
            
            case .success(let signUpResult):
                print("Sign up result:", signUpResult)
                
                switch signUpResult.nextStep {
                case .done:
                    print("Finished sign up")
                    
                case .confirmUser(let details, _):
                    print(details ?? "no details")
                    
                    DispatchQueue.main.async {
                        self?.appState = .confirmationCode(username: username, password: password)
                    }
                }
                
            case .failure(let error):
                print("Sign up error", error)
            }
            
            
        }
    }
    
    func confirm(username: String, password: String, code: String) {
        _ = Amplify.Auth.confirmSignUp(
            for: username,
            confirmationCode: code
        ) { [weak self] result in
            
            switch result {
            case .success(let confirmResult):
                print(confirmResult)
                if confirmResult.isSignupComplete {
                    DispatchQueue.main.async {
//                        self?.showLogin()
                        self?.showInfoPages(username: username, password: password)
                    }
                }
                
            case .failure(let error):
                print("Failed to confirm code:", error)
            }
        }
    }
    
    func login(username: String, password: String) -> Bool {
        var foo = false
        let group = DispatchGroup()
        group.enter()
        
        _ = Amplify.Auth.signIn(
            username: username,
            password: password
        ) { [weak self] result in
            
            switch result {
            case .success(let signInResult):
                print(signInResult)
                if signInResult.isSignedIn {
                    DispatchQueue.main.async {
                        self?.getCurrentAuthUser()
                    }
                }
                foo = true
                group.leave()
                
            case .failure(let error):
                print("Login error:", error)
                foo = false
                group.leave()
            }
        }
        group.wait()
        return foo
    }
    
    func signOut() {
        _ = Amplify.Auth.signOut { [weak self] result in
            switch result {
            case .success():
                DispatchQueue.main.async {
                    self?.getCurrentAuthUser()
                }
                
            case .failure(let error):
                print("Sign out error:", error)
            }
        }
    }
}
