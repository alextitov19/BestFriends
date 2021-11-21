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
        self.smileNotes = user.smileNotes
    }
    
    var body: some View {
        ZStack {
            Image("SignUpPinBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            if smileNotes.count > 0 {
                SmileNotesCard(smileNote: smileNotes.randomElement()!, hidden: false)
            } else {
               
           
            
                VStack {
                    
                    Spacer()
                        .frame(height: 5)
                    
                    
                    Text("*Message for users page*")
                        .font(.system(size: 20))
                        .italic()
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                        .frame(height: 25)
                    
                    
                    Text("Hug-it-Out coming soon!")
                        .font(.system(size: 65))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                     
                    
                    
                    
                    
                }
            
            
            
            }
            
        }
    }
}




struct SmieNotePopover_Previews : PreviewProvider {
    static var previews: some View {
        
        SmieNotePopover()
    }
}
