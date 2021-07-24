//
//  ShakingCoolView.swift
//  BestFriends
//
//  Created by Alex Titov on 5/24/21.
//

import SwiftUI
import Amplify

struct ShakingCoolView: View {
    
    @State private var shakingCool: [ShakingCool] = []
    @State private var showingImagePicker = false
    @State private var inputImage: UIImage?
    @State private var availableIDs: [String] = []
    @State private var availableNames: [String] = []
    @State private var chosenID = ""
    @State private var choosingRecipient = false
    @State private var myid = ""
    @State private var needToLoad = true
    @State private var isAdPresented = false
    @State private var images: [UIImage] = []
    
    @EnvironmentObject var sessionManager: SessionManager
    
    private var shakingCoolDataSource = ShakingCoolDataSource()
    
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
                
                Text("Add 2 images for yourself.\nThen add one for each friend to see.")
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
                
                ScrollView(showsIndicators: false) {
                    ForEach(shakingCool.indices, id: \.self) { index in
                        let name = shakingCool[index].intendedid == myid ? "Myself" : shakingCool[index].intendedname
                        VStack {
                            Text(name)
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .light))
                                .padding()
                            
                            Image(uiImage: images[index])
                                .resizable()
                                .scaledToFit()
                                .frame(height: 200)
                                .cornerRadius(30)
                                .onTapGesture {
                                    chosenID = shakingCool[index].id
                                    shakingCoolDataSource.deleteImage(id: shakingCool[index].link)
                                    reloadData()
                                    showingImagePicker = true
                                }
                            
                            Spacer()
                                .frame(height: 30)
                        }
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
                        choosingRecipient.toggle()
                    }
                    .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
                        ImagePicker(image: self.$inputImage)
                    }
                    .fullScreenCover(isPresented: $isAdPresented, content: ShakingCoolAdView.init)
                    .padding()
                
                Text("Return")
                    .frame(width: 150, height: 50, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                    .font(.title)
                    .background(Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)))
                    .cornerRadius(25)
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    .onTapGesture {
                        isAdPresented = true
                        DispatchQueue.main.asyncAfter(deadline: .now() + 11) {
                            sessionManager.getCurrentAuthUser()
                        }
                    }
                    .padding()
            }
            
            if choosingRecipient {
                VStack {
                    ForEach(availableIDs.indices, id: \.self) { index in
                        Button(action: {
                            chosenID = availableIDs[index]
                            showingImagePicker = true
                            choosingRecipient = false
                        }) {
                            Text(availableNames[index])
                                .frame(width: 150, height: 50, alignment: .center)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.title)
                                .background(Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)))
                                .cornerRadius(25)
                        }
                    }
                }
            }
        }
    }
    
    private func loadImage() {
        showingImagePicker = false
        guard let inputImage = inputImage else { return }
        print("Got the image")
        let state = ShakingCoolDataSource().uploadImage(image: inputImage, targetID: chosenID)
        if state == true {
            sleep(3)
            reloadData()
        }
    }
    
    private func reloadData() {
            print("reloading Shaking cool")
            let userDS = UserDataSource()
            let user = userDS.getCurrentUser()
            myid = user.id
            print("Got user: ", user)
            shakingCool = []
            if user.shakingCool != nil {
                shakingCool = user.shakingCool!
            }
            print("Shaking Cool: ", shakingCool)
            chosenID = user.id
            var mycounter = 0
            availableIDs = user.friends ?? []
            for cool in shakingCool {
                if cool.intendedid == user.id {
                    mycounter += 1
                }
                if let index = availableIDs.firstIndex(of: cool.intendedid) {
                    availableIDs.remove(at: index)
                }
            }
            for id in availableIDs {
                availableNames.append(userDS.getUser(id: id).firstName)
            }
            if mycounter < 2 {
                availableIDs.insert(user.id, at: 0)
                availableNames.insert("Myself", at: 0)
                print("Added self")
            }
        for cool in shakingCool {
            images.append(shakingCoolDataSource.downloadImage(key: cool.link, rotating: true, tall: false))
        }
    }
    
    private func howManyLeft() -> Int {
        let user = UserDataSource().getCurrentUser()
        let first = user.friends?.count ?? 0
        let second = user.shakingCool?.count ?? 0
        return 2 + first - second
    }
}

struct ShakingCoolView_Previews : PreviewProvider {
    static var previews: some View {
        ShakingCoolView()
    }
}
