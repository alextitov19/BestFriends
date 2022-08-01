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
    
    @State private var availableRecipients : [User] = []
    @State private var photoPopImages: [PhotoPopImageView] = []
    
    var body: some View {
        ZStack {
            Image("blueBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
                .onAppear(perform: loadData)
            
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
                        
                    }, label: {
                        Text("Add Image")
                            .fontWeight(.regular)
                            .frame(width: 125, height: 40)
                            .foregroundColor(.white)
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                    })
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
        for index in availableRecipients.indices {
            for p in photoPopImages {
                if p.photoPop.receiver == availableRecipients[index].id {
                    availableRecipients.remove(at: index)
                    print("Removed " + p.photoPop.receiver + " from available recipients")
                }
            }
        }
        print("Available recipients: ", availableRecipients.count)
    }
}
