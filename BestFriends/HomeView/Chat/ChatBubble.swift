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
            if message.image?.count ?? 0 > 0 {
                if image != nil {
                    HStack {
                        Spacer()
                        
                        Image(uiImage: image!)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 300)
                            .cornerRadius(25).onTapGesture(perform: {
                                image = nil
                            })
                    }
                    .padding(.horizontal, 20)
                    
                } else {
                    MyChatMessage(messageBody: "📸",message: message)
                        .onTapGesture {
                            Task { await downloadImage(key: message.image) }
                        }
                }
            } else {
                MyChatMessage(messageBody: message.body, message: message)
            }
        } else {
            if message.image?.count ?? 0 > 0 {
                if image != nil {
                    HStack {
                        Image(uiImage: image!)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 300)
                            .cornerRadius(25).onTapGesture(perform: {
                                image = nil
                            })
                        
                        Spacer()
                    }
                    .padding(.horizontal, 20)
                    
                } else {
                    FriendChatMessage(name: message.senderName, messageBody: "📸", message: message)
                        .onTapGesture {
                            Task { await downloadImage(key: message.image) }
                            
                            
                        }
                }
            } else {
                FriendChatMessage(name: message.senderName, messageBody: message.body, message: message)
            }
        }
    }
    
    private func downloadImage(key: String?) async {
        if key == nil { return }
        if key!.count < 1 { return }
        print("Image key: ", key!)
        RestApi.instance.getImage(link: groupId + "/" + key!).then { data in
            print("Got data")
            self.image = UIImage(data: data)
            print("Got image from data")
        }
//                let request = RestApi.instance.createDownloadImageWebSocketRequest(folderId: groupId, imageId: key!)
//                let stream = WebSocketStream(request: request)
//                await listenForImages(stream: stream)
    }
    
    
    
    
    private func listenForImages(stream: WebSocketStream) async {
        let decoder = JSONDecoder()
        do {
            for try await message in stream {
                switch message {
                case .string(let s):
                    let jsonData = Data(s.utf8)
                    do {
                        let img = try decoder.decode(ImageData.self, from: jsonData)
                        self.image = UIImage(data: img.image)
                        print("Added a new image from json")
                    } catch {
                        print(error.localizedDescription)
                    }
                    
                case .data(let data):
                    print("Received binary message: \(data)")
                    
                @unknown default:
                    print("Received some other UNKNOWN message")
                }
            }
        } catch {
            debugPrint("Oops something didn't go right")
        }
    }
    
    
}

private struct MyChatMessage: View {
    let messageBody: String
    let message: Message
    @State private var timeString = ""
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                    .onAppear(perform: loadData)
                
                
                Spacer()
                
                Text(messageBody)
                    .padding(10)
                    .multilineTextAlignment(.leading)
                    .background(ColorManager.orange3)
                    .opacity(0.99)
                    .font(.system(size: 15).weight(.thin))
                    .foregroundColor(.black)
                    .cornerRadius(15)
            }
            
            HStack {
                Spacer()
                
                Text(timeString)
                    .frame(width: 50, alignment: .leading)
                    .foregroundColor(Color.white)
                    .font(.system(size: 11).weight(.light))
                    .background(ColorManager.grey4)
                    .cornerRadius(5)
                    .opacity(0.95)
                    .offset(x: 20, y: 5)
                    .font(.system(size: 12).weight(.bold))
                    .foregroundColor(Color.black)
            }
        }
        .padding(.horizontal, 20)
    }
    
    private func loadData() {
        var x = Int64(Date().timeIntervalSince1970) - message.createdOn
        x = x / 60
        timeString = "\(x) min"
        if x > 60 {
            x = x / 60
            timeString = "\(x) hr"
            if x > 24 {
                x = x / 24
                timeString = "\(x) days"
            }
        }
    }
}




private struct FriendChatMessage: View {
    let name: String
    let messageBody: String
    let message: Message
    @State private var timeString = ""
    
    var body: some View {
        VStack {
            HStack {
                Text(name)
                    .frame(width: 150, alignment: .leading)
                    .foregroundColor(Color.black)
                    .font(.system(size: 11).weight(.light))
                    .background(ColorManager.purple4)
                    .cornerRadius(5)
                    .opacity(0.85)
                    .offset(x: 20, y: 5)
                    .onAppear(perform: loadData)
                
                Text(timeString)
                    .frame(width: 50, alignment: .leading)
                    .foregroundColor(Color.white)
                    .font(.system(size: 11).weight(.light))
                    .background(ColorManager.grey3)
                    .cornerRadius(5)
                    .opacity(0.95)
                    .offset(x: 20, y: 5)
//                    .font(.system(size: 10).weight(.bold))
//                    .foregroundColor(Color.black)
                
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
            
            HStack {
//                Text(timeString)
//                    .frame(width: 50, alignment: .leading)
//                    .foregroundColor(Color.white)
//                    .font(.system(size: 11).weight(.light))
//                    .background(ColorManager.grey2)
//                    .cornerRadius(5)
//                    .opacity(0.90)
//                    .offset(x: 20, y: 5)
//                    .font(.system(size: 10).weight(.bold))
//                    .foregroundColor(Color.black)
                
                
                
                
                
                
                
                Spacer()
            }
        }
        .padding(.horizontal, 20)
    }
    
    private func loadData() {
        var x = Int64(Date().timeIntervalSince1970) - message.createdOn
        x = x / 60
        timeString = "\(x) min"
        if x > 60 {
            x = x / 6
            timeString = "\(x) hr"
            if x > 24 {
                x = x / 24
                timeString = "\(x) days"
            }
        }
    }
}
