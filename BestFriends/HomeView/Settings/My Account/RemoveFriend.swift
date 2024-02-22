//
//  RemoveFriend.swift
//  BestFriends
//
//  Created by Social Tech on 4/9/22.
//

import Foundation
import SwiftUI


struct RemoveFriend: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    
    @State private var removed: [String] = []
    
    var body: some View {
        ZStack {
            ColorManager.purple3
                .ignoresSafeArea()
            
            VStack {
                Text("Remove a Friend")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 0)
                
                Spacer()
                    .frame(height: 15)
                
                VStack {
                    ForEach(friends, id: \.id) { friend in
                        if !removed.contains(friend.id) {
                            HStack {
                                Text(friend.firstName)
                                    .foregroundColor(ColorManager.purple1)
                                    .padding()
                                
                                Text(friend.lastName)
                                    .foregroundColor(ColorManager.purple1)
                                    .padding(.horizontal)
                                
                                Spacer()
                                
                                Button(action: {
                                    removeFriend(friend: friend)
                                }, label: {
                                    Text("Remove")
                                        .fontWeight(.thin)
                                        .frame(width: 100, height: 30)
                                        .foregroundColor(ColorManager.purple1)
                                        .font(.system(size: 20))
                                        .background(ColorManager.red)
                                        .cornerRadius(15)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                })
                            }
                        }
                    }
                    .padding()
                }
                
                Image("home-alt2")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .scaledToFill()
                    .onTapGesture(perform: {
                        sessionManager.showLogin()
                    })
            }
            
        }
    }
    
    private func removeFriend(friend: User) {
        removed.append(friend.id)
        
        // Updating self
        var userFriends = user.friends!
        userFriends.remove(at: userFriends.firstIndex(of: friend.id) ?? 0)
        let updatedUser = User(id: user.id, firstName: user.firstName, lastName: user.lastName, APNToken: user.APNToken, friends: userFriends, groups: user.groups, hiddenGroups: user.hiddenGroups, atmosphere: user.atmosphere, chatPin: user.chatPin, chatBackground: user.chatBackground, smileNotes: user.smileNotes)
        RestApi.instance.updateUser(user: updatedUser).then({ result in
            print("updating self result: ", result)
        })
        
        // Updating friend
        var friendFriends = friend.friends!
        friendFriends.remove(at: friendFriends.firstIndex(of: user.id) ?? 0)
        let updatedFriend = User(id: friend.id, firstName: friend.firstName, lastName: friend.lastName, APNToken: friend.APNToken, friends: friendFriends, groups: friend.groups, hiddenGroups: friend.hiddenGroups, atmosphere: friend.atmosphere, chatPin: friend.chatPin, chatBackground: friend.chatBackground, smileNotes: friend.smileNotes)
        RestApi.instance.updateUser(user: updatedFriend).then({ result in
            print("updating friend result: ", result)
        })
    }
}


