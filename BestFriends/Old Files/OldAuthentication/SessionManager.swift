//
//  SessionManager.swift
//  BestFriends
//
//  Created by Alex Titov on 4/16/21.
//

import Amplify
import AmplifyPlugins

enum AppState {
    case welcome
    case signUp
    case login
    case home
    case settings
    case favoriteMessages
    case chat(room: Room)
    case loading(page: String)
    case pin(room: Room)
    case isInvitedToChat(invitedRoomId: String)
    case shakingCool
    case broadcast
    case hideouts
}

final class SessionManager: ObservableObject {
    @Published var appState: AppState = .welcome
    
    func getCurrentAuthUser() {
        if Amplify.Auth.getCurrentUser() != nil {
            if ManDocDataSource().getManDoc(id: "takenUsernames").usernames!.contains(Amplify.Auth.getCurrentUser()?.username) {
                appState = .home
            } else {
                signOut()
            }
        } else {
            print("No user, going to welcome")
            appState = .welcome
        }
    }
    
    
    func chat(room: Room) {
        appState = .chat(room: room)
    }
    
    func home() {
        appState = .home
    }
    
    func showSettings() {
        appState = .settings
    }
    
    func reloadToPage(page: String) {
        appState = .loading(page: page)
    }
    
    func showFavoriteMessages() {
        appState = .favoriteMessages
    }
    
    func showSignUp() {
        appState = .signUp
    }
    
    func showWelcome() {
        appState = .welcome
    }
    
    func showLogin() {
        appState = .login
    }
    
    func showPin(room: Room) {
        appState = .pin(room: room)
    }
    
    func userHasBeenInvitedToChat(invitedRoomId: String) {
        appState = .isInvitedToChat(invitedRoomId: invitedRoomId)
    }
    
    func showShakingCool() {
        appState = .shakingCool
    }
    
    func showBroadcast() {
        appState = .broadcast
    }
    
    func showHideouts() {
        appState = .hideouts
    }
    
    func signUp(username: String, email: String, password: String) {
//        let attributes = [AuthUserAttribute(.email, value: email)]
//        let options = AuthSignUpRequest.Options(userAttributes: attributes)
        
        
        _ = Amplify.Auth.signUp(username: username, password: password) { [weak self] result in
            
            switch result {
            
            case .success(let signUpResult):
                print("Sign up result:", signUpResult)
                
                switch signUpResult.nextStep {
                case .done:
                    print("Finished sign up")
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                        print("Logging in after signup")
                        self?.login(username: username, password: password)
                    }
                    
                case .confirmUser(let details, _):
                    print("The details are: ", details.debugDescription ?? "no details")
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                        print("Logging in after signup")
                        self?.login(username: username, password: password)
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
                        self?.login(username: username, password: password)
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
                self?.signOut()
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
