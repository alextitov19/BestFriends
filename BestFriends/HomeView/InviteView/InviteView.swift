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
//    @State private var showingAlert = false
//    @State private var shareColor = ColorManager.purple5
    
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
                    .foregroundColor(.green)
                    .font(.system(size: 25, weight: .bold))
                
                Spacer()
                    .frame(height: 10)
                
                
                Text("-> Add up to 5 friends <-")
                    .foregroundColor(.green)
                    .font(.system(size: 27, weight: .light))
                
                Text("(Friends show up as planets on homepage)")
                    .italic()
                    .foregroundColor(.white)
                    .font(.system(size: 15, weight: .thin))
                
                Spacer()
                    .frame(height: 10)
              
                Text("1) First, ask friend to download \n             BestFriendsNetwork \n2) Only one of you send invite \n3) Invite only ONCE or multi planets appear")
                    .fontWeight(.thin)
                    .foregroundColor(.white)
                    .italic()
                    .font(.system(size: 17))
                    .padding()
                
                Spacer()
                    .frame(height: 10)
                
//                Text("Email is CASE SENSITIVE - \nmust enter email exactly how \nfirend typed email in Registration.")
//                    .fontWeight(.thin)
//                    .foregroundColor(.red)
//                    .italic()
//                    .font(.system(size: 22))
//

                
                
                
                
                
                
                
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
//                                    .alert("Push Notifications sent successfully", isPresented: $showingAlert) {
//                                        Button("OK", role: .cancel) { }
//
                            }
                            
                            .frame(width: 120)
                        }
                        .padding()
                        
                        
                       
                        
                        VStack {
//                            Text("*Email is CASE Sensitive")
//                                .fontWeight(.thin)
//                                .foregroundColor(.red)
//                                .italic()
//                                .font(.system(size: 17))
                            Spacer()
                                .frame(height: 40)
                            
                            Text("Accepting Friend Requests")
                                .foregroundColor(.green)
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
                        .frame(height: 35)
                    
                    Text("You already have 5 friends. \nPlease remove one to add a new friend.")
                        .foregroundColor(.green)
                        .font(.system(size: 25, weight: .bold))
                    
//                    Text("You already have 5 friends\nRemove a friend to add new one")
//                        .font(.system(size: 20))
//                        .fontWeight(.thin)
//                        .foregroundColor(.red)
                }
            }
        }
    }
    
    private func inviteFriend() {
        if !email.isEmpty && user != nil {
            inviteClicked = true
            // Send invite
            email = email.lowercased()
            RestApi.instance.createInvite(recipient: email).then { result in
                print("Got result: ", result)
                email = ""
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    inviteClicked = false
                }
            }
        }
        
    }
    
        
//        shareColor = ColorManager.darkGrey
//        showingAlert = true
    
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



