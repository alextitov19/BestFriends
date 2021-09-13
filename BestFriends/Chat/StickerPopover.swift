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
            Image("SignUpPinBackground")
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
                
                Text("Each sticker costs 7 tokens")
                    .foregroundColor(.white)
                    .font(.system(size: 20, weight: .light))
                
                Text("Earn 1 token for watching an ad video,\n3 for clicking the link")
                    .foregroundColor(.white)
                    .font(.system(size: 20, weight: .light))
                
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
                                        
                                        if user.unlockedStickers.contains(number) == false {
                                            Image("lockBlack")
                                                .resizable()
                                                .frame(width: 65, height: 65)
                                                .scaledToFit()
                                        }
                                        
                                        Button(action: {
                                                if user.unlockedStickers.contains(number) == false && user.tokens >= 7 { // If user HAS NOT UNLOCKED this sticker but HAS ENOUGH tokens to unlock it (user buys sticker)
                                                    var newuser = user
                                                    newuser.unlockedStickers.append(number)
                                                    newuser.tokens -= 7
                                                    userDataSource.updateUser(user: newuser)
                                                    
                                                    let message = Message(id: Helper().randomString(length: 20), senderName: user.firstName, senderID: user.id, body: "*Sticker*", creationDate: Int(NSDate().timeIntervalSince1970), stickerNumber: number, hasBeenLiked: false)
                                                    
                                                    messageDataSource.sendMessage(message: message)
                                                } else if user.unlockedStickers.contains(number) == true { // If user HAS UNLOCKED this stikcer or it is FREE
                                                    let message = Message(id: Helper().randomString(length: 20), senderName: user.firstName, senderID: user.id, body: "*Sticker*", creationDate: Int(NSDate().timeIntervalSince1970), stickerNumber: number, hasBeenLiked: false)
                                                    
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

