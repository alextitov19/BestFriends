//
//  PhotoPopView.swift
//  BestFriends
//
//  Created by Alex Titov on 6/11/22.
//

import SwiftUI

struct PhotoPopView: View {
    @EnvironmentObject var sessionManager: SessionManager

    let user: User
    let friends: [User]
    
    @State private var photoPopImages: [PhotoPopImageView] = []
    @State private var availableRecipients : [User] = []
    @State private var showingRecipients = false
    
    @State private var currentReceiver: User?
    @State private var isShowPhotoLibrary = false
    @State private var attachmentImage: UIImage?
    
    @State private var isLoading = false
    
    var body: some View {
        ZStack {

            ColorManager.grey4
                .ignoresSafeArea()
                .onAppear()
                .scaledToFill()
                .onAppear(perform: loadData)
                .sheet(isPresented: $isShowPhotoLibrary) {
                    ImagePicker(image: $attachmentImage, sourceType: .photoLibrary)
                        .onDisappear { createPhotoPop() }


                  
                    AdPlayerView(name: "MyRoom5")
                        .ignoresSafeArea()
                        .blendMode(.screen)
                    
                }
            
            VStack {

                
                Text("Shake iPhone to see friend's uploaded image")
                    .font(.system(size: 15, weight: .light))
                    .foregroundColor(ColorManager .grey2)
               
                Text("Can only have ONE image up at a time")
                    .italic()
                    .font(.system(size: 13, weight: .light))
                    .foregroundColor(Color .green)
                
                Button(action: {
                    showingRecipients = true
                }, label: {
                    Text("+")
                        .fontWeight(.regular)
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .background(ColorManager.purple3)
                        .cornerRadius(15)
                })
                
                
                if isLoading {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: Color.white))
                        .scaleEffect(2)
                        .padding(.top, 100)
                }
                
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(photoPopImages.indices, id: \.self) { i in
                        photoPopImages[i]
                            .padding()
                            .onTapGesture(perform: { deletePhotoPop(index: i) })
                    }
                }
                
                Spacer()
                
//
//                Button(action: {
//                    showingRecipients = true
//                }, label: {
//                    Text("+")
//                        .fontWeight(.regular)
//                        .frame(width: 40, height: 30)
//                        .foregroundColor(.white)
//                        .font(.system(size: 30))
//                        .background(ColorManager.purple3)
//                        .cornerRadius(15)
//                })
////
//                Button(action: {
//                    sessionManager.reloadHome()
//                }, label: {
//                    Text("Home")
//                        .fontWeight(.thin)
//                        .frame(width: 150, height: 30)
//                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                        .font(.system(size: 25))
//                        .background(ColorManager.purple3)
//                        .cornerRadius(15)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                })
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
                    
                    Text("Select Friend - add image from gallery")
                        .font(.system(size: 15, weight: .light))
                        
                        .foregroundColor(.white)
                    
                    Text("(tap uploaded images to replace)")
                        .font(.system(size: 13, weight: .light))
                        .italic()
                        .foregroundColor(.white)
                    
                    
                NavigationLink(
                   destination: PhotoPop3(user: user, friends: friends),
                   label: {
                       Text("Send Push Notification")
                           .fontWeight(.thin)
                           .frame(width: 250, height: 30)
                           .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                           .font(.system(size: 25))
                           .background(ColorManager.purple3)
                           .cornerRadius(15)
                           .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                   })
                    
//                    .padding()
                }
            }
        }
    }
    
    private func loadData() {
        loadRecipients()
        if user.photoPop?.count ?? 0 > 0 {
            isLoading = true
            loadPhotoPops()
        }
    }
    
    private func loadPhotoPops() {
        print("Loading...")
        RestApi.instance.getPhotoPops().then({ photoPops in
            isLoading = false
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
        print("Recipient count initially: ", availableRecipients.count)
        print("Friends: ", friends.count)
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
    
    private func deletePhotoPop(index: Int) {
        RestApi.instance.deletePhotoPop(id: photoPopImages[index].photoPop.id).then({ response in
            print("Got response from server for deleting photo pop: ", response)
            if response.status == 200 {
                photoPopImages.remove(at: index)
            }
        })
        
 
        
        
    }
}
