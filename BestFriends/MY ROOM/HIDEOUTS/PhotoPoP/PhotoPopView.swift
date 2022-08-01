//
//  PhotoPopView.swift
//  BestFriends
//
//  Created by Alex Titov on 6/11/22.
//

import SwiftUI

struct PhotoPopView: View {
    let user: User
    let friends: [User]
    
    @State private var photoPopImages: [PhotoPopImageView] = []
    @State private var availableRecipients : [User] = []
    @State private var showingRecipients = false
   
    @State private var currentReceiver: User?
    @State private var isShowPhotoLibrary = false
    @State private var attachmentImage: UIImage?

    var body: some View {
        ZStack {
            Image("blueBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
                .onAppear(perform: loadData)
                .sheet(isPresented: $isShowPhotoLibrary) {
                    ImagePicker(image: $attachmentImage, sourceType: .photoLibrary)
                        .onDisappear { createPhotoPop() }
                }
            
            VStack {
                Text("Photo Pop")
                    .font(.system(size: 20, weight: .light))
                    .foregroundColor(.white)
                
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(photoPopImages, id: \.user.id) { photoPopImage in
                        photoPopImage
                            .padding()
                    }
                }
                
                Spacer()
                
                Button(action: {
                    showingRecipients = true
                }, label: {
                    Text("Add Image")
                        .fontWeight(.regular)
                        .frame(width: 125, height: 40)
                        .foregroundColor(.white)
                        .background(ColorManager.purple3)
                        .cornerRadius(15)
                })
            }
            
            if showingRecipients {
                VStack {
                    ForEach(availableRecipients, id: \.id) { recipient in
                        if recipient.id == user.id {
                            Button(action: {
                                currentReceiver = recipient
                                isShowPhotoLibrary = !isShowPhotoLibrary
                                showingRecipients = false
                            }, label: {
                                Text("Myself")
                                    .fontWeight(.regular)
                                    .frame(width: 125, height: 40)
                                    .foregroundColor(.white)
                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                            })
                        } else {
                            Button(action: {
                                currentReceiver = recipient
                                isShowPhotoLibrary = !isShowPhotoLibrary
                                showingRecipients = false
                            }, label: {
                                Text(recipient.firstName + String(recipient.lastName.first!))
                                    .fontWeight(.regular)
                                    .frame(width: 125, height: 40)
                                    .foregroundColor(.white)
                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                            })
                        }
                    }
                    
                    Button(action: {
                        showingRecipients = false
                    }, label: {
                        Text("Cancel")
                            .fontWeight(.regular)
                            .frame(width: 125, height: 40)
                            .foregroundColor(.white)
                            .background(ColorManager.grey3)
                            .cornerRadius(15)
                    })
                    .padding()
                }
            }
        }
    }
    
    private func loadData() {
        loadRecipients()
        loadPhotoPops()
    }
    
    private func loadPhotoPops() {
        print("Loading...")
        RestApi.instance.getPhotoPops().then({ photoPops in
            print("Got " + String(photoPops.count) + " photo pops")
            for p in photoPops {
                loadPhotoPopWithImage(photoPop: p)
            }
        })
    }
    
    private func loadPhotoPopWithImage(photoPop: PhotoPop) {
        // Determine the user for the photo pop
        if photoPop.receiver == user.id {
            let p = PhotoPopImageView(photoPop: photoPop, user: user)
            photoPopImages.append(p)
            print("Added photo pop for self")
            loadRecipients()
        } else {
            for f in friends {
                if photoPop.receiver == f.id {
                    let p = PhotoPopImageView(photoPop: photoPop, user: f)
                    photoPopImages.append(p)
                    print("Added photo pop for " + f.id)
                    loadRecipients()
                    break
                }
            }
        }
    }
    
    private func loadRecipients() {
        // Fill recipients array with all possible users
        availableRecipients = friends
        availableRecipients.append(user)
        // Iterate through the array
        // Remove all recipients who already have a photo pop
        for recipient in availableRecipients {
            for p in photoPopImages {
                if p.photoPop.receiver == recipient.id {
                    let index = availableRecipients.firstIndex(where: {$0.id == recipient.id})
                    if (index != nil) {
                        availableRecipients.remove(at: index!)
                        print("Removed " + p.photoPop.receiver + " from available recipients")
                    }
                }
            }
        }
        print("Available recipients: ", availableRecipients.count)
    }
    
    private func createPhotoPop() {
        if currentReceiver == nil { return }
        guard let image: UIImage = attachmentImage else {
            print("Attachment iamge is nil")
            return
        }
        
        guard let data = image.jpeg(.lowest) else {
            print("Failed to convert image")
            return
        }
        print("Image as data successful")
        RestApi.instance.createPhotoPop(receiver: currentReceiver!.id, image: data).then({ response in
            print("Create photo pop successful")
            photoPopImages.append(PhotoPopImageView(photoPop: response, user: currentReceiver!))
            loadRecipients()
        })
    }
}
