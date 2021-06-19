//
//  RandomSmileNotePage.swift
//  BestFriends
//
//  Created by Alex Titov on 6/19/21.
//

import SwiftUI
import Amplify

struct SmieNotePopover: View {
    
    var messages: [Message]
    
    init() {
        let username = Amplify.Auth.getCurrentUser()?.username ?? "Could not find user"
        let user = UserDataSource().getUser(id: username)
        self.messages = user.smileNotes ?? []
    }
    
    var body: some View {
        ZStack {
            Image("SmileNote4")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            if messages.count > 0 {
                SmileNotesCard(message: messages.randomElement()!, hidden: false)
            } else {
             Text("No SmileNotes yet, you should add some!")
                .foregroundColor(.white)
            }
            
        }
    }
}

