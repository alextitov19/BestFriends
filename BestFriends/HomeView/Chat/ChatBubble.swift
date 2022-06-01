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
                            .cornerRadius(25)
                    }
                    .padding(.horizontal, 5)
                    
                } else {
                    MyChatMessage(messageBody: "📸")
                        .onTapGesture {
                            Task { await downloadImage(key: message.image) }
                        }
                }
            } else {
                MyChatMessage(messageBody: message.body)
            }
        } else {
            if message.image?.count ?? 0 > 0 {
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
                        .onTapGesture {
                            Task { await downloadImage(key: message.image) }
                        }
                }
            } else {
                FriendChatMessage(name: message.senderName, messageBody: message.body)
            }
        }
    }
    
    private func downloadImage(key: String?) async {
        if key == nil { return }
        if key!.count < 1 { return }
        print("Image key: ", key!)
        RestApi.instance.getImage(folderId: groupId, imageId: key!).then { data in
            print("Got data")
            self.image = UIImage(data: data)
            print("Got image from data")
        }
        //        let request = RestApi.instance.createDownloadImageWebSocketRequest(folderId: groupId, imageId: key!)
        //        let stream = WebSocketStream(request: request)
        //        await listenForImages(stream: stream)
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
    let options: [DropdownOption] = [
       DropdownOption(key: "d", value: "Save to SmileNotes"),
       DropdownOption(key: "x", value: "Delete Message"),
       DropdownOption(key: "uniqueKey", value: "Report User"),

   ]
    var body: some View {
        HStack {
            Spacer()
            DropdownSelector(placeholder: messageBody, options: options)

        }
        .padding(.horizontal, 5)
    }
}




private struct FriendChatMessage: View {
    let options: [DropdownOption] = [
        DropdownOption(key: "d", value: "Save to SmileNotes"),
       DropdownOption(key: "x", value: "Delete Message"),
       DropdownOption(key: "uniqueKey", value: "Report User"),

   ]
    let name: String
    let messageBody: String
    
    var body: some View {
        VStack {
            HStack {
                DropdownSelector(placeholder: name + "\n" + messageBody, options: options)
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
