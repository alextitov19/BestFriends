//
//  ShakingCoolView.swift
//  BestFriends
//
//  Created by Alex Titov on 5/24/21.
//

import SwiftUI
import Amplify

struct ShakingCoolView: View {
    
    @State var shakingCoolImages: [UIImage] = []
    @State var showingImagePicker = false
    @State var inputImage: UIImage?
    
    init() {
        reloadData()
    }
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1))
                .ignoresSafeArea()
            
            VStack {
                // MARK: Header
                HStack {
                    Text("Shaking Cool")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                        .font(.system(size: 40, weight: .heavy))
                        .onTapGesture {
                            showingImagePicker = true
                        }
                        .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
                            ImagePicker(image: self.$inputImage)
                        }
                }
                
                
                Spacer()
                
                ForEach(shakingCoolImages, id: \.self) { uiimage in
                    Image(uiImage: uiimage)
                }
                
            }
            
        }
    }
    
    private func loadImage() {
        showingImagePicker = false
        guard let inputImage = inputImage else { return }
        print("Got the image")
        ShakingCoolDataSource().uploadImage(image: inputImage)
        
    }
    
    private func reloadData() {
        shakingCoolImages = []
        guard let id = Amplify.Auth.getCurrentUser()?.username else { return }
        let user = UserDataSource().getUser(id: id)
        let shakingCoolLinks = user.shakingCoolLinks
        if shakingCoolLinks.count > 0 {
            for link in shakingCoolLinks {
                let uiimage = ShakingCoolDataSource().downloadImage(key: link)
                shakingCoolImages.append(uiimage)
                print("Image count, ", shakingCoolImages.count)
            }
        }
        
    }
}

struct ShakingCoolView_Previews : PreviewProvider {
    static var previews: some View {
        ShakingCoolView()
    }
}
