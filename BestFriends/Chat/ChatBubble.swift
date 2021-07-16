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
    let user: User
    let messageDataSource: MessageDataSource
    @State var showingActionSheet = false
    
    init(msg: Message, messageDS: MessageDataSource) {
        message = msg
        messageDataSource = messageDS
        user = UserDataSource().getCurrentUser()
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
                    .font(.system(size: CGFloat(user.chatFontSize)).weight(.thin))
                
                Image(uiImage: uiimage)
                    .resizable()
                    .scaledToFit()
                    //                    .frame(width: 300, height: 200)
                    //                    .aspectRatio(uiimage.size, contentMode: .fill)
                    .gesture(LongPressGesture(minimumDuration: 1)
                                .onEnded { _ in
                                    showingActionSheet = true
                                })
            }
            .actionSheet(isPresented: $showingActionSheet) {
                ActionSheet(title: Text("What would you like to do with the message?"), message: Text(message.body), buttons: [
                    .default(Text("Save to SmileNotes")) {
                        messageDataSource.saveToSmileNotes(message: message)
                    },
                    .default(Text("Report as abusive")) {
                        messageDataSource.reportMessage(message: message)
                    },
                    .cancel()
                ])
            }
            
            
        } else if message.senderID == user.id {
            // A message sent by the CURRENT USED
            
            VStack {
                HStack {
                    Spacer()
                    
                    Text(message.senderName)
                        .frame(width: 200, alignment: .trailing)
                        .foregroundColor(.white)
                        .font(.system(size: CGFloat(user.chatFontSize)).weight(.thin))
                        .offset(x: -5, y: 5)
                }
                
                
                HStack {
                    Spacer()
                    
                    if message.stickerNumber != nil {
                        Image(uiImage: messageDataSource.downloadImage(key: "Stickers/Sticker\(message.stickerNumber!).png"))
                            .resizable()
                            .frame(width: 150, height: 150)
                            .scaledToFit()
                    } else {
                        Text(message.body)
                            .padding(10)
                            .multilineTextAlignment(.leading)
                            .font(.system(size: CGFloat(user.chatFontSize)).weight(.light))
                            .foregroundColor(.white)
                            .background(Color(.purple))
                            .cornerRadius(15)
                            .gesture(LongPressGesture(minimumDuration: 1)
                                        .onEnded { _ in
                                            showingActionSheet = true
                                        })
                    }
                }
            }
            .actionSheet(isPresented: $showingActionSheet) {
                ActionSheet(title: Text("What would you like to do with the message?"), message: Text(message.body), buttons: [
                    .default(Text("Save to SmileNotes")) {
                        messageDataSource.saveToSmileNotes(message: message)
                    },
                    .default(Text("Delete")) {
                        messageDataSource.deleteMessage(message: message)
                    },
                    .cancel()
                ])
            }
            
            
            
        } else {
            // All other messages aka messages sent by USER'S FRIENDS
            VStack {
                HStack {
                    Text(message.senderName)
                        .frame(width: 200, alignment: .leading)
                        .foregroundColor(.white)
                        .font(.system(size: CGFloat(user.chatFontSize)).weight(.thin))
                        .offset(x: 5, y: 5)
                    
                    Spacer()
                }
                
                HStack {
                    if message.stickerNumber != nil {
                        Image(uiImage: messageDataSource.downloadImage(key: "Stickers/Sticker\(message.stickerNumber!).png"))
                            .resizable()
                            .frame(width: 150, height: 150)
                            .scaledToFit()
                    } else {
                        Text(message.body)
                            .padding(10)
                            .multilineTextAlignment(.leading)
                            .font(.system(size: CGFloat(user.chatFontSize)).weight(.light))
                            .foregroundColor(.white)
                            .background(Color(.purple))
                            .cornerRadius(15)
                            .gesture(LongPressGesture(minimumDuration: 1)
                                        .onEnded { _ in
                                            showingActionSheet = true
                                        })
                    }
                    
                    Spacer()
                }
            }
            .actionSheet(isPresented: $showingActionSheet) {
                ActionSheet(title: Text("What would you like to do with the message?"), message: Text(message.body), buttons: [
                    .default(Text("Save to SmileNotes")) {
                        messageDataSource.saveToSmileNotes(message: message)
                    },
                    .default(Text("Report as abusive")) {
                        messageDataSource.reportMessage(message: message)
                    },
                    .cancel()
                ])
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

