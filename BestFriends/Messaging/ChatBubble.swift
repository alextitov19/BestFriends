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
            HStack {
                Spacer().frame(width: 200)

                ZStack{
                    Rectangle()
                        .frame(width: 200, height: 50)
                        .foregroundColor(Color(#colorLiteral(red: 0.50868994, green: 0.20776546, blue: 0.9665626884, alpha: 0.1039135661)))
                        .cornerRadius(25)

                    HStack {
                        Spacer()
                        
                        Text(message.body)
                            .frame(width: 200, height: 40)
                            .multilineTextAlignment(.center)
                            .font(.headline)
                            .foregroundColor(.white)
                        
                        Spacer()
                    }
                }
            }
            
        } else {
            // All other messages aka messages sent by USER'S FRIENDS
            HStack {
                ZStack{
                    Rectangle()
                        .frame(width: 200, height: 50)
                        .foregroundColor(Color(#colorLiteral(red: 0.50868994, green: 0.20776546, blue: 0.9665626884, alpha: 0.1039135661)))
                        .cornerRadius(25)

                    HStack {
                        Spacer()
                        
                        Text(message.body)
                            .frame(width: 200, height: 40)
                            .multilineTextAlignment(.center)
                            .font(.headline)
                            .foregroundColor(.white)
                        
                        Spacer().frame(width: 200)
                    }
                }
                
                Spacer()
            }
            
        }
        
    }
}
