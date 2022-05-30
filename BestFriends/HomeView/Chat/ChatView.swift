//
//  ChatView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/7/22.
//

import SwiftUI

struct ChatView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let group: Group
    private var stream: WebSocketStream
    
    @State private var messages: [Message] = []
    
    @State private var isShowPhotoLibrary = false
    @State private var attachmentImage: UIImage?
    
    init(user: User, group: Group) {
        self.user = user
        self.group = group
        let request = RestApi.instance.createChatWebSocketRequest(groupId: group.id)
        stream = WebSocketStream(request: request)
    }
    
    @State private var messageBody: String = ""
    
    var body: some View {

        ZStack {
            AdPlayerView(name: "cloud")
                .ignoresSafeArea()
            
            
            VStack {
                // MARK: Header
                Text(group.name)
                    .task {
                        await listenForMessages()
                        
                    }
                
                // MARK: Main scroll view
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(messages, id: \.id) { message in
                        ChatBubble(groupId: group.id, message: message, myOwnMessage: message.senderId == user.id)
                            .onLongPressGesture(minimumDuration: 1, perform: { ltMessage(message: message) })
                    }
                }
                
                // MARK: The bottom portion containing text field and action buttons
                HStack {
                    
                    Image("camera")
                        .resizable()
                        .colorInvert()
                        .frame(width: 40, height: 40)
                        .scaledToFit()
                        .padding(.leading, 5)
                        .onTapGesture { isShowPhotoLibrary = true }
                        .sheet(isPresented: $isShowPhotoLibrary) {
                            ImagePicker(image: $attachmentImage, sourceType: .photoLibrary)
                                .onDisappear { sendMessageWithImage() }
                        }
                    
                    TextField("", text: $messageBody)
                        .placeholder(when: messageBody.isEmpty) {
                            HStack {
                                Text("Send a chat").foregroundColor(.black)
                                
                                Spacer()
                            }
                        }
                        .font(.system(size: 18))
                        .submitLabel(.send)
                        .onSubmit { sendMessage() }
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.gray)
                            .frame(height: 40)
                            .padding(.horizontal, 5)
                        )
                }
            }
        }
    }
    
    private func ltMessage(message: Message) {
        RestApi.instance.getSmileNotes().then({ smileNotes in
            print("Got smile notes from server: ", smileNotes)
            for sm in smileNotes {
                if sm.messageId == message.id {
                    print("This message is already a smile note")
                    return
                }
            }
            RestApi.instance.createSmileNote(messageId: message.id, messageBody: message.body, sendername: message.senderName).then({ smileNote in
                print("Got smile note from server: ", smileNote)
            })
        })
        
    }
    
    private func sendMessage() {
        if messageBody.count == 0 { return }
        stream.sendMessage(body: messageBody)
        messageBody = ""
    }
    
    private func sendMessageWithImage() {
        guard let image: UIImage = attachmentImage else {
            print("Attachment iamge is nil")
            return
        }
        
        guard let data = image.jpeg(.lowest) else {
            print("Failed to convert image")
            return
        }
        
        print("Image as data successfully")
        RestApi.instance.createMessageWithImage(groupId: group.id, body: messageBody, image: data).then { response in
            print("Got create message with image response: ", response)
            messageBody = ""
        }
    }
    
    private func listenForMessages() async {
        let decoder = JSONDecoder()
        do {
            for try await message in stream {
                switch message {
                case .string(let s):
                    let jsonData = Data(s.utf8)
                    do {
                        let msg = try decoder.decode(Message.self, from: jsonData)
                        self.messages.append(msg)
                        sortMessages()
                        print("Added a new message from json to messages array")
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
        
    private func sortMessages() {
        messages = messages.sorted(by: { $0.createdOn < $1.createdOn })
    }
    
    
}
