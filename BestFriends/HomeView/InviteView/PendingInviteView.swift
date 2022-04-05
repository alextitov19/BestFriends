//
//  PendingInviteView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/5/22.
//

import SwiftUI

struct PendingInviteView: View {
    
    let invite: Invite
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    HStack {
                        Text(invite.name)
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                        
                        Spacer()
                    }
                    
                    HStack {
                        Text(invite.sender)
                            .font(.system(size: 18))
                            .foregroundColor(.white)
                        
                        Spacer()
                    }
                }
                
                Spacer()
            }
            
            HStack {
                Button(action: {
                    
                }) {
                    Text("Accept")
                        .frame(width: 175, height: 40)
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(15)

                }
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Text("Decline")
                        .frame(width: 175, height: 40)
                        .foregroundColor(.white)
                        .background(Color.red)
                        .cornerRadius(15)

                }


            }
        }
        .padding(.horizontal, 20)
    }
}
