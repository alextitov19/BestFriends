//
//  SessionManager.swift
//  BestFriends
//
//  Created by Alex Titov on 4/16/21.
//
import Foundation

enum AppState {
    case welcome
    case signUp
    case login
}

final class SessionManager: ObservableObject {
    @Published var appState: AppState = .login
    
    func showSignUp() {
        appState = .signUp
    }
    
    func showWelcome() {
        appState = .welcome
    }
    
    func showLogin() {
        appState = .login
    }
}
