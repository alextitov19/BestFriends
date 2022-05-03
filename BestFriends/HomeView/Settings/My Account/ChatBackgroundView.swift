//
//  ChatBackgroundView.swift
//  BestFriends
//
//  Created by Social Tech on 4/17/22.
//
//
//import Foundation
//
//
//import SwiftUI
//import AVKit
//
//struct ChatBackground: View {
//
//    @State private var showingImagePicker = false
//    @State private var inputImage: UIImage?
//    @State private var changeBackgroundSuccess = false
//
//    var body: some View {
//        ZStack {
//            Image("changeBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
//                .zIndex(-1)
//
//            VStack {
//                Text("Looping videos")
//                    .foregroundColor(.white)
//                    .font(.system(size: 25, weight: .regular))
//                    .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
//                        ImagePicker(image: self.$inputImage, sourceType: .photoLibrary)
//                    }
//                Spacer()
//            }
//            .offset(y: -75)
//            .zIndex(-1)
//            //Start of IMAGE BACKGROUNDS
//            VStack {
//                //Start of VIDEO BACKGROUNDS
//                HStack {
//                    VStack {
//                        AdPlayerView(name: "FieldFlowers")
//                            .frame(width: 150, height: 250)
//                            //                                .cornerRadius(25)
//                            .border(Color.white, width: 2)
//
//                        Button("Select", action: { saveData(index: 0) })
//                            .frame(width: 110, height: 40)
//                            .background(Color(#colorLiteral(red: 0.5280093551, green: 0.4946141839, blue: 1, alpha: 1)))
//                            .foregroundColor(.white)
//                            .cornerRadius(25)
//                    }
//                    .padding()
//
//                    VStack {
//                        AdPlayerView(name: "blueRoad")
//                            .frame(width: 150, height: 250)
//                            //                                .cornerRadius(25)
//                            .border(Color.white, width: 2)
//
//                        Button("Select", action: { saveData(index: 1) })
//                            .frame(width: 110, height: 40)
//                            .background(Color(#colorLiteral(red: 0.5280093551, green: 0.4946141839, blue: 1, alpha: 1)))
//                            .foregroundColor(.white)
//                            .cornerRadius(25)
//                    }
//                    .padding()
//                }
//
//                HStack {
//                    VStack {
//                        AdPlayerView(name: "bull")
//                            .frame(width: 150, height: 250)
//                            //                                .cornerRadius(25)
//                            .border(Color.white, width: 2)
//
//                        Button("Select", action: { saveData(index: 2) })
//                            .frame(width: 110, height: 40)
//                            .background(Color(#colorLiteral(red: 0.5280093551, green: 0.4946141839, blue: 1, alpha: 1)))
//                            .foregroundColor(.white)
//                            .cornerRadius(25)
//                    }
//                    .padding()
//
//                    VStack {
//                        AdPlayerView(name: "Skateboard")
//                            .frame(width: 150, height: 250)
//                            //                                .cornerRadius(25)
//                            .border(Color.white, width: 2)
//
//                        Button("Select", action: { saveData(index: 3) })
//                            .frame(width: 110, height: 40)
//                            .background(Color(#colorLiteral(red: 0.5280093551, green: 0.4946141839, blue: 1, alpha: 1)))
//                            .foregroundColor(.white)
//                            .cornerRadius(25)
//                    }
//                    .padding()
//                }
//
//                Button("Upload Gallery Image", action: { showingImagePicker = true })
//                    .frame(width: 200, height: 40)
//                    .background(Color(#colorLiteral(red: 0.5280093551, green: 0.4946141839, blue: 1, alpha: 1)))
//                    .foregroundColor(.white)
//                    .cornerRadius(25)
//            }
//            .offset(y: -40)
//            .zIndex(-1)
//
//            if changeBackgroundSuccess {
//                Text("Success!")
//                    .font(.title)
//                    .foregroundColor(.white)
//                    .frame(width: 250, height: 100)
//                    .background(Color.green)
//                    .cornerRadius(30)
//                    .transition(.scale)
//                    .onAppear {
//                        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
//                            withAnimation {
//                                changeBackgroundSuccess.toggle()
//                            }
//                        }
//                    }
//                    .zIndex(-1)
//            }
//
//        }
//    }
//
//    private func saveData(index: Int) {
//        print("Saving new static background as option #\(index)")
//        var user = UserDataSource().getCurrentUser()
//        user.background = index
//        UserDataSource().updateUser(user: user)
//        withAnimation {
//            changeBackgroundSuccess.toggle()
//        }
//    }
//
//    private func loadImage() {
//        showingImagePicker = false
//        guard let inputImage = inputImage else { return }
//        print("Got the image")
//        uploadImage(image: inputImage)
//    }
//
//    private func uploadImage(image: UIImage) {
//        var user = UserDataSource().getCurrentUser()
//        let data = image.pngData()!
//        let key = "Background/" + Helper().randomString(length: 20)
//        Amplify.Storage.uploadData(key: key, data: data,
//                                   progressListener: { progress in
//                                    print("Progress: \(progress)")
//                                   }, resultListener: { (event) in
//                                    switch event {
//                                    case .success(let data):
//                                        print("Completed: \(data)")
//                                        user.backgroundImageLink = key
//                                        user.background = -1
//                                        UserDataSource().updateUser(user: user)
//                                        withAnimation {
//                                            changeBackgroundSuccess.toggle()
//                                        }
//                                    case .failure(let storageError):
//                                        print("Failed: \(storageError.errorDescription). \(storageError.recoverySuggestion)")
//                                    }
//                                   })
//    }
//}
//
//struct ChatBackground_Previews : PreviewProvider {
//    static var previews: some View {
//        ChatBackground()
//    }
//}
//
