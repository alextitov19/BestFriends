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
    
    var body: some View {
        ZStack {
            ColorManager.grey4
                .ignoresSafeArea()
                .onAppear(perform: initLoadData)
            
            VStack {
                // Top part for inviting a friend
                HStack {
                    MainTextField(text: $email, placeholder: "Email")
                    
                    Button(action: inviteFriend) {
                        Text("Invite")
                            .frame(width: 100, height: 40)
                            .foregroundColor(.white)
                            .background(Color.green)
                            .cornerRadius(15)
                    }
                    .frame(width: 120)
                }
                .padding(.horizontal, 10)

                
                // Invites
                ScrollView (.vertical) {
                    ForEach(invites, id: \.sender) {invite in
                        HStack {
                            Text("Invite")
                                .padding()
                            
                            Text("Accept")
                                .padding()
                        }
                    }
                }
            }
        }
    }
    
    private func inviteFriend() {
        if !email.isEmpty && user != nil {
            // Send invite
            RestApi.instance.createInvite(recipient: email).then { result in
                print("Got result: ", result)
                email = ""
            }
        }
        
    }
    
    private func initLoadData() {
        getUser()
        getInvites()
    }
    
    private func getUser() {
        RestApi.instance.getCurrentUser().then {result in
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
