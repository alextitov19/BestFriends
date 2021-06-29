//
//  RandomSmileNotePage.swift
//  BestFriends
//
//  Created by Alex Titov on 6/19/21.
//

import SwiftUI
import Amplify

struct SmieNotePopover: View {
    
    var smileNotes: [SmileNote]
    
    init() {
        let username = Amplify.Auth.getCurrentUser()?.username ?? "Could not find user"
        let user = UserDataSource().getUser(id: username)
        self.smileNotes = user.smileNotes ?? []
    }
    
    var body: some View {
        ZStack {
            Image("SmileNote4")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            if smileNotes.count > 0 {
                SmileNotesCard(smileNote: smileNotes.randomElement()!, hidden: false)
            } else {
                Text("No SmileNotes yet, you should add some!")
                    .foregroundColor(.white)
            }
            
        }
    }
}

