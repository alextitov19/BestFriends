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
            
            
            
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            
            ColorManager.purple7
//                .opacity(0.9)
                .ignoresSafeArea()
            //            Color .purple
                .ignoresSafeArea()
                .onAppear()
                .scaledToFill()
                .onAppear(perform: loadData)
                .sheet(isPresented: $isShowPhotoLibrary) {
                    ImagePicker(image: $attachmentImage, sourceType: pickerSourceType)
                        .onDisappear { createPhotoPop() }
                    
                    
                    
                    
                    
                }
            
            VStack {
                
//
//                Button(action: {
//                    sessionManager.showLogin()
//                },
//                       label: {
//                    Image("home-alt2")
//                        .frame(width: 50, height: 25)
//                        .foregroundColor(.white)
//                        .font(.system(size: 20))
//                        .background(ColorManager .grey2)
//                        .cornerRadius(15)
//                        .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
//                        .opacity(0.70)
//
//                })
                
//                Text("Shaking PhotoPOP")
//                    .font(.system(size: 30, weight: .bold))
//                    .foregroundColor(ColorManager .grey1)
//                    .shadow(color: .purple, radius: 1, x: 0, y: 1)
//                    .opacity(0.50)
//                    .multilineTextAlignment(.center)
//
              
                    
                NavigationLink(
                    destination: PhotoPop3(user: user, friends: friends),
                    label: {
                        Text("SENDING FIRST IMAGE TO FIRST FRIEND: \n1) tap 'camera' or 'gallery' icon \n2) select friend from dropdown menu  \n3) add gallery or camera image \n4) tap [Send Push Notificaton] & select 'that specific' friend sending image to and tap [Share] \nNOTE: \nCan only send ONE image to ONE friend at a time \n\n\nSENDING NEW IMAGE TO SAME FRIEND:  \n1) DELETE first image by tapping it \n2) upload new image \n3) tap [Send Push Notificaton] and share image \nNOTE: \nCan only have ONE active image at a time for each friend \n\nREPEAT FOR EACH FRIEND \n\nWhen friend 'shakes' phone your image pops up full-screen \nFirend taps image to see next PhotoPOP from next friend")
                            .fontWeight(.regular)
                            .frame(width: 330, height: 390)
                            .foregroundColor(ColorManager .grey4)
                            .font(.system(size: 13))
                            .background(Color.orange)
                            .cornerRadius(10)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                
                Text("(if get 'loading' icon - exit feature & return)")
                    .foregroundColor(Color.red)
                    .italic()
                    .font(.system(size: 12, weight: .light))
//                    .opacity(0.7)
                
                NavigationLink(
                    destination: PhotoPop3(user: user, friends: friends),
                    label: {
                        Text("Send Notificaion to Friend")
                            .fontWeight(.thin)
                            .frame(width: 300, height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 18.5))
                            .background(ColorManager.purple4)
                            .cornerRadius(10)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                
//                    Spacer()
//                        .frame(height: 7)
                    
                    HStack {
                        Image(systemName: "camera")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                            .foregroundColor(ColorManager.purple5)
                            .onTapGesture {
                                pickerSourceType = .camera
                                showingRecipients = true
                            }
                            .padding()
                        
                        Image(systemName: "photo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                            .foregroundColor(ColorManager.purple5)
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
                }
            })
            
            
            
            
        }
    }

