//
//  ChatBubble.swift
//  BestFriends
//
//  Created by Alex Titov on 5/5/21.
//

import SwiftUI
import Amplify

struct ChatBubble: View {
    
    let message: Message
    let myID: String
    
    init(msg: Message) {
        message = msg
        myID = Amplify.Auth.getCurrentUser()?.username ?? "could not find username"
    }
    
    var body: some View {
        if message.senderID == myID {
            // A message sent by the CURRENT USED
            
        } else {
            // All other messages aka messages sent by USER'S FRIENDS
            
        }
    }
}
