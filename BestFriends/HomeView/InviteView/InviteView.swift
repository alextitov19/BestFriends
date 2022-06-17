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
    @State private var user: User?
    
    @State private var invites: [Invite] = []
    
    @State private var inviteClicked = false
    
    var body: some View {
        ZStack {
              
          ColorManager.grey4
                .ignoresSafeArea()
                .onAppear(perform: initLoadData)
            
            VStack {
                
                Spacer()
                    .frame(height: 40)
                
                Text("You may add up to 5 friends")
                    .foregroundColor(.purple)
                    .font(.system(size: 27, weight: .light))
                
                
                Text("1) Ask friend to download BestFriends \n2) Enter their email - tap [Invite] \n3) Only invite once \n4) Only one person sends an invite \n 5) If duplicate planets delete in Settings")
                    .fontWeight(.thin)
                    .foregroundColor(.white)
                    .italic()
                    .font(.system(size: 17))
                
                
                // Top part for inviting a friend
                HStack {
                    MainTextField(text: $email, placeholder: "Email")
                    
                    Button(action: inviteFriend) {
                        Text("Invite")
                            .frame(width: 100, height: 40)
                            .foregroundColor(.white)
                            .background(inviteClicked ? ColorManager.purple3 : Color.green)
                            .cornerRadius(15)
                    }
                    .frame(width: 120)
                }
                .padding()

                Text("Friend Requests")
                    .foregroundColor(.gray)
                    .font(.system(size: 30, weight: .bold))
                
                // Invites
                ScrollView (.vertical) {
                    ForEach(invites, id: \.sender) {invite in
                        PendingInviteView(invite: invite)
                    }
                }
            }
        }
    }
    
    private func inviteFriend() {
        if !email.isEmpty && user != nil {
            inviteClicked = true
            // Send invite
            RestApi.instance.createInvite(recipient: email).then { result in
                print("Got result: ", result)
                email = ""
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    inviteClicked = false
                }
            }
        }
        
    }
    
    private func initLoadData() {
        getUser()
        getInvites()
    }
    
    private func getUser() {
        RestApi.instance.getCurrentUser().then { result in
            print("Got result: ", result)
            user = result
        }
    }
    
    private func getInvites() {
        RestApi.instance.getInvites().then {result in
            print("Got result: ", result)
            invites = result
        }
    }
    
   
}


