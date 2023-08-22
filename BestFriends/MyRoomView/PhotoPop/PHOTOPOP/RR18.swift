//
//  RR18.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 8/18/23.
//
//import SwiftUI
//
//
//struct RR18: View {
//   
//    @EnvironmentObject var sessionManager: SessionManager
//    
//    let user: User
//    let friends: [User]
//    
//    var body: some View {
//        
//        
//        ZStack {
//            if user.chatBackground == "0" || user.chatBackground == "" {
//                Image("background_0")
//                    .resizable()
//                    .ignoresSafeArea()
//            } else {
//                AdPlayerView(name: "background_" + user.chatBackground)
//                    .ignoresSafeArea()
//            }
//            
//            VStack {
//                // MARK: Header
//                
//                Spacer()
//                    .frame(height: 15)
//               
//                
//                
//                VStack {
//
//                    
//                HStack {
//                    Image("camera")
//                        .resizable()
//                    //                        .colorInvert()
//                        .frame(width: 40, height: 40)
//                        .scaledToFit()
//                        .padding(.leading, 20)
//                        .onTapGesture { showsAlert = true }
//                        .confirmationDialog("Send an image", isPresented: $showsAlert, titleVisibility: .visible) {
//                            
//                            Button("Photo Library", action: {
//                                pickerSourceType = .photoLibrary
//                                isShowPhotoLibrary = !isShowPhotoLibrary
//                            })
//                            
//                            Button("Camera", action: {
//                                pickerSourceType = .camera
//                                isShowPhotoLibrary = !isShowPhotoLibrary
//                            })
//                        }.sheet(isPresented: $isShowPhotoLibrary) {
//                            ImagePicker(image: $attachmentImage, sourceType: pickerSourceType)
//                                .onDisappear { sendMessageWithImage() }
//                        }
//                    
//                    
//                    TextField("", text: $messageBody)
//                        .placeholder(when: messageBody.isEmpty) {
//                            HStack {
//                                Text("Send a message")
//                                    .foregroundColor(ColorManager.purple5)
//                                
//                                Spacer()
//                            }
//                        }
//                        .font(.system(size: 25))
//                        .submitLabel(.send)
//                        .onSubmit { sendMessage() }
//                        .padding()
//                        .overlay(RoundedRectangle(cornerRadius: 20)
//                            .stroke(Color.gray)
//                            .frame(height: 40)
//                            .padding(.horizontal, 5)
//                        )
//                    
//                  
//                    
//                }
//
//                }
//            }
//                
//            }
//        }
//    }
