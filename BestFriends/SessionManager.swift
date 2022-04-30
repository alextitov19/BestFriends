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
    case invite
    case chat(user: User, group: Group)
    case settings
    case breath
    case breathInvite
    case masterFriendVault
    case sendNiceChat
    case friendQualities
    case bestFriendMessages
    case individualFriendMessages
    case myStreaks
    case impetus
    case dramaMainView
    case fightWithFriend
    case notReadyTalk
    case nuclearOption
    case textingFirst
    case tryThis
    case timeToTalk
    case dramaCentralView
    case why
    case fightLandingView
    
}

final class SessionManager: ObservableObject {
    @Published var appState: AppState = .fightWithFriend

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
    
    func showInvite() {
        appState = .invite
    }
    
    func showChat(user: User, group: Group) {
        appState = .chat(user: user, group: group)
    }
    
    func showSettings() {
        appState = .settings
    }
   
    func testBreathIn() {
        appState = .breath
    }
    func showBreathInviteView() {
        appState = .breathInvite
    }
    func showMasterFriendVault() {
        appState = .masterFriendVault
    }
    func showSendNiceChat() {
        appState = .sendNiceChat
    }
    func showFriendQualities() {
            appState = .friendQualities
    }
    func showBestFriendMessages() {
            appState = .bestFriendMessages
    }
    func showIndividualFriendMessages() {
            appState = .individualFriendMessages
    }
    func showMyStreaks() {
            appState = .myStreaks
    }
    func showImpetus() {
            appState = .impetus
    }
    func showDramaMainView() {
            appState = .dramaMainView
    }
    func showFightWithFriend() {
            appState = .fightWithFriend
    }
    func showNotReadyTalk() {
            appState = .notReadyTalk
    }
    func showNuclearOption() {
            appState = .nuclearOption
    }
    func showTextingFirst() {
            appState = .textingFirst
    }
    func showTryThis() {
            appState = .tryThis
    }
    func showTimeToTalk() {
            appState = .timeToTalk
    }
    func showDramaCentralView() {
            appState = .dramaCentralView
    }
    func showWhy() {
            appState = .why
    }
    func showFightLandingView() {
            appState = .fightLandingView
        
        
        
        
        
        }
}
