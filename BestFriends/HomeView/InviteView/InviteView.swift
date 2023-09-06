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
    
//    let user: User
    
    let user: User
   let atmosphere: Atmosphere
    let friends: [User]
   let friendAtmospheres: [Atmosphere]
    let groups: [Group]
    
    
    
    var body: some View {
        ZStack {
            
            ColorManager.grey4
                .ignoresSafeArea()
                .onAppear(perform: initLoadData)
            
            VStack {
                
                Spacer()
                    .frame(height: 10)
                
                Button(action: {
                                             sessionManager.showLogin()
                                         },
                                             label: {
                                             Image("home-alt2")
                                                 .frame(width: 50, height: 25)
                                                 .foregroundColor(.white)
                                                 .font(.system(size: 20))
                                                 .background(ColorManager .grey2)
                                                 .cornerRadius(15)
                                                 .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                                                 .opacity(0.70)

                                         })
                
                
                Text("Add 5 Friends")
                    .foregroundColor(ColorManager .grey2)
                    .font(.system(size: 30, weight: .bold))
                
                Spacer()
                    .frame(height: 10)
                
                
//                Text("-> Add up to 5 friends <-")
//                    .foregroundColor(.green)
//                    .font(.system(size: 27, weight: .light))
                
           
                
                
                NavigationLink(
                    destination: EmptyView(),
                   label: {
                       Text("Friends show up as planets on homepage \n\nFriend's current 'mood' shows as atmosphere around their planet \n\nPlease send only ONE friend invite")
                           .fontWeight(.thin)
                           .frame(width: 300, height: 100)
                           .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                           .font(.system(size: 13))
                           .background(ColorManager.grey3)
                           .cornerRadius(10)
                           .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                   })
                
//                NavigationLink(
//                    destination: WhyFiveFriends(user: user, atmosphere: atmosphere, friends: friends,  friendAtmospheres: friendAtmospheres, groups: groups),
//                   label: {
//                       Text("Why only 5 BFFs to start?")
//                           .fontWeight(.thin)
//                           .frame(width: 300, height: 40)
//                           .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                           .font(.system(size: 25))
//                           .background(Color.orange)
//                           .cornerRadius(10)
//                           .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                   })
                
//                Text("(Friends show up as planets on homepage)")
//                    .italic()
//                    .foregroundColor(ColorManager .grey2)
//                    .font(.system(size: 15, weight: .light))
                
                Spacer()
                    .frame(height: 10)
              
                Text("Enter your friend's email (case sensitive)")
                    .fontWeight(.thin)
                    .foregroundColor(.white)
                    .italic()
                    .font(.system(size: 17))
                    .padding()
                
             
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
                                .frame(height: 20)
                            
                            Text("Accepting Friend Requests")
                                .foregroundColor(ColorManager .purple3)
                                .font(.system(size: 25, weight: .bold))
                            
                            
                            Spacer()
                                .frame(height: 10)
                            
                            Text("After friend sends Friend Request,")
                                .fontWeight(.thin)
                                .foregroundColor(.white)
                                .italic()
                                .font(.system(size: 17))
                            
                            
                            Text("come to this page and tap [Accept]")
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



