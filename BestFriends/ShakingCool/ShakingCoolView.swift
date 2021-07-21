//
//  ShakingCoolView.swift
//  BestFriends
//
//  Created by Alex Titov on 5/24/21.
//

import SwiftUI
import Amplify

struct ShakingCoolView: View {
    
    @State var shakingCoolLinks: [String] = []
    
    @State var showingImagePicker = false
    @State var inputImage: UIImage?
    var shakingCoolDataSource = ShakingCoolDataSource()
    
   
    
    var body: some View {
        ZStack {
            Image("SignUpPinBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .onAppear {
                    reloadData()
                }
            
            VStack {
                // MARK: Header
                Text("ShakingCool")
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .font(.system(size: 40, weight: .thin))
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                
                Text("Add images 1 & 2 for yourself.\nAdd a 3rd  for your friends to see.")
                    .frame(width: 300, height: 75, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .font(.system(size: 20, weight: .thin))
                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                
                
                
                
//                Text("As you add friends they can send you a favorite image to add to 'your' ShakingCool.")
//                    .italic()
//                    .font(.system(size: 20))
//                    .fontWeight(.ultraLight)
//                    .foregroundColor(Color(#colorLiteral(red: 0.9930974841, green: 1, blue: 0.9261136651, alpha: 1)))
//                    .multilineTextAlignment(.center)
//                    .frame(width: 385, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
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
                            .cornerRadius(30)
                            .onTapGesture {
                                shakingCoolDataSource.deleteImage(id: link)
                                reloadData()
                                showingImagePicker = true
                                
                            }
                        
                        Spacer()
                            .frame(height: 30)
                        
                    }
                }
                Spacer()
                                
                
                Text("Delete/replace image by tapping")
                    .font(.system(size: 25, weight: .thin))
                    .foregroundColor(.white)
                
                Text("Add Image")
                    .frame(width: 150, height: 50, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .font(.title)
                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                    .cornerRadius(25)
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    .onTapGesture {
                        if howManyLeft() > 0 {
                            showingImagePicker = true
                        }
                    }
                    .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
                        ImagePicker(image: self.$inputImage)
                    }
                    .padding()

                
                Spacer()
                    .frame(height: 90)
                
                
            }
            
        }
    }
    
    private func loadImage() {
        showingImagePicker = false
        guard let inputImage = inputImage else { return }
        print("Got the image")
        let state = ShakingCoolDataSource().uploadImage(image: inputImage)
        if state == true {
            sleep(3)
            reloadData()
        }
    }
    
    private func reloadData() {
        let user = UserDataSource().getCurrentUser()
        print("Got user: ", user)
        shakingCoolLinks = []
        let links = user.shakingCoolLinks
        if links != nil {
            shakingCoolLinks = links!
            print("Links: ", links!)
        }
        print("Shaking Cool Links: ", shakingCoolLinks)
    }
    
    private func howManyLeft() -> Int {
        let user = UserDataSource().getCurrentUser()
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
