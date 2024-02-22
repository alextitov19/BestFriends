//
//  SessionManager.swift
//  BestFriends
//
//  Created by Alex Titov on 4/16/21.
//
import Foundation

enum AppState {
    case home
    case signUp
    case login
    case chat(user: User, group: Group)
    
}

final class SessionManager: ObservableObject {
    @Published var appState: AppState = .login
    @Published var user: User!
    func showSignUp() {
        appState = .signUp
    }
    
    func showHome() {
        appState = .home
    }
    
    func showLogin() {
        appState = .login
    }
    
    func login(email: String, password: String) {
        RestApi.instance.login(email: email, password: password).then{ tokens in
            print("Tokens: ", tokens)
            self.showHome()
        }.catch { err in
            print("Got error: ", err)
        }
    }
    
    func showChat(user: User, group: Group) {
        appState = .chat(user: user, group: group)
    }
    
    func reloadHome() {
        appState = .login
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.01) {
            self.appState = .home
        }
    }
}
