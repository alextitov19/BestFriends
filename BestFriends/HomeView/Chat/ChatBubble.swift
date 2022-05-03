//
//  ChatBubble.swift
//  BestFriends
//
//  Created by Alex Titov on 4/11/22.
//

import SwiftUI

struct ChatBubble: View {
    
    let groupId: String
    let message: Message
    let myOwnMessage: Bool
    
    @State private var image: UIImage? = nil
    
    var body: some View {
        
        if myOwnMessage {
            if message.image != nil {
                if image != nil {
                    HStack {
                        Spacer()
                        
                        Image(uiImage: image!)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 300)
                            .cornerRadius(25)
                    }
                    .padding(.horizontal, 5)
                    
                } else {
                    MyChatMessage(messageBody: "📸")
                        .onTapGesture { downloadImage(key: message.image) }
                }
            } else {
                MyChatMessage(messageBody: message.body)
            }
        } else {
            if message.image != nil {
                if image != nil {
                    HStack {
                        Image(uiImage: image!)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 300)
                            .cornerRadius(25)
                        
                        Spacer()
                    }
                    .padding(.horizontal, 5)
                    
                } else {
                    FriendChatMessage(name: message.senderName, messageBody: "📸")
                        .onTapGesture { downloadImage(key: message.image) }
                }
            } else {
                FriendChatMessage(name: message.senderName, messageBody: message.body)
            }
        }
    }
    
    private func downloadImage(key: String?) {
        if key != nil {
            print("Image key: ", key!)
            RestApi.instance.getImage(folderId: groupId, imageId: key!).then { data in
                print("Got data")
                let img = UIImage(data: data)
                image = UIImage(data: data)
                print("Got image from data")
            }
        }
        
    }
}

private struct MyChatMessage: View {
    
    let messageBody: String
    
    var body: some View {
        HStack {
            Spacer()
            
            Text(messageBody)
                .padding(10)
                .multilineTextAlignment(.leading)
                .font(.system(size: 16).weight(.light))
                .foregroundColor(.white)
                .background(ColorManager.purple3)
                .cornerRadius(15)
        }
        .padding(.horizontal, 5)
    }
}

private struct FriendChatMessage: View {
    
    let name: String
    let messageBody: String
    
    var body: some View {
        VStack {
            HStack {
                Text(name)
                    .frame(width: 200, alignment: .leading)
                    .foregroundColor(.white)
                    .font(.system(size: 16).weight(.thin))
                    .offset(x: 5, y: 5)
                
                Spacer()
            }
            
            HStack {
                Text(messageBody)
                    .padding(10)
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 16).weight(.light))
                    .foregroundColor(.white)
                    .background(ColorManager.purple3)
                    .cornerRadius(15)
                
                Spacer()
            }
            .padding(.horizontal, 5)
        }
    }
}
