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
    @State var pickerSourceType: UIImagePickerController.SourceType = .photoLibrary
    @State private var attachmentImage: UIImage?
    
    @State private var isLoading = false
    
    
    
    
    
    var body: some View {
        ZStack {

//            ColorManager.grey4
//                .opacity(0.8)
//                .ignoresSafeArea()

            
            
//            AdPlayerView(name: "sky2")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//                .opacity(0.99)
            
            
            AdPlayerView(name: "")
                .ignoresSafeArea()
                .onAppear()
                .scaledToFill()
                .opacity(0.8)
                .onAppear(perform: loadData)
                .sheet(isPresented: $isShowPhotoLibrary) {
                    ImagePicker(image: $attachmentImage, sourceType: pickerSourceType)
                        .onDisappear { createPhotoPop() }
            
            
//
//
//
//            ColorManager.grey4
//                .ignoresSafeArea()
//                .onAppear()
//                .scaledToFill()
//                .opacity(0.8)
//                .onAppear(perform: loadData)
//                .sheet(isPresented: $isShowPhotoLibrary) {
//                    ImagePicker(image: $attachmentImage, sourceType: pickerSourceType)
//                        .onDisappear { createPhotoPop() }
//

                
                    
                    
                }
            
            VStack {
            
                
                Text("PhotoPOP")
                    .foregroundColor(Color.white)
                    .font(.system(size: 45, weight: .regular))
                    .opacity(0.7)
                
                Text("view images by 'shaking' iPhone")
                    .foregroundColor(Color.white)
                    .italic()
                    .font(.system(size: 13, weight: .light))
                    .opacity(0.7)
              
                Spacer ()
                    .frame(height: 17)
                
                NavigationLink( destination:  INFOPreloadA(user: user, friends: friends),
                                label: {
                    Text("Start Here")
                        .fontWeight(.light)
                        .frame(width: 120, height: 30)
                        .foregroundColor(Color.white)
                        .font(.system(size: 25))
                        .background(Color.green)
//                            .opacity(0.7)
                        .cornerRadius(10)
                        .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                })
                
            
                
                Spacer()
                    .frame(height: 13)
                
                NavigationLink(
                    destination: PhotoPop3(user: user, friends: friends),
                    label: {
                        Text("Instant Alert")
                            .fontWeight(.light)
                            .frame(width: 175, height: 30)
                            .foregroundColor(Color.pink)
                            .font(.system(size: 25))
                            .background(Color.cyan)
                            .opacity(0.9)
                            .cornerRadius(10)
                            .shadow(color: ColorManager .grey2, radius: 2, x: 0, y: 2)
                    })
                

                    
                    HStack {
                        Image(systemName: "camera")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 45, height: 45)
                            .foregroundColor(Color.cyan)
                        
                            .onTapGesture {
                                pickerSourceType = .camera
                                showingRecipients = true
                            }
                            .padding()
                        
                        Image(systemName: "photo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 45, height: 45)
                            .foregroundColor(ColorManager .purple4)
                            .onTapGesture {
                                pickerSourceType = .photoLibrary
                                showingRecipients = true
                            }
                            .padding()
                    }
                    
                    
                    
                    
                    
                    
                    
                    
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
                        
                        //                    .padding()
                        
                        //
                        //                    Spacer()
                        //                        .frame(height: 20)
                        //
                        //                    Text("Up-loading to PhotoPOP:")
                        //                        .font(.system(size: 20, weight: .light))
                        //                        .foregroundColor(.green)
                        //
                        //                    Text("-Select friend, tap image from photo gallery")
                        //                        .font(.system(size: 13, weight: .light))
                        //                        .italic()
                        //                        .foregroundColor(.white)
                        //
                        //                    NavigationLink(
                        //                       destination: PhotoPop3(user: user, friends: friends),
                        //                       label: {
                        //                           Text("How PhotoPOP Works")
                        //                               .fontWeight(.thin)
                        //                               .frame(width: 310, height: 30)
                        //                               .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        //                               .font(.system(size: 17))
                        //                               .background(ColorManager.purple3)
                        //                               .cornerRadius(10)
                        //                               .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        //                       })
                        //
                        //
                        //                    Spacer()
                        //                        .frame(height: 20)
                        //
                        //                    Text("Replacing image:")
                        //                        .font(.system(size: 20, weight: .light))
                        //                        .foregroundColor(.green)
                        //
                        //
                        //                    Text("-Tap image, then exit & re-enter page")
                        //                        .font(.system(size: 13, weight: .light))
                        //                        .italic()
                        //                        .foregroundColor(.white)
                        //                    Text("* (can only have ONE 'active' image at a time)")
                        //                        .italic()
                        //                        .font(.system(size: 13, weight: .light))
                        //                        .foregroundColor(Color .green)
                        
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
                    loadRecipients()
                }
            })
            
            
            
            
        }
    }

