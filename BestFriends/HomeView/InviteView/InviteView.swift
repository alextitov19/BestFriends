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
                
                Text("Friend Requests")
                    .foregroundColor(.gray)
                    .font(.system(size: 30, weight: .bold))
              
                Spacer()
                    .frame(height: 10)
                
                
                Text("Add up to 5 friends")
                    .foregroundColor(.purple)
                    .font(.system(size: 27, weight: .light))
                
                
                Text("1) Ask friend to download app \n2) Enter their email - tap [Invite] \n3) Only one of you send invite")
                    .fontWeight(.thin)
                    .foregroundColor(.white)
                    .italic()
                    .font(.system(size: 17))
                
                VStack {
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

                
                Spacer()
                    .frame(height: 30)
                    
                    VStack {
                
                Text("* Setup Chat Rooms")
                    .foregroundColor(.gray)
                    .font(.system(size: 30, weight: .bold))
                
                        
                        Spacer()
                            .frame(height: 10)
                        
                        Text("Tap friend's 'planet' on homepage")
                            .fontWeight(.thin)
                            .foregroundColor(.white)
                            .italic()
                            .font(.system(size: 17))
                    
                        
                        Text("Tap [Create New Chat]")
                            .fontWeight(.thin)
                            .foregroundColor(.white)
                            .italic()
                            .font(.system(size: 17))
                
                     
                        
                        Text("Name Chat Room")
                            .fontWeight(.thin)
                            .foregroundColor(.white)
                            .italic()
                            .font(.system(size: 17))
                        
                        Spacer()
                            .frame(height: 7)
                        
                        Text("Push Notification Sent")
                            .fontWeight(.thin)
                            .foregroundColor(.white)
                            .italic()
                            .font(.system(size: 17))
                        
                    }

                }
                
                
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



