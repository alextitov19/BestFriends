//
//  ShakingCoolView.swift
//  BestFriends
//
//  Created by Alex Titov on 5/24/21.
//

import SwiftUI
import Amplify

struct ShakingCoolView: View {
    
    var shakingCoolLinks: [String] = []

    @State var showingImagePicker = false
    @State var inputImage: UIImage?
    
    var shakingCoolDataSource = ShakingCoolDataSource()
    
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
                
                ForEach(shakingCoolLinks, id: \.self) { link in
                    Image(uiImage: shakingCoolDataSource.downloadImage(key: link))
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 200)
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
    
    private mutating func reloadData() {
        guard let id = Amplify.Auth.getCurrentUser()?.username else { return }
        let user = UserDataSource().getUser(id: id)
        print("Got user: ", user)
        guard let links = user.shakingCoolLinks else { return }
        self.shakingCoolLinks = links
        print("Shaking Cool Links: ", shakingCoolLinks)
    }
}

struct ShakingCoolView_Previews : PreviewProvider {
    static var previews: some View {
        ShakingCoolView()
    }
}
