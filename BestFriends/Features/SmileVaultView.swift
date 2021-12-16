//
//  SmileVaultView.swift
//  BestFriends
//
//  Created by Alex Titov on 12/15/21.
//

import SwiftUI
import PhotosUI

struct SmileVaultView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    private let userDS = UserDataSource()
    private let imageDS = ImageDataSource()
    
    @State private var images: [UIImage] = []  //The actual images, with .frame and .offset and .ontap
    @State private var imageLinks: [String] = [] //The S3 links to images gotten from User.smileVaultLinks
    
    @State private var isImagePickerActive = false // Image Picker for choosing image from gallery to upload to own vault
    @State private var inputImage : UIImage? // Image selected by the image picker is saved here
    @State private var currentImageIndex = 0
    var body: some View {
        
        ZStack {
            // Background Image...
            Image("blueBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .onAppear(perform: initialLoad)
            
            // Images
            
            if images.count > 0 && currentImageIndex >= 0 && currentImageIndex < images.count {
                    Image(uiImage: images[currentImageIndex])
                        .resizable()
                        .frame(maxWidth: .infinity)
                        .scaledToFit()
                        .gesture(DragGesture(minimumDistance: 3, coordinateSpace: .local)
                                            .onEnded({ value in
                                                if value.translation.width < 0 {
                                                    // Swipe left
                                                    if currentImageIndex + 1 < images.count {
                                                        currentImageIndex += 1
                                                    }
                                                }

                                                if value.translation.width > 0 {
                                                    // right
                                                    if currentImageIndex > 0 {
                                                        currentImageIndex -= 1
                                                    }
                                                }
                                            }))
            }

            
            
            // The border buttons and menus
            VStack {
                
                Spacer()
                
                // Add an image button
                Button(action: {
                    openImagePicker()
                }) {
                    Text("Add Image")
                        .frame(width: 200, height: 50)
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                        .background(ColorManager.purple7)
                        .cornerRadius(20)
                        .sheet(isPresented: $isImagePickerActive, onDismiss: addImage) {
                            // Image Picker for uploading image into my own vault...
                            ImagePicker(image: self.$inputImage, sourceType: .photoLibrary)
                        }
                }
            }
            
        }
        
    }
    
    // Called when first opening the view
    private func initialLoad() {
        DispatchQueue.global(qos: .userInitiated).async() {
            imageLinks = userDS.getCurrentUser().smileVaultLinks
            print("Image links: ", imageLinks)
            loadImages()
        }
    }
    
    // Load images from links
    private func loadImages() {
        DispatchQueue.global(qos: .userInitiated).async() {
            for link in imageLinks {
                let image = imageDS.downloadImage(key: link, rotating: false, tall: false)
                images.append(image)
                print("New image")
            }
        }
    }
    
    // Open and display image picker
    // Ask for permissions if necessary
    private func openImagePicker() {
        let photos = PHPhotoLibrary.authorizationStatus()
        if photos == .notDetermined {
            PHPhotoLibrary.requestAuthorization({status in
                if status == .authorized{
                    self.isImagePickerActive = true
                }
            })
        } else {
            self.isImagePickerActive = true
        }
    }
    
    // Add an image to my own vault
    private func addImage() {
        DispatchQueue.global(qos: .userInitiated).async() {
            if inputImage != nil {
                let myimage = inputImage!
                print("Result: ", imageDS.uploadImageToSmileVault(image: myimage))
                images.append(myimage)
            }
        }
    }
    
    
}
