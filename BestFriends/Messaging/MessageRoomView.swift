//
//  MessageRoomView.swift
//  BestFriends
//
//  Created by Alex Titov on 5/3/21.
//

import SwiftUI
import Amplify


struct MessageRoomView: View {
    
    @ObservedObject var messageDataSource: MessageDataSource
    @State var showingImagePicker = false
    @State var inputImage: UIImage?
    var user: User
    
    init(room: Room) {
        let id = Amplify.Auth.getCurrentUser()?.username ?? "Failed getting id"
        self.user = UserDataSource().getUser(id: id)
        self.messageDataSource  = MessageDataSource(room: room)
    }
    
    @State var currentBody: String = ""

    var body: some View {
        ZStack{
            Image("purpleBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                ScrollView {
                    LazyVStack {
                        ForEach(messageDataSource.room.messages, id: \.id) { message in
                            ChatBubble(msg: message)
                            
                            Spacer()
                                .frame(height: 20)
                        }
                    }
                }
                
                Spacer().frame(height: 30)
                
                HStack {
                    Spacer().frame(width: 30)
                    
                    Button("Camera", action: {
                        showingImagePicker = true
                    })
                    
                    Spacer().frame(width: 30)
                    
                    TextField("", text: $currentBody)
                        .background(Color(#colorLiteral(red: 0.4884749055, green: 0.2207083404, blue: 0.971470058, alpha: 0.3971501029)))
                        .frame(width: 210, height: 30)
                        .cornerRadius(15)
                    
                    Spacer()
                        .frame(width: 30)
                    
                    Button("Send", action: {
                        
                        let message = Message(id: messageDataSource.randomString(length: 20), senderName: user.firstName, senderID: user.id, body: currentBody, creationDate: Int(NSDate().timeIntervalSince1970))
                        
                        messageDataSource.sendMessage(message: message)
                    })
                    .frame(width: 50, height: 30, alignment: .center)
                    .background(Color(#colorLiteral(red: 0.4913904071, green: 0, blue: 1, alpha: 1)))
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    
                    Spacer().frame(width: 30)
                }
                
                Spacer().frame(height: 20)
                
            }
        }
        .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
            ImagePicker(image: self.$inputImage)
        }
        
    }
    
    func loadImage() {
        showingImagePicker = false
        guard let inputImage = inputImage else { return }
        print("Got the image")
        messageDataSource.uploadImage(image: inputImage)
        
    }
    
    
}
