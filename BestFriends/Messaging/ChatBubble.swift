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
    let messageDataSource: MessageDataSource
    
    init(msg: Message, messageDS: MessageDataSource) {
        message = msg
        messageDataSource = messageDS
        myID = Amplify.Auth.getCurrentUser()?.username ?? "could not find username"
    }
    
    var body: some View {
        
        if message.attachmentPath != nil {
            // A message that was sent with an image (no body text, just image)
            Image(uiImage: messageDataSource.downloadImage(key: message.attachmentPath!))
            
            
        } else if message.senderID == myID {
            // A message sent by the CURRENT USED
                
                VStack {
                    HStack {
                        Spacer()

                        Text(message.senderName)
                            .frame(width: 100, height: 12)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .font(.system(size: 14).weight(.thin))
                        
                    }
                    
                    
                    HStack {
                        Spacer()

                        VStack {
                                
                                                    
                            ZStack{
                                Rectangle()
                                    .frame(width: 200, height: 50)
                                    .foregroundColor(Color(#colorLiteral(red: 0.50868994, green: 0.20776546, blue: 0.9665626884, alpha: 0.1039135661)))
                                    .cornerRadius(25)

                                HStack {
                                    Spacer().frame(width: 0, height: 5)
                                    
                                    Text(message.body)
                                        .frame(width: 200, height: 40)
                                        .multilineTextAlignment(.center)
                                        .font(.system(size: 16).weight(.light))
                                        .foregroundColor(.white)
                                    
                                    Spacer().frame(width: 0, height: 5)
                                }
                                
                            }
                        }
                        Spacer().frame(width: 20)
                        
                    }
                }
                
            
            
        } else {
            // All other messages aka messages sent by USER'S FRIENDS
            
            
                
                VStack {
                    HStack {

                        Text(message.senderName)
                            .frame(width: 100, height: 12)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .font(.system(size: 14).weight(.thin))
                        Spacer()

                        
                    }
                    
                    
                    HStack {
                        Spacer().frame(width: 20)

                        VStack {
                                
                                                    
                            ZStack{
                                Rectangle()
                                    .frame(width: 200, height: 50)
                                    .foregroundColor(Color(#colorLiteral(red: 0.50868994, green: 0.20776546, blue: 0.9665626884, alpha: 0.1039135661)))
                                    .cornerRadius(25)

                                HStack {
                                    Spacer().frame(width: 0, height: 5)
                                    
                                    Text(message.body)
                                        .frame(width: 200, height: 40)
                                        .multilineTextAlignment(.center)
                                        .font(.system(size: 16).weight(.light))
                                        .foregroundColor(.white)
                                    
                                    Spacer().frame(width: 0, height: 5)
                                }
                                
                            }
                        }
                        Spacer()
                        
                    }
                
            }
            
        }
            
        
    }
}
