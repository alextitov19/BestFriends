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
    @State private var showingActionSheet = false
    @State private var isImagePresented = false
    @State private var currentLink = ""
    @State private var backgroundColor1 = Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 0.7475871361))
    @State private var backgroundColor2 = Color(#colorLiteral(red: 1, green: 0.6660452485, blue: 0, alpha: 0.75))
    @State private var timestring = ""
    
    init(msg: Message, messageDS: MessageDataSource, myuser: User) {
        message = msg
        messageDataSource = messageDS
        user = myuser
        if message.hasBeenLiked {
            print("Has been liked")
        }
    }
    
    var body: some View {
        
        if message.senderID == user.id {
            // A message sent by the CURRENT USED
            
            VStack {
                HStack {
                    Spacer()
                    
                    if message.attachmentPath != nil {
                        Text("Show image")
                            .padding(10)
                            .multilineTextAlignment(.leading)
                            .font(.system(size: CGFloat(user.chatFontSize)).weight(.light))
                            .foregroundColor(.white)
                            .background(backgroundColor2)
                            .cornerRadius(15)
                            .onTapGesture {
                                isImagePresented.toggle()
                            }
                            .sheet(isPresented: $isImagePresented) {
                                FullScreenChatImage(link: message.attachmentPath!)
                            }
                        
                    } else if message.stickerNumber != nil {
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
                            .background(backgroundColor1)
                            .cornerRadius(15)
                            .gesture(LongPressGesture(minimumDuration: 1)
                                        .onEnded { _ in
                                            showingActionSheet = true
                                        })
                    }
                }
                HStack {
                    Spacer()
                    
                    Text(timestring)
                        .foregroundColor(.white)
                        .onAppear {
                            getTimestring()
                        }
                }
                
                
            }
            .actionSheet(isPresented: $showingActionSheet) {
                ActionSheet(title: Text("What would you like to do with the message?"), message: Text(message.body), buttons: [
                    .default(Text("Delete")) {
                        messageDataSource.deleteMessage(message: message)
                    },
                    .cancel()
                ])
            }
            .padding(5)
            
            
            
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
                    if message.attachmentPath != nil {
                        Text("Show image")
                            .padding(10)
                            .multilineTextAlignment(.leading)
                            .font(.system(size: CGFloat(user.chatFontSize)).weight(.light))
                            .foregroundColor(.white)
                            .background(backgroundColor2)
                            .cornerRadius(15)
                            .onTapGesture {
                                isImagePresented.toggle()
                            }
                            .gesture(LongPressGesture(minimumDuration: 1)
                                        .onEnded { _ in
                                            showingActionSheet = true
                                        })
                            .sheet(isPresented: $isImagePresented) {
                                FullScreenChatImage(link: message.attachmentPath!)
                                
                            }
                        
                    } else if message.stickerNumber != nil {
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
                            .background(backgroundColor1)
                            .cornerRadius(15)
                            .gesture(LongPressGesture(minimumDuration: 1)
                                        .onEnded { _ in
                                            showingActionSheet = true
                                        })
                    }
                    
                    Spacer()
                }
                
                HStack {
                    Text(timestring)
                        .foregroundColor(.white)
                        .onAppear {
                            getTimestring()
                        }
                    
                    Spacer()
                }
                
            }
            .actionSheet(isPresented: $showingActionSheet) {
                ActionSheet(title: Text("What would you like to do with the message?"), message: Text(message.body), buttons: [
                    .default(Text("Save to SmileNotes")) {
                        messageDataSource.saveToSmileNotes(message: message)
                    },
                    .default(Text("Thumbs Up")) {
                        messageDataSource.thumbsUpMessage(message: message, theroom: messageDataSource.room)
                    },
                    .default(Text("Report as abusive")) {
                        messageDataSource.reportMessage(message: message)
                        backgroundColor1 = .red
                        backgroundColor2 = .red
                    },
                    .cancel()
                ])
            }
            .padding(5)
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
    
    func getTimestring() {
        let minutes: Int = Int(Int(Int(NSDate().timeIntervalSince1970) - message.creationDate) / 60)
        timestring = "\(minutes) min"
        if minutes > 60 {
            let hours = Int(minutes / 60)
            timestring = "\(hours) hr"
        }
    }
    
}


