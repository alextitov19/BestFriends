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
            Image("purpleBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                // MARK: Header
                Text("Shaking Cool")
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .font(.system(size: 40, weight: .thin))
                
                Text("As you add friends they can send you a favorite image to add to 'your' ShakingCool.")
                    .italic()
                    .font(.system(size: 20))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(width: 385, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                
                
                
                Spacer().frame(height: 20)
                
                Text("You can add \(howManyLeft()) more image(s)")
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .font(.system(size: 20, weight: .thin))
                
                
                Spacer().frame(height: 30)
                
                ScrollView {
                    ForEach(shakingCoolLinks, id: \.self) { link in
                        Image(uiImage: shakingCoolDataSource.downloadImage(key: link, rotating: true, tall: false))
                            .resizable()
                            .scaledToFit()
                            .frame(height: 200)
                            .onTapGesture {
                                shakingCoolDataSource.deleteImage(id: link)
                                showingImagePicker = true
                            }
                        
                        Spacer()
                            .frame(height: 30)
                        
                    }
                }
                
                Spacer()
                
                
                Text("You can delete/replace an image by tapping it")
                    .font(.system(size: 20, weight: .thin))
                    .foregroundColor(.white)
                
                
                
                Spacer()
                    .frame(height: 10)
                
                
                
                Text("Add Image")
                    .frame(width: 150, height: 50, alignment: .center)
                    .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .font(.system(size: 25, weight: .regular))
                    .cornerRadius(25)
                    .onTapGesture {
                        if howManyLeft() > 0 {
                            showingImagePicker = true
                        }
                    }
                    .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
                        ImagePicker(image: self.$inputImage)
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
    
    private func howManyLeft() -> Int {
        guard let id = Amplify.Auth.getCurrentUser()?.username else { return 0 }
        let user = UserDataSource().getUser(id: id)
        let first = user.friends?.count ?? 0
        let second = user.shakingCoolLinks?.count ?? 0
        return 2 + first - second
    }
}

struct ShakingCoolView_Previews : PreviewProvider {
    static var previews: some View {
        ShakingCoolView()
    }
}
