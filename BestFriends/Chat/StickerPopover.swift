//
//  StickerPopover.swift
//  BestFriends
//
//  Created by Alex Titov on 7/5/21.
//

import SwiftUI

struct StickerPopover: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    @ObservedObject var messageDataSource: MessageDataSource
    
    @Binding var showSheet: Bool
    
    let userDataSource = UserDataSource()
    
    var user: User
    
    var body: some View {
        ZStack {
            Image("blueGradient1")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                ZStack {
                    Color(#colorLiteral(red: 0.5360019803, green: 0.3284610212, blue: 1, alpha: 1))
                        .frame(width:80, height: 40)
                        .background(Color(.blue))
                        .cornerRadius(15)
                    
                    HStack {
                        Image("tokensIcon")
                            .resizable()
                            .frame(width: 30, height: 30, alignment: .center)
                            .scaledToFit()
                        
                        Text("\(user.tokens)")
                            .font(.system(size: 20, weight: .light))
                            .foregroundColor(.white)
                    }
                }
                .padding(10)
                
                ScrollView {
                    VStack {
                        ForEach(1...1, id: \.self) { i in
                            HStack {
                                ForEach(1...4, id: \.self) { j in
                                    let number = (4*(i-1))+j
                                    ZStack {
                                        Image(uiImage: messageDataSource.downloadImage(key: "Stickers/Sticker\(number).png"))
                                            .resizable()
                                            .frame(width: 65, height: 65)
                                            .scaledToFit()
                                            .padding()
                                        
                                        if user.unlockedStickers == nil || user.unlockedStickers!.contains(number) == false {
                                            Image("lockBlack")
                                                .resizable()
                                                .frame(width: 65, height: 65)
                                                .scaledToFit()
                                        }
                                        
                                        Button(action: {
                                            if user.unlockedStickers != nil {
                                                if user.unlockedStickers!.contains(number) == false && user.tokens >= 7 {
                                                    var newuser = user
                                                    newuser.unlockedStickers?.append(number)
                                                    newuser.tokens -= 7
                                                    userDataSource.updateUser(user: newuser)
                                                    
                                                    let message = Message(id: Helper().randomString(length: 20), senderName: user.firstName, senderID: user.id, body: "*Sticker*", creationDate: Int(NSDate().timeIntervalSince1970), stickerNumber: number)
                                                    
                                                    messageDataSource.sendMessage(message: message)
                                                } else if user.unlockedStickers!.contains(number) == true {
                                                    let message = Message(id: Helper().randomString(length: 20), senderName: user.firstName, senderID: user.id, body: "*Sticker*", creationDate: Int(NSDate().timeIntervalSince1970), stickerNumber: number)
                                                    
                                                    messageDataSource.sendMessage(message: message)
                                                }
                                            } else if user.tokens >= 7 {
                                                var newuser = user
                                                newuser.unlockedStickers?.append(number)
                                                newuser.tokens -= 7
                                                userDataSource.updateUser(user: newuser)
                                                
                                                let message = Message(id: Helper().randomString(length: 20), senderName: user.firstName, senderID: user.id, body: "*Sticker*", creationDate: Int(NSDate().timeIntervalSince1970), stickerNumber: number)
                                                
                                                messageDataSource.sendMessage(message: message)
                                            }
                                        }) {
                                            Color(.clear)
                                                .frame(width: 65, height: 65)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

