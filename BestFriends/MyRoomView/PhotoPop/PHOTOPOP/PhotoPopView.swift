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
    
//    @State private var showingAlert = false
    
    
    
    var body: some View {
        ZStack {

            ColorManager.grey4
                .opacity(0.8)
                .ignoresSafeArea()

            
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
                .opacity(0.99)
            
            
            AdPlayerView(name: "photopopWhite2")
                .ignoresSafeArea()
                .onAppear()
                .scaledToFill()
                .opacity(0.8)
                .onAppear(perform: loadData)
                .sheet(isPresented: $isShowPhotoLibrary) {
                    ImagePicker(image: $attachmentImage, sourceType: pickerSourceType)
                        .onDisappear { createPhotoPop() }
            
                }

                    
            VStack {

                Spacer ()
                .frame(height: 30)
                         
                ZStack {
                    
                  
                    
                               HStack {
                                   
                               
                               Text("to view images \n'shake' iPhone")
                                   .font(.system(size: 27))
                                   .fontWeight(.bold)
                                   .multilineTextAlignment(.center)
                                   .foregroundColor(Color.white)
//                                   .rotationEffect(.degrees(-20))
                                   .blinking(duration: 4.0)
                                   .shadow(color: ColorManager .grey3, radius: 0.7, x: 0.5, y: 0.5)
                                   .opacity(0.5)
                               
                      
                           }
                               HStack {
                                   
                                   NavigationLink(
                                       destination: PhotoPop3(user: user, friends: friends),
                                       label: {
                                           Text("Alert friend")
                                               .fontWeight(.light)
                                               .frame(width: 100, height: 30)
                                               .foregroundColor(Color.white)
                                               .font(.system(size: 15))
                                               .background(ColorManager .grey3).opacity(0.7)
                                               .cornerRadius(10)
                                               .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                                       })
                                   
                                   
                                   Spacer ()
                                       .frame(width: 130)
                                   
                               
                                           
                                   Image("IconPhotoNew")
                                       .resizable()
                                       .scaledToFit()
                                       .frame(width: 60, height: 60)
                                       .foregroundColor(Color.cyan)
                                       .onTapGesture {
                                           pickerSourceType = .camera
                                           showingRecipients = true
                                       }
                                   
                                   Spacer ()
                                       .frame(width: 50)
                        
                               }
                           
                        
// ************ Removed Gallary for now - keeps this more real-time ***************
                        
                        Image(systemName: "photo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 47, height: 47)
                            .foregroundColor(ColorManager .grey4)
                            .glow(color: Color.white, radius: 1)
                            .shadow(color: ColorManager .purple3, radius: 2, x: 0, y: 3)
                            .onTapGesture {
                                pickerSourceType = .photoLibrary
                                showingRecipients = true
                            }
                    }
                
            
                VStack {
                    
                    
                    Text("only 1 image per friend may be active at a time")
                        .font(.system(size: 12))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .grey4)
                    
                    Text("tap to delete current image")
                        .font(.system(size: 12))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .grey4)
                    
                    Text("image will not appear distored on friends iPhone")
                        .font(.system(size: 12))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .grey4)
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
                                    
                                    ZStack {
                                        Image(systemName: "heart")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 100, height: 100)
                                            .foregroundColor(Color.white)
                                            .opacity(0.5)
                                            .glow(color: Color.white, radius: 1)
                                            .shadow(color: Color.white, radius: 2, x: 0, y: 3)
                                            .blinking(duration: 2.0)
                                        
                                        Image(systemName: "heart.fill")
                                            .resizable()
                                            .foregroundColor(Color .cyan)
                                            .frame(width: 90, height: 75)
                                            .shadow(color: ColorManager .grey1, radius: 3, x: 3, y: 3)
        //                                    .rotationEffect(.degrees(-10))
                                            .opacity(0.6)
                                       
                                        VStack {
                                            
                                            Spacer ()
                                                .frame(height: 2)
                                            
                                            Text("LoveTart")
                                                .fontWeight(.regular)
                                                .font(.system(size: 17.5))
                                                .frame(width: 80, height: 30)
                                                .foregroundColor(.white)
                                                .cornerRadius(10)
                               
                                        }
                                    }
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
                        
//                        
//                        Text("LoveTart \nimage")
//                            .font(.system(size: 15))
//                            .fontWeight(.medium)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(ColorManager .grey4)
////                            .rotationEffect(.degrees(-20))
////                            .blinking(duration: 3.0)
//                            .shadow(color: ColorManager .grey3, radius: 0.7, x: 0.5, y: 0.5)
//                            .opacity(0.5)
                        
                       
//                        Text("romantic pic of your LoveTart")
//                            .font(.system(size: 15))
//                            .fontWeight(.bold)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(ColorManager .grey4)
////                            .rotationEffect(.degrees(-20))
////                            .blinking(duration: 3.0)
//                            .shadow(color: ColorManager .grey3, radius: 0.7, x: 0.5, y: 0.5)
//                            .opacity(0.5)
                        
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

//                                }
