//
//  SessionManager.swift
//  BestFriends
//
//  Created by Alex Titov on 4/15/21.
//

import Amplify

enum AuthState {
    case signUp
    case login
    case confirmCode(username: String)
    case session(user: AuthUser)
}

final class SessionManager: ObservableObject {
    @Published var authState: AuthState = .login
}
