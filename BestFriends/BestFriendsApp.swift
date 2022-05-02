//
//  BestFriendsApp.swift
//  BestFriends
//
//  Created by Alex Titov on 4/12/21.
//

import SwiftUI

@main
struct BestFriendsApp: App {
    
    @ObservedObject var sessionManager = SessionManager()
    
    var body: some Scene {
        WindowGroup {
            switch sessionManager.appState {
            case .signUp:
                SignUpView()
                    .environmentObject(sessionManager)
            case .login:
                LoginView()
                    .environmentObject(sessionManager)
            case .home:
                HomeView()
                    .environmentObject(sessionManager)
            case .invite:
                InviteView()
                    .environmentObject(sessionManager)
            case .chat(let user, let group):
                ChatView(user: user, group: group)
                    .environmentObject(sessionManager)
            case .settings:
                SettingsView()
                    .environmentObject(sessionManager)
            case .breath:
                BreathInView()
                    .environmentObject(sessionManager)
            case .breathInvite:
                BreathInviteView()
                    .environmentObject(sessionManager)
            case .masterFriendVault:
                MasterFriendVault()
                    .environmentObject(sessionManager)
            case .sendNiceChat:
                SendNiceChat()
                    .environmentObject(sessionManager)
            case .friendQualities:
                FriendQualities()
                    .environmentObject(sessionManager)
            case .bestFriendMessages:
                BestFriendMessages()
                    .environmentObject(sessionManager)
            case .individualFriendMessages:
                IndividualFriendMessages()
                    .environmentObject(sessionManager)
            case .myStreaks:
                MyStreaks()
                    .environmentObject(sessionManager)
            case .impetus:
                Impetus()
                    .environmentObject(sessionManager)
            case .dramaMainView:
                DramaMainView()
                    .environmentObject(sessionManager)
            case .fightWithFriend:
                FightWithFriend()
                    .environmentObject(sessionManager)
            case .notReadyTalk:
                NotReadyTalk()
                    .environmentObject(sessionManager)
            case .nuclearOption:
                NuclearOption()
                    .environmentObject(sessionManager)
            case .textingFirst:
                TextingFirst()
                    .environmentObject(sessionManager)
            case .tryThis:
                TryThis()
                    .environmentObject(sessionManager)
            case .timeToTalk:
                TimeToTalk()
                    .environmentObject(sessionManager)
            case .dramaCentralView:
                DramaCentralView()
                    .environmentObject(sessionManager)
            case .why:
                Why()
                    .environmentObject(sessionManager)
            case .fightLandingView:
                FightLandingView()
                    .environmentObject(sessionManager)
            case .journalFight:
                JournalFight()
                    .environmentObject(sessionManager)
            case .showHug:
                ShowHug()
                    .environmentObject(sessionManager)
            case .youGotThis:
                YouGotThis()
                    .environmentObject(sessionManager)
            case .textOptionsView:
                TextOptionsView()
                    .environmentObject(sessionManager)
            case .breakUpNote:
                BreakUpNote()
                    .environmentObject(sessionManager)
            case .textingNote:
                TextingNote()
                    .environmentObject(sessionManager)
                
                
            }
        }
    }
}





