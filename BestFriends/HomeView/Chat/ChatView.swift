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
    @State var showsAlert = false
    @State private var showingMessageOptions = false
    @State private var isLockTapped = false
    @State var pickerSourceType: UIImagePickerController.SourceType = .photoLibrary
    var body: some View {
        ZStack {
            if user.chatBackground == "0" || user.chatBackground == "" {
                Image("background_0")
                    .resizable()
                    .ignoresSafeArea()
            } else {
                AdPlayerView(name: "background_" + user.chatBackground)
                    .ignoresSafeArea()
            }
            
            VStack {
                // MARK: Header
                
                Spacer()
                    .frame(height: 15)

                HStack {

                    Image("home-alt2")
                        .frame(width: 40, height: 40)
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                        .background(ColorManager .grey3)
                        .cornerRadius(10)
                        .scaledToFill()
                        .onTapGesture(perform: {
                            sessionManager.showHome()
                        })
                    
                    
                   
                    ZStack {
                        
                        Text("")
                            .fontWeight(.light)
                            .frame(width: 250, height: 40)
                            .foregroundColor(Color.white)
                            .font(.system(size: 5))
                            .background(ColorManager .grey3)
                            .cornerRadius(10)
                            .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                        
                        
                        Text(group.name)
                            .task {
                                await listenForMessages()
                                
                            }
                    }
                    
                    
           
                    
                    Spacer ()
                        .frame(width: 10)
                                  
                                  ZStack {
                                      
                                      Text("")
                                          .fontWeight(.light)
                                          .frame(width: 40, height: 40)
                                          .foregroundColor(ColorManager .grey1)
                                          .font(.system(size: 20))
                                          .background(Color.orange)
                                          .cornerRadius(10)
                                          .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                                      
                                      Image("lock-alt")
                                          .resizable()
                                          .frame(width: 35, height: 35)
                                          .scaledToFill()
                                          .onTapGesture(perform: {
                                              var hiddenGroups: [String] = user.hiddenGroups ?? []
                                              hiddenGroups.append(group.id)
                                              let updatedUser = User(id: user.id, firstName: user.firstName, lastName: user.lastName, APNToken: user.APNToken, friends: user.friends, groups: user.groups, hiddenGroups: hiddenGroups, atmosphere: user.atmosphere, chatPin: user.chatPin, chatBackground: user.chatBackground, smileNotes: user.smileNotes)
                                              RestApi.instance.updateUser(user: updatedUser).then({ response in
                                                  print("Got update response: ", response)
                                                  isLockTapped.toggle()
                                              })
                                              
                                              
                                          })
                                          .onAppear(perform: {
                                              if user.hiddenGroups != nil {
                                                  if user.hiddenGroups!.contains(group.id) {
                                                      isLockTapped.toggle()
                                                  }
                                              }
                                          })
                                          .fullScreenCover(isPresented: $isLockTapped) {
                                              HideChatView(sessionManager: _sessionManager, user: user, group: group)
                                          }
                                      //                    }//NavLink
                                  }
                                  
                                  Spacer ()
                                      .frame(width: 10)
 
                              }
                
                HStack {
                    
                    ZStack {
                        
                        Text("")
                            .fontWeight(.light)
                            .frame(width: 50, height: 24)
                            .foregroundColor(ColorManager .grey1)
                            .font(.system(size: 25))
                            .background(Color.purple)
                            .cornerRadius(5)
                            .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                        
                        Text("Delete \nRoom")
                            .foregroundColor(Color.white)
                            .font(.system(size: 10, weight: .light))
                            .multilineTextAlignment(.center)
                            .onTapGesture(perform: leaveChatGroup)
                    }
                    
                    
                    
//                    NavigationLink(destination: ChangeChatBackgroundView(user: user),
                   
//                    NavigationLink(destination: RR8(),
//                        label: {
//                        Text("Customize Backgrounds \nin 'Settings'")
//                            .fontWeight(.regular)
//                            .frame(width: 130, height: 24)
//                            .foregroundColor(Color.white)
//                            .font(.system(size: 10))
//                            .background(Color.purple)
//                            .cornerRadius(5)
//                            .shadow(color: Color.white, radius: 2, x: 0, y: 2)
//                    })
               
                    
                    ZStack {
                        
                        Text("")
                            .fontWeight(.light)
                            .frame(width: 100, height: 24)
                            .foregroundColor(ColorManager .grey1)
                            .font(.system(size: 25))
                            .background(Color.purple)
                            .cornerRadius(5)
                            .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                        
                        Text("to view images \ntap 'camera' icon")
                            .foregroundColor(Color.white)
                            .font(.system(size: 10, weight: .light))
                            .multilineTextAlignment(.center)
                    }
                    
                 
                }
                Text("")
                    .fontWeight(.light)
                    .frame(width: 200, height: 1)
                    .foregroundColor(ColorManager .grey4)
                    .font(.system(size: 25))
                    .background(Color.purple)
                    .cornerRadius(5)
                    .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                
                // MARK: Main scroll view
                ScrollViewReader { proxy in
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        ForEach(messages, id: \.id) { message in
                            if message.senderId == user.id {
                                ChatBubble(groupId: group.id, message: message, myOwnMessage: message.senderId == user.id)
                            } else {
                                ChatBubble(groupId: group.id, message: message, myOwnMessage: message.senderId == user.id)
                                    .onLongPressGesture(minimumDuration: 1, perform: { showingMessageOptions = true })
                                    .confirmationDialog("What would you like to do with this message?", isPresented: $showingMessageOptions, titleVisibility: .visible) {
                                        Button("Keepsake Message") {
                                            saveToSmileNotes(message: message)
                                        }
                                        Link("Report Abuse", destination: URL(string: "https://socialtechlabs.com/report-objectionable-content-behavior/")!)
                                        
                                    }
                            }
                        }
                    }
                    .onChange(of: messages.count) { _ in
                        proxy.scrollTo(messages.last!.id)
                    }
                
                }
                
                VStack {

                    
                HStack {
                    Image("camera")
                        .resizable()
                    //                        .colorInvert()
                        .frame(width: 40, height: 40)
                        .scaledToFit()
                        .padding(.leading, 20)
                        .onTapGesture { showsAlert = true }
                        .confirmationDialog("Send an image", isPresented: $showsAlert, titleVisibility: .visible) {
                            
                            Button("Photo Library", action: {
                                pickerSourceType = .photoLibrary
                                isShowPhotoLibrary = !isShowPhotoLibrary
                            })
                            
                            Button("Camera", action: {
                                pickerSourceType = .camera
                                isShowPhotoLibrary = !isShowPhotoLibrary
                            })
                        }.sheet(isPresented: $isShowPhotoLibrary) {
                            ImagePicker(image: $attachmentImage, sourceType: pickerSourceType)
                                .onDisappear { sendMessageWithImage() }
                        }
                      
                    
                    
                    TextField("", text: $messageBody)
                        .placeholder(when: messageBody.isEmpty) {
                            HStack {
                                Text("Send a message")
                                    .foregroundColor(Color.white)
                
                                
                                Spacer()
                            }
                        }
                        .font(.system(size: 25))
                        .submitLabel(.send)
                        .onSubmit { sendMessage() }
                        .padding(.horizontal, 5)
                        .background(ColorManager.grey4)
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.gray)
                            .frame(height: 30)
                            .padding(.horizontal, 5)
                        )
                        
                    
                  
                    
                }

                }
            }
        }//ZStack
        //        }.navigationViewStyle(StackNavigationViewStyle())
    }//body
    
    private func saveToSmileNotes(message: Message) {
        
        RestApi.instance.createSmileNote(messageId: message.id, messageBody: message.body, sendername: message.senderName).then({ smileNote in
            print("Got smile note from server: ", smileNote)
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
    
    private func leaveChatGroup() {
        if user.groups?.count == 0 { return }
        //MARK: Update group
        var members = group.members
        if let index = members.firstIndex(of: user.id) {
            members.remove(at: index)
            let updatedGroup = Group(id: group.id, name: group.name, members: members, owner: group.owner, createdOn: group.createdOn)
            RestApi.instance.updateGroup(group: updatedGroup).then({ result in
                print("Update group result: ", result)
            })
        }
        //MARK: Update user
        var chatGroups = user.groups!
        if let index = chatGroups.firstIndex(of: group.id) {
            chatGroups.remove(at: index)
            let updateduser = User(id: user.id, firstName: user.firstName, lastName: user.lastName, APNToken: user.APNToken, friends: user.friends, groups: chatGroups, hiddenGroups: user.hiddenGroups, atmosphere: user.atmosphere, chatPin: user.chatPin, chatBackground: user.chatBackground, smileNotes: user.smileNotes, photoPop: user.photoPop)
            RestApi.instance.updateUser(user: updateduser).then({ result in
                print("Update user result: ", result)
                sessionManager.showHome()
            })
        }
    }
}

