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
            let uiimage = messageDataSource.downloadImage(key: message.attachmentPath!)
            
            VStack {

                Text(message.senderName)
                    .frame(width: 100, height: 12)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .font(.system(size: 14).weight(.thin))
                
                Image(uiImage: uiimage)
                    .resizable()
                    .aspectRatio(uiimage.size, contentMode: .fill)
            }
            
            
        } else if message.senderID == myID {
            // A message sent by the CURRENT USED
                
                VStack {
                    HStack {
                        Spacer()

                        Text(message.senderName)
                            .frame(width: 200, alignment: .trailing)
                            .foregroundColor(.white)
                            .font(.system(size: 14).weight(.thin))
                        
                        Spacer().frame(width: 5)
                        
                    }
                    
                    
                    HStack {
                        Spacer()

                        VStack {
                                
                                                    
                            ZStack{
                                Rectangle()
                                    .frame(width: getWidth(text: message.body) + 10, height: getHeight(text: message.body))
                                    .foregroundColor(Color(#colorLiteral(red: 0.50868994, green: 0.20776546, blue: 0.9665626884, alpha: 0.2547570032)))
                                    .cornerRadius(15)

                                HStack {
                                    Spacer().frame(width: 0, height: 5)
                                    
                                    Text(message.body)
                                        .frame(width: getWidth(text: message.body), height: getHeight(text: message.body))
                                        .fixedSize(horizontal: true, vertical: false)
                                        .multilineTextAlignment(.leading)
                                        .font(.system(size: 16).weight(.light))
                                        .foregroundColor(.white)
                                    
                                    Spacer().frame(width: 0, height: 5)
                                }
                                
                            }
                        }
//                        Spacer().frame(width: 5)
                        
                    }
                }
                
            
            
        } else {
            // All other messages aka messages sent by USER'S FRIENDS
            
            
                
                VStack {
                    HStack {
                        Spacer().frame(width: 5)

                        Text(message.senderName)
                            .frame(width: 200, alignment: .leading)
                            .foregroundColor(.white)
                            .font(.system(size: 14).weight(.thin))
                        
                        Spacer()

                        
                    }
                    
                    
                    HStack {
//                        Spacer().frame(width: 5)

                        VStack {
                                
                                                    
                            ZStack{
                                Rectangle()
                                    .frame(width: getWidth(text: message.body) + 10, height: getHeight(text: message.body))
                                    .foregroundColor(Color(#colorLiteral(red: 0.50868994, green: 0.20776546, blue: 0.9665626884, alpha: 0.2547570032)))
                                    .cornerRadius(15)

                                HStack {
                                    Spacer().frame(width: 0, height: 5)
                                    
                                    Text(message.body)
                                        .frame(width: getWidth(text: message.body), height: getHeight(text: message.body))
                                        .fixedSize(horizontal: true, vertical: false)
                                        .multilineTextAlignment(.leading)
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
            
    func getWidth(text: String) -> CGFloat {
        if text.count > 24 {
            return 200
        } else {
            return CGFloat(text.count * (10))
        }
    }
    
    func getHeight(text: String) -> CGFloat {
        let result = Double(text.count / 24)
        let rows = result.rounded(.up) + 1
        return CGFloat(rows * 30)
    }
    
}

