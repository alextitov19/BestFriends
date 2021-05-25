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
    @State var secondsChange: Double = 0
    var shakingCoolSeconds: Double = 0
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
                
                Spacer().frame(height: 20)
                
                Text("You can add \(howManyLeft()) more images")
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
                
                VStack {
                
               Text("You can delete/replace an image by tapping it")
                .font(.system(size: 20, weight: .thin))
                .foregroundColor(.white)
                
                Spacer()
                    .frame(height: 10)
                
                Text("You can see each image for \(String(format: "%.1f", shakingCoolSeconds + secondsChange)) seconds")
                 .font(.system(size: 20, weight: .thin))
                 .foregroundColor(.white)
                    
                    Spacer()
                        .frame(height: 10)
                }
                
                HStack {
                    
                    Text("-")
                        .frame(width: 150, height: 50, alignment: .center)
                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 25, weight: .regular))
                        .cornerRadius(25)
                        .onTapGesture {
                            changeSeconds(change: -0.5)
                        }
                    
                    Spacer()
                
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
                    
                    Text("+")
                        .frame(width: 150, height: 50, alignment: .center)
                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 25, weight: .regular))
                        .cornerRadius(25)
                        .onTapGesture {
                            changeSeconds(change: 0.5)
                        }
                    
                    Spacer()
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
        self.shakingCoolSeconds = user.shakingCoolSeconds
    }
    
    private func howManyLeft() -> Int {
        guard let id = Amplify.Auth.getCurrentUser()?.username else { return 0 }
        let user = UserDataSource().getUser(id: id)
        let first = user.friends?.count ?? 0
        let second = user.shakingCoolLinks?.count ?? 0
        return 2 + first - second
    }
    
    private func changeSeconds(change: Double) {
        guard let id = Amplify.Auth.getCurrentUser()?.username else { return }
        var user = UserDataSource().getUser(id: id)
        user.shakingCoolSeconds += change
        self.secondsChange += change
        UserDataSource().updateUser(user: user)
    }
}

struct ShakingCoolView_Previews : PreviewProvider {
    static var previews: some View {
        ShakingCoolView()
    }
}
