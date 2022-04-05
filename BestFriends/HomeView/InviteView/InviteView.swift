//
//  InviteView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/5/22.
//

import SwiftUI

struct InviteView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    @State private var email = ""

    var body: some View {
        ZStack {
            ColorManager.grey4
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    MainTextField(text: $email, placeholder: "Email")
                    
                    Button(action: inviteFriend) {
                        CustomButtonInterior(text: "Invite Friend", backgroundColor: .green, textColor: .white)
                    }
                }
            }
        }
    }
    
    private func inviteFriend() {
        
    }
}
