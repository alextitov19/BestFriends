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
    @State private var invites: [Invite] = []
    @State private var inviteClicked = false
    
    let user: User
    
    var body: some View {
        ZStack {
            
            ColorManager.grey4
                .ignoresSafeArea()
                .onAppear(perform: initLoadData)
            
            VStack {
                
                Spacer()
                    .frame(height: 40)
                
                Text("Send Friend Requests")
                    .foregroundColor(.gray)
                    .font(.system(size: 25, weight: .bold))
                
                Spacer()
                    .frame(height: 10)
                
                
                Text("Add up to 5 friends")
                    .foregroundColor(.purple)
                    .font(.system(size: 27, weight: .light))
          
                
                NavigationLink(
                    destination: EmptyView(),
                    label: {
                        Text("Up to 10 with PURPLE")
                            .fontWeight(.thin)
                            .frame(width: 250, height: 30)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 25))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                  
                    
                    })
                
                Spacer()
                    .frame(height: 15)
                
                Text("1) Ask friend to download app \n2) Enter their email - tap [Invite] \n3) Only one of you send invite")
                    .fontWeight(.thin)
                    .foregroundColor(.white)
                    .italic()
                    .font(.system(size: 17))
                
                if user.friends?.count ?? 0 < 5 {
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
                            
                            Text("Accept Friend Requests")
                                .foregroundColor(.gray)
                                .font(.system(size: 25, weight: .bold))
                            
                            
                            Spacer()
                                .frame(height: 10)
                            
                            Text("-After friend sends Friend Request")
                                .fontWeight(.thin)
                                .foregroundColor(.white)
                                .italic()
                                .font(.system(size: 17))
                            
                            
                            Text("-Come to this page and tap [Accept]")
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
                } else {
                    Spacer()
                        .frame(height: 15)
                    Text("You already have 5 friends\nRemove a friend to add new one")
                        .font(.system(size: 20))
                        .fontWeight(.thin)
                        .foregroundColor(.red)
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
        getInvites()
    }
    
    private func getInvites() {
        RestApi.instance.getInvites().then {result in
            print("Got result: ", result)
            invites = result
        }
    }
    
    
}



